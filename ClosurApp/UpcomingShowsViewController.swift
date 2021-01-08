//
//  UpcomingShowsViewController.swift
//  ClosurApp
//
//  Created by Riley Wells on 1/6/21.
//

import Foundation

import UIKit

class UpcomingShowsViewController: UIViewController {
    
    let upcomingShowsLabel: UILabel = {
      let label = UILabel()
        label.text = "Upcoming Shows"
        label.textColor = .white
        label.textAlignment = .left
        label.font = UIFont(name: "PingFangTC-Regular", size: 36)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let showButtonOne: UIButton = {
        let button = UIButton()
        let image = UIImage(systemName: "info.circle")
        button.tintColor = .white
        button.setImage(image, for: .normal)
        button.imageView?.trailingAnchor.constraint(equalTo: button.trailingAnchor, constant: -8).isActive = true
        button.imageView?.centerYAnchor.constraint(equalTo: button.centerYAnchor, constant: 0.0).isActive = true
        button.imageView?.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.lineBreakMode = .byWordWrapping
        button.setTitle("Las Vegas, NV\nJan. 1, 2022", for: .normal)
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 2
        button.setTitleColor(.white, for: .normal)
        button.contentHorizontalAlignment = .left
        button.contentVerticalAlignment = .center
        button.titleLabel?.font = UIFont(name: "PingFangTC-Regular", size: 24)
        button.layer.cornerRadius = 5
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let showButtonTwo: UIButton = {
        let button = UIButton()
        let image = UIImage(systemName: "info.circle")
        button.tintColor = .white
        button.setImage(image, for: .normal)
        button.imageView?.trailingAnchor.constraint(equalTo: button.trailingAnchor, constant: -8).isActive = true
        button.imageView?.centerYAnchor.constraint(equalTo: button.centerYAnchor, constant: 0.0).isActive = true
        button.imageView?.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.lineBreakMode = .byWordWrapping
        button.setTitle("San Diego, CA\nJan. 3, 2022", for: .normal)
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 2
        button.setTitleColor(.white, for: .normal)
        button.contentHorizontalAlignment = .left
        button.contentVerticalAlignment = .center
        button.titleLabel?.font = UIFont(name: "PingFangTC-Regular", size: 24)
        button.layer.cornerRadius = 5
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let showButtonThree: UIButton = {
        let button = UIButton()
        let image = UIImage(systemName: "info.circle")
        button.tintColor = .white
        button.setImage(image, for: .normal)
        button.imageView?.trailingAnchor.constraint(equalTo: button.trailingAnchor, constant: -8).isActive = true
        button.imageView?.centerYAnchor.constraint(equalTo: button.centerYAnchor, constant: 0.0).isActive = true
        button.imageView?.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.lineBreakMode = .byWordWrapping
        button.setTitle("Denver, CO\nJan. 5, 2022", for: .normal)
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 2
        button.setTitleColor(.white, for: .normal)
        button.contentHorizontalAlignment = .left
        button.contentVerticalAlignment = .center
        button.titleLabel?.font = UIFont(name: "PingFangTC-Regular", size: 24)
        button.layer.cornerRadius = 5
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let showButtonFour: UIButton = {
        let button = UIButton()
        let image = UIImage(systemName: "info.circle")
        button.tintColor = .white
        button.setImage(image, for: .normal)
        button.imageView?.trailingAnchor.constraint(equalTo: button.trailingAnchor, constant: -8).isActive = true
        button.imageView?.centerYAnchor.constraint(equalTo: button.centerYAnchor, constant: 0.0).isActive = true
        button.imageView?.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.lineBreakMode = .byWordWrapping
        button.setTitle("Salt Lake City, UT\nJan. 8, 2022", for: .normal)
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 2
        button.setTitleColor(.white, for: .normal)
        button.contentHorizontalAlignment = .left
        button.contentVerticalAlignment = .center
        button.titleLabel?.font = UIFont(name: "PingFangTC-Regular", size: 24)
        button.layer.cornerRadius = 5
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let showButtonFive: UIButton = {
        let button = UIButton()
        let image = UIImage(systemName: "info.circle")
        button.tintColor = .white
        button.setImage(image, for: .normal)
        button.imageView?.trailingAnchor.constraint(equalTo: button.trailingAnchor, constant: -8).isActive = true
        button.imageView?.centerYAnchor.constraint(equalTo: button.centerYAnchor, constant: 0.0).isActive = true
        button.imageView?.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel?.lineBreakMode = .byWordWrapping
        button.setTitle("San Francisco, CA\nJan. 10, 2022", for: .normal)
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 2
        button.setTitleColor(.white, for: .normal)
        button.contentHorizontalAlignment = .left
        button.contentVerticalAlignment = .center
        button.titleLabel?.font = UIFont(name: "PingFangTC-Regular", size: 24)
        button.layer.cornerRadius = 5
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let backgroundImage: UIImage = {
        let img = UIImage(named: "sunsetImage.jpg")
        return img!
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.init(patternImage: backgroundImage)
        
        view.addSubview(upcomingShowsLabel)
        upcomingShowsLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 35).isActive = true
        upcomingShowsLabel.anchor(top: view.topAnchor, paddingTop: 15, width: 300, height: 200)
        
        view.addSubview(showButtonOne)
        showButtonOne.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        showButtonOne.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -200).isActive = true
        showButtonOne.anchor(width: 350, height: 75)
        
        view.addSubview(showButtonTwo)
        showButtonTwo.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        showButtonTwo.anchor(top: showButtonOne.bottomAnchor, paddingTop: 35, width: 350, height: 75)
        
        view.addSubview(showButtonThree)
        showButtonThree.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        showButtonThree.anchor(top: showButtonTwo.bottomAnchor, paddingTop: 35, width: 350, height: 75)
        
        view.addSubview(showButtonFour)
        showButtonFour.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        showButtonFour.anchor(top: showButtonThree.bottomAnchor, paddingTop: 35, width: 350, height: 75)
        
        view.addSubview(showButtonFive)
        showButtonFive.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        showButtonFive.anchor(top: showButtonFour.bottomAnchor, paddingTop: 35, width: 350, height: 75)
        
    }
    
    
}



