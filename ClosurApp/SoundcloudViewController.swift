//
//  SoundcloudViewController.swift
//  ClosurApp
//
//  Created by Riley Wells on 1/6/21.
//

import UIKit
import WebKit

class SoundcloudViewController: UIViewController {

    let webView: WKWebView = {
        let view = WKWebView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        let url = URL(string: "https://m.soundcloud.com/closurmusic")
        let myWebsite = URLRequest(url: url!)
        
        webView.load(myWebsite)
        
        view.addSubview(webView)
        
        setUpSoundcloudWebView()
    }
    
    func setUpSoundcloudWebView() {
        webView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        webView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        webView.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        webView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
    }

}

