//
//  ViewController.swift
//  QRCodeTutorial
//
//  Created by DOHUN KWON on 2021/10/23.
//

import UIKit
import WebKit

class MainViewController: UIViewController {
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let url = URL (string:  "https://www.naver.com")
        let requestObj = URLRequest(url: url!)
        webView.load(requestObj)
    }

    

}

