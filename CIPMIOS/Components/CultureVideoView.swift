import SwiftUI
import AVKit

struct CultureVideoView: UIViewControllerRepresentable {
    var videoURL: URL
    @Binding var seekTime: Double // En segundos
    var onTimeUpdate: (Double) -> Void // Callback para actualizar el tiempo actual
    
    func makeUIViewController(context: Context) -> AVPlayerViewController {
        let controller = AVPlayerViewController()
        let player = AVPlayer(url: videoURL)
        controller.player = player
        
        // Agregar observador para actualizar el tiempo actual del video
        let interval = CMTime(seconds: 1, preferredTimescale: CMTimeScale(NSEC_PER_SEC))
        player.addPeriodicTimeObserver(forInterval: interval, queue: .main) { [weak player] time in
            let currentTime = player?.currentTime().seconds ?? 0
            onTimeUpdate(currentTime)
        }
        
        // Iniciar reproducción automáticamente
        player.play()
        
        return controller
    }
    
    func updateUIViewController(_ uiViewController: AVPlayerViewController, context: Context) {
        let player = uiViewController.player
        
        // Verificar si se necesita buscar a un nuevo tiempo
        if seekTime != player?.currentTime().seconds, seekTime != 0 {
            let targetTime = CMTime(seconds: seekTime, preferredTimescale: 600)
            player?.seek(to: targetTime) { _ in
                // Opcional: puedes llamar a play() aquí si quieres asegurarte de que el video siga reproduciéndose después de buscar.
                // Esto puede ser útil si el acto de buscar pausa la reproducción.
                player?.play()
            }
        }
    }
}
