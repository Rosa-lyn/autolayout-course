//
//  Challenge.swift
//  BasicAnchors
//
//  Created by Jonathan Rasmusson (Contractor) on 2019-08-26.
//  Copyright © 2019 Jonathan Rasmusson. All rights reserved.
//

import UIKit

class Challenge: UIViewController {

    let margin: CGFloat = 20
    let spacing: CGFloat = 32

    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBar()
        setupViews()
    }

    func setupNavigationBar() {
        navigationItem.title = "Playback"
    }

    func setupViews() {

        // MARK: - Initialising components
                let offlineLabel = makeLabel(withText: "Offline")
                let offlineSwitch = makeSwitch(isOn: false)
                let offlineSublabel = makeSubLabel(withText: "When you go offline, you'll only be able to play the music and podcasts you've downloaded.")


                let crossfadeLabel = makeBoldLabel(withText: "Crossfade")
                let crossfadeMinLabel = makeSubLabel(withText: "0s")
                let crossfadeMaxLabel = makeSubLabel(withText: "12s")
                let crossfadeProgressView = makeProgressView()

                let gaplessPlaybackLabel = makeLabel(withText: "Gapless Playback")
                let gaplessPlaybackSwitch = makeSwitch(isOn: true)

                let hideSongsLabel = makeLabel(withText: "Hide Unplayable Songs")
                let hideSongsSwitch = makeSwitch(isOn: true)

                let enableNormalizationLabel = makeLabel(withText: "Enable Audio Normalization")
                let enableNormalizationSwitch = makeSwitch(isOn: true)


        // MARK: - Adding subviews
                view.addSubview(offlineLabel)
                view.addSubview(offlineSwitch)
                view.addSubview(offlineSublabel)

                view.addSubview(crossfadeLabel)
                view.addSubview(crossfadeMinLabel)
                view.addSubview(crossfadeProgressView)
                view.addSubview(crossfadeMaxLabel)

                view.addSubview(gaplessPlaybackLabel)
                view.addSubview(gaplessPlaybackSwitch)

                view.addSubview(hideSongsLabel)
                view.addSubview(hideSongsSwitch)

                view.addSubview(enableNormalizationLabel)
                view.addSubview(enableNormalizationSwitch)


        // MARK: - Layout
        NSLayoutConstraint.activate([

            // MARK: - Offline

            offlineLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: margin),
            offlineLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: margin),
            offlineLabel.centerYAnchor.constraint(equalTo: offlineSwitch.centerYAnchor),

            offlineSwitch.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -margin),

            offlineSublabel.topAnchor.constraint(equalTo: offlineLabel.bottomAnchor, constant: margin),
            offlineSublabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: margin),
            offlineSublabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -margin),

            // MARK: - Crossfade

            crossfadeLabel.topAnchor.constraint(equalTo: offlineSublabel.bottomAnchor, constant: spacing),
            crossfadeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),

            crossfadeMinLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: margin),
            crossfadeMinLabel.centerYAnchor.constraint(equalTo: crossfadeProgressView.centerYAnchor),
            crossfadeMinLabel.centerYAnchor.constraint(equalTo: crossfadeMaxLabel.centerYAnchor),

            crossfadeProgressView.topAnchor.constraint(equalTo: crossfadeLabel.bottomAnchor, constant: spacing),
            crossfadeProgressView.leadingAnchor.constraint(equalTo: crossfadeMinLabel.trailingAnchor, constant: 4),

            crossfadeMaxLabel.leadingAnchor.constraint(equalTo: crossfadeProgressView.trailingAnchor, constant: 4),
            crossfadeMaxLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -margin),


            // MARK: - Gapless playback

            gaplessPlaybackLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: margin),
            gaplessPlaybackLabel.centerYAnchor.constraint(equalTo: gaplessPlaybackSwitch.centerYAnchor),

            gaplessPlaybackSwitch.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -margin),
            gaplessPlaybackSwitch.topAnchor.constraint(equalTo: crossfadeProgressView.bottomAnchor, constant: spacing),

            // MARK: - Hide songs

            hideSongsLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: margin),
            hideSongsLabel.centerYAnchor.constraint(equalTo: hideSongsSwitch.centerYAnchor),
            hideSongsLabel.topAnchor.constraint(equalTo: gaplessPlaybackLabel.bottomAnchor, constant: spacing),

            hideSongsSwitch.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -margin),

            // MARK: - Enable normalisation
            
            enableNormalizationLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: margin),
            enableNormalizationLabel.centerYAnchor.constraint(equalTo: enableNormalizationSwitch.centerYAnchor),
            enableNormalizationLabel.topAnchor.constraint(equalTo: hideSongsLabel.bottomAnchor, constant: spacing),

            enableNormalizationSwitch.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -margin)

        ])
    }
}

