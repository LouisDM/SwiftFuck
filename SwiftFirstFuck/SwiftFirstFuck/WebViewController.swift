//
//  WebViewController.swift
//  SwiftFirstFuck
//
//  Created by xmesm on 16/9/10.
//  Copyright © 2016年 Louis. All rights reserved.
//

import UIKit

class WebViewController: UIViewController,UIWebViewDelegate {
    //遵守不了NJKWebViewProgressDelegate tell me why?
    let _webview = UIWebView()
    let _progressView = NJKWebViewProgressView()
    let _progressProxy = NJKWebViewProgress()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("webVC viewDidLoad")
        // Do any additional setup after loading the view.
        _webview.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height)
        _webview.delegate = _progressProxy
        _progressProxy.webViewProxyDelegate = self
        //_progressProxy.progressDelegate = self
        _webview.loadRequest(URLRequest(url: URL(string: "http://www.baidu.com")!))
        self.view.addSubview(_webview)
        
        
    }
    static func webViewProgress(_ webViewProgress: NJKWebViewProgress!, updateProgress progress: Float) {
        //_progressView
        print("webVC webViewProgress")
    }
    
}
