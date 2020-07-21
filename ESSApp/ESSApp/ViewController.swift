//
//  ViewController.swift
//  ESS App
//
//  Created by BBS Developer on 7/5/2561 BE.
//  Copyright © 2561 BANGKOK BUSINESS SOLUTIONS. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController , WKUIDelegate{
    
    @IBOutlet weak var webview: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//
//        if UIDevice.current.userInterfaceIdiom == .phone {
//            view.backgroundColor = .clear
//        }
        
        let url = URL(string: "http://hrt.eiamheng.com:8080/ESS")
       //let url = URL(string: "https://www.youtube.com")
       let request = URLRequest(url: url!)
        webview.load(request)
       // self.webview.load(request)
    }

    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webview = WKWebView(frame: .zero, configuration: webConfiguration)
        webview.uiDelegate = self
        view = webview
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

