//
//  LottieAnimationView.swift
//  NewsApp
//
//  Created by Luis Felipe on 2024-02-13.
//

import SwiftUI
import Lottie


struct LottieAnimationView: UIViewRepresentable {
    var filename: String
    var loopMode: LottieLoopMode

    func makeUIView(context: Context) -> UIView {
        let animationView = AnimationView(name: filename)
        animationView.loopMode = loopMode
        animationView.play()

        let containerView = UIView()
        containerView.addSubview(animationView)

        animationView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            animationView.widthAnchor.constraint(equalTo: containerView.widthAnchor),
            animationView.heightAnchor.constraint(equalTo: containerView.heightAnchor)
        ])

        return containerView
    }

    func updateUIView(_ uiView: UIView, context: Context) {}
}
