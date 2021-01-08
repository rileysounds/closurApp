//
//  AudioPlayer.swift
//  ClosurApp
//
//  Created by Riley Wells on 1/6/21.
//
import UIKit
import AVFoundation

// PLAY BUTTON
var playButton: UIButton = {
    let button          = UIButton.init(type: .custom)
    let playImage       = UIImage(systemName: "play.fill")
    let playTappedImage = UIImage(systemName: "play")
    button.tintColor = .white
    button.setBackgroundImage(playImage, for: .normal)
    button.setBackgroundImage(playTappedImage, for: .highlighted)
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
}()

// PAUSE BUTTON
var pauseButton: UIButton = {
    let button           = UIButton.init(type: .custom)
    let pauseImage       = UIImage(systemName: "pause.fill")
    let pauseTappedImage = UIImage(systemName: "pause")
    button.tintColor = .white
    button.setBackgroundImage(pauseImage, for: .normal)
    button.setBackgroundImage(pauseTappedImage, for: .highlighted)
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
}()


