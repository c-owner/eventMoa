//
//  ViewController.swift
//  Safari
//
//  Created by 천기훈 on 2021/06/11.
//

import UIKit
import SafariServices
//import WebKit

class ViewController: UIViewController {

//    @IBOutlet var webview: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        webview.load(URLRequest(url: URL(string: "https://www.google.com")!))
        
        
    }

    @IBAction func buttonTapped(){

//        let vc = SFSafariViewController(url: URL(string: "https://www.apple.com")!)
        let vc = SFSafariViewController(url: URL(string: "http://event-moa.kro.kr")!)
        present(vc, animated: true)
    }

    
    
}

