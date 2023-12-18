// VideoPlayerView.swift
import SwiftUI
import AVKit

struct VideoPlayerView: UIViewControllerRepresentable {
    var videoURL: URL?
    var onStop: () -> Void // Nueva propiedad para manejar la acción al detenerse

    class Coordinator: NSObject {
        var parent: VideoPlayerView

        init(parent: VideoPlayerView) {
            self.parent = parent
        }

        @objc func playerItemDidChange(notification: Notification) {
            if let playerItem = notification.object as? AVPlayerItem {
                // Aquí puedes realizar acciones adicionales si es necesario
            }
        }
    }

    func makeCoordinator() -> Coordinator {
        Coordinator(parent: self)
    }

    func makeUIViewController(context: Context) -> AVPlayerViewController {
        let playerViewController = AVPlayerViewController()

        if let videoURL = videoURL {
            let player = AVPlayer(url: videoURL)
            playerViewController.player = player

            let coordinator = Coordinator(parent: self)
            NotificationCenter.default.addObserver(
                coordinator,
                selector: #selector(coordinator.playerItemDidChange(notification:)),
                name: .AVPlayerItemPlaybackStalled,
                object: player.currentItem
            )
        }

        return playerViewController
    }

    func updateUIViewController(_ uiViewController: AVPlayerViewController, context: Context) {
        // Detener el reproductor actual antes de asignar la nueva URL
        uiViewController.player?.pause()

        // Asignar la nueva URL y comenzar la reproducción
        if let videoURL = videoURL {
            let player = AVPlayer(url: videoURL)
            uiViewController.player = player
            player.play()
        }
    }
}
