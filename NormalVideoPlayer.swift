import SwiftUI
import AVKit
import Combine

class VideoPlayerViewModel: ObservableObject {
    @Published var player: AVPlayer
    @Published var isPlaying: Bool = false
    @Published var currentTime: CMTime = .zero
    @Published var seekTime: Double = 0.0
    @Published var isVisibleButtons: Bool = true
    @Published var isReadyToPlay: Bool = false
    
    private var cancellable: AnyCancellable?
    
    init(videoURL: URL) {
        self.player = AVPlayer(url: videoURL)
        self.addPeriodicTimeObserver()

    }

    func playPause() {
        if isPlaying {
            player.pause()
        } else {
            player.play()
        }
        isPlaying.toggle()
    }
    
    func SetTime(type: String) {
        let currentSeconds = CMTimeGetSeconds(player.currentTime())
        var newTime: Double
        
        if type == "add" {
            newTime = currentSeconds + 15
        } else {
            newTime = currentSeconds - 15
        }
        
        let targetTime = CMTime(seconds: newTime, preferredTimescale: CMTimeScale(NSEC_PER_SEC))
        player.seek(to: targetTime)
    }
    
    private func addPeriodicTimeObserver() {
        cancellable = player.addPeriodicTimeObserver(forInterval: CMTime(seconds: 1, preferredTimescale: CMTimeScale(NSEC_PER_SEC)), queue: .main) { [weak self] time in
            self?.currentTime = time
            self?.seekTime = time.seconds
        } as? AnyCancellable
    }
}

struct NormalVideoPlayer: View {
    @StateObject private var viewModel: VideoPlayerViewModel
    
    init(videoURL: URL) {
        _viewModel = StateObject(wrappedValue: VideoPlayerViewModel(videoURL: videoURL))
    }

    var body: some View {
        ZStack {
            CustomVideoPlayer(player: viewModel.player)
                .onDisappear {
                    viewModel.player.pause()
                    viewModel.isPlaying = false
                }
                .onTapGesture {
                    viewModel.isVisibleButtons = !viewModel.isVisibleButtons
                }
            
            if(viewModel.isVisibleButtons){
                VStack {
                    Spacer()
                    
                    HStack {
                        Button(action: {
                            viewModel.SetTime(type: "remove")
                        }) {
                            Image(systemName: "arrow.counterclockwise")
                                .resizable()
                                .frame(width: 25, height: 30)
                                .padding()
                                .clipShape(Circle())
                                .foregroundColor(.white)
                        }
                        
                        Button(action: {
                            viewModel.playPause()
                        }) {
                            Image(systemName: viewModel.isPlaying ? "pause.fill" : "play.fill")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .padding()
                                .background(Color.black.opacity(0.5))
                                .clipShape(Circle())
                                .foregroundColor(.white)
                        }
                        
                        Button(action: {
                            viewModel.SetTime(type: "add")
                        }) {
                            Image(systemName: "arrow.clockwise")
                                .resizable()
                                .frame(width: 25, height: 30)
                                .padding()
                                .clipShape(Circle())
                                .foregroundColor(.white)
                        }
                    }
                    .offset(CGSize(width: 0, height: 20.0))
                    .padding(.bottom, 20)
                    
                    Slider(value: $viewModel.seekTime, in: 0...max(0, viewModel.player.currentItem?.duration.seconds ?? 0), onEditingChanged: { editing in
                        if !editing {
                            let targetTime = CMTime(seconds: viewModel.seekTime, preferredTimescale: CMTimeScale(NSEC_PER_SEC))
                            viewModel.player.seek(to: targetTime)
                        }
                    })
                    .padding()
                }
            }
            
        }
    }
}

struct CustomVideoPlayer: UIViewControllerRepresentable {
    let player: AVPlayer

    func makeUIViewController(context: Context) -> AVPlayerViewController {
        let playerViewController = AVPlayerViewController()
        playerViewController.player = player
        playerViewController.showsPlaybackControls = false
        return playerViewController
    }

    func updateUIViewController(_ uiViewController: AVPlayerViewController, context: Context) {
        uiViewController.player = player
    }
}
#Preview {
    NormalVideoPlayer(videoURL: URL(string: "https://firebasestorage.googleapis.com/v0/b/cipmbilling-24963.appspot.com/o/Cursos%20en%20Video%20Estructuras%2F4.%20Presente%20simple.mp4?alt=media&token=0e482b5a-9c5b-42bc-928f-0ace6cf5fb16")!)
        .frame(height: 220)
        .padding(.horizontal,20)
}
