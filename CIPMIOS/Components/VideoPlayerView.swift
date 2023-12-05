//
//  VideoPlayerView.swift
//  CIPMIOS
//
//  Created by Pedro Duran on 5/12/23.
//

import SwiftUI
import AVKit

struct VideoPlayerView: UIViewControllerRepresentable {
    var videoURL: URL
    @State private var isBuffering = false

    class Coordinator: NSObject {
        var parent: VideoPlayerView

        init(parent: VideoPlayerView) {
            self.parent = parent
        }

        // Observa cambios en el estado del reproductor
        @objc func playerItemDidChange(notification: Notification) {
            if let playerItem = notification.object as? AVPlayerItem {
                parent.isBuffering = playerItem.isPlaybackBufferEmpty
            }
        }
    }

    func makeCoordinator() -> Coordinator {
        Coordinator(parent: self)
    }

    func makeUIViewController(context: Context) -> UIViewController {
        let viewController = UIViewController()
        let player = AVPlayer(url: videoURL)
        let playerViewController = AVPlayerViewController()
        playerViewController.player = player
        playerViewController.showsPlaybackControls = true
        playerViewController.videoGravity = .resize

        // Observa cambios en el estado del reproductor
        let coordinator = Coordinator(parent: self)
        NotificationCenter.default.addObserver(
            coordinator,
            selector: #selector(coordinator.playerItemDidChange(notification:)),
            name: .AVPlayerItemPlaybackStalled,
            object: player.currentItem
        )

        viewController.addChild(playerViewController)
        viewController.view.addSubview(playerViewController.view)
        playerViewController.view.frame = viewController.view.frame
        playerViewController.didMove(toParent: viewController)

        return viewController
    }

    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
        // No es necesario actualizar la vista cuando cambia el URL del video
    }
}
