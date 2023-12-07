// VideoPlayerView.swift
import SwiftUI
import AVKit

struct VideoPlayerView: UIViewControllerRepresentable {
    var videoURL: URL?

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
        // Forzar la actualización recreando la vista cuando cambia el videoURL
        if let videoURL = videoURL {
            let player = AVPlayer(url: videoURL)
            uiViewController.player = player
        }
    }
}
