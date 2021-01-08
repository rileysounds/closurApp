//
//  ViewController.swift
//  ClosurApp
//
//  Created by Riley Wells on 1/6/21.
//

import UIKit
import AVFoundation
import SafariServices


class ViewController: UIViewController {
    
    var audioPlayer = AVAudioPlayer()
    
    let closurLogo: UIImageView = {
        let logo = UIImageView()
        let img = UIImage(named: "closur_white")
        logo.image = img
        logo.translatesAutoresizingMaskIntoConstraints = false
        return logo
    }()
    
    let musicButton: UIButton = {
        let button = UIButton()
        button.setTitle("Livestream", for: .normal)
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 2
        button.setTitleColor(.white, for: .normal)
        button.contentHorizontalAlignment = .center
        button.contentVerticalAlignment = .center
        button.titleLabel?.font = UIFont(name: "PingFangTC-Regular", size: 30)
        button.layer.cornerRadius = 5
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let upcomingShowsButton: UIButton = {
        let button = UIButton()
        button.setTitle("Upcoming Shows", for: .normal)
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 2
        button.setTitleColor(.white, for: .normal)
        button.contentHorizontalAlignment = .center
        button.contentVerticalAlignment = .center
        button.titleLabel?.font = UIFont(name: "PingFangTC-Regular", size: 30)
        button.layer.cornerRadius = 5
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let liveStreamButton: UIButton = {
        let button = UIButton()
        button.setTitle("Music", for: .normal)
        button.layer.borderWidth = 2
        button.layer.borderColor = UIColor.white.cgColor
        button.setTitleColor(.white, for: .normal)
        button.contentHorizontalAlignment = .center
        button.contentVerticalAlignment = .center
        button.titleLabel?.font = UIFont(name: "PingFangTC-Regular", size: 30)
        button.layer.cornerRadius = 5
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    var audioEngine: AVAudioEngine = {
        let engine = AVAudioEngine()
        return engine
    }()
    
    let backgroundImage: UIImage = {
       let img = UIImage(named: "sunsetImage.jpg")
        return img!
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.init(patternImage: backgroundImage)
        
        // Add logo to view
        view.addSubview(closurLogo)
        closurLogo.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        closurLogo.anchor(top: view.topAnchor, paddingTop: 10, width: 375, height: 400)
        
        
        // Add buttons to view
        view.addSubview(liveStreamButton)
        liveStreamButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        liveStreamButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -80).isActive = true
        liveStreamButton.anchor(width: 350, height: 75)
        liveStreamButton.addTarget(self, action: #selector(liveStreamButtonTapped), for: .touchUpInside)
    
        view.addSubview(musicButton)
        musicButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        musicButton.anchor(top: liveStreamButton.bottomAnchor, paddingTop: 50, width: 350, height: 75)
        musicButton.addTarget(self, action: #selector(musicButtonTapped(_:)), for: .touchUpInside)
        
        view.addSubview(upcomingShowsButton)
        upcomingShowsButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        upcomingShowsButton.anchor(top: musicButton.bottomAnchor, paddingTop: 50, width: 350, height: 75)
        upcomingShowsButton.addTarget(self, action: #selector(upcomingShowsButtonTapped(_:)), for: .touchUpInside)

        
        // Add play and pause buttons to the view
        view.addSubview(playButton)
        playButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: -130).isActive = true
        playButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 320).isActive = true
        playButton.anchor(width: 75, height: 75)
        playButton.addTarget(self, action: #selector(playButtonTapped(sender:)), for: .touchUpInside)
        
        view.addSubview(pauseButton)
        pauseButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 130).isActive = true
        pauseButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 320).isActive = true
        pauseButton.anchor(width: 75, height: 75)
        pauseButton.addTarget(self, action: #selector(pauseButtonTapped(_:)), for: .touchUpInside)
        
    }
    
    // PLAY AUDIO
    @objc func playButtonTapped(sender: UIButton) {
        print("The play button was tapped")
        
        guard let track = Bundle.main.path(forResource: "Glide", ofType: "mp3")
        else {
            print("Error getting the track from the main bundle.")
            return
        }
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: track))
        } catch {
            print("Audio file error.")
        }
        audioPlayer.play()
    }
    
    // PAUSE AUDIO
    @objc func pauseButtonTapped(_ : UIButton) {
        print("The pause button was tapped ")
        if audioPlayer.isPlaying == false {
            return
        } else {
            audioPlayer.pause()
        }
    }
    
    @objc func musicButtonTapped(_: Any?) {
        
        present(SoundcloudViewController(), animated: true, completion: nil)
        print("music button tapped")
        
    }
    @objc func liveStreamButtonTapped(_: Any?) {
        
        present(TwitchViewController(), animated: true, completion: nil)
        print("stream button tapped")
        
    }
    @objc func upcomingShowsButtonTapped(_: Any?) {
        
        present(UpcomingShowsViewController(), animated: true, completion: nil)
        print("shows button tapped")
        
    }
    
}
