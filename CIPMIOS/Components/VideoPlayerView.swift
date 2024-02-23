import SwiftUI
import AVKit
import AVFoundation

struct VideoPlayerView: UIViewControllerRepresentable {
    var videoURL: URL?
    @Binding var currentTimeInSeconds: Double // Para exponer el tiempo actual fuera
    @Binding var seekTimeInSeconds: Double? // Tiempo en segundos al que se debe saltar cuando se indica
    var onStop: (() -> Void)? // Callback para manejar cuando el video se detiene
    @Binding var isButtonPressed: Bool? // Indica si el botón ha sido presionado, ahora es opcional

    func makeUIViewController(context: Context) -> AVPlayerViewController {
        let playerViewController = AVPlayerViewController()
        if let videoURL = videoURL {
            let player = AVPlayer(url: videoURL)
            playerViewController.player = player
            context.coordinator.startObservingCurrentTime(player: player) // Observar el tiempo actual del video
            player.play() // Añade esta línea para reproducir automáticamente
        }
        
        NotificationCenter.default.addObserver(forName: .AVPlayerItemDidPlayToEndTime, object: playerViewController.player?.currentItem, queue: .main) { _ in
            DispatchQueue.main.async {
                self.onStop?()
            }
        }
        
        return playerViewController
    }


    func updateUIViewController(_ uiViewController: AVPlayerViewController, context: Context) {
        if let videoURL = videoURL, uiViewController.player?.currentItem?.asset != AVAsset(url: videoURL) || isButtonPressed == true {
            uiViewController.player?.pause()
            uiViewController.player?.replaceCurrentItem(with: nil)
            
            let player = AVPlayer(url: videoURL)
            uiViewController.player = player
            player.play() // Asegura que el nuevo video se reproduzca automáticamente
        }

        if let isButtonPressed = isButtonPressed, isButtonPressed {
            if let seekTimeInSeconds = seekTimeInSeconds {
                let seekTime = CMTime(seconds: seekTimeInSeconds, preferredTimescale: 600)
                uiViewController.player?.seek(to: seekTime, completionHandler: { _ in
                    uiViewController.player?.play() // Reproducir el video desde el nuevo tiempo
                })
            }
            self.isButtonPressed = false
        }
    }



    
    static func dismantleUIViewController(_ uiViewController: AVPlayerViewController, coordinator: Coordinator) {
        NotificationCenter.default.removeObserver(uiViewController, name: .AVPlayerItemDidPlayToEndTime, object: uiViewController.player?.currentItem)
        uiViewController.player?.pause()
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    class Coordinator: NSObject {
        var parent: VideoPlayerView
        var timeObserverToken: Any?

        init(_ parent: VideoPlayerView) {
            self.parent = parent
        }

        func startObservingCurrentTime(player: AVPlayer) {
            let interval = CMTime(seconds: 0.5, preferredTimescale: CMTimeScale(NSEC_PER_SEC))
            timeObserverToken = player.addPeriodicTimeObserver(forInterval: interval, queue: DispatchQueue.main) { [weak self] time in
                self?.parent.currentTimeInSeconds = time.seconds
            }
        }

        deinit {
            if let timeObserverToken = timeObserverToken {
                // Asumiendo que aquí hay acceso al AVPlayer, pero necesitamos ajustar esto
                // para que la referencia al player sea accesible.
                // Es necesario asegurar que el AVPlayer esté disponible para remover el observador correctamente.
                AVPlayer().removeTimeObserver(timeObserverToken)
            }
        }
    }

}
