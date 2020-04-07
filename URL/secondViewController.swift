//
//  secondViewController.swift
//  URL
//
//  Created by star on 2020/4/7.
//  Copyright © 2020 star. All rights reserved.
//

import UIKit
import WebKit

class secondViewController: UIViewController ,WKNavigationDelegate{
    
    var url1:String!

    
    @IBOutlet weak var webView: WKWebView!
    @IBOutlet weak var forwardButton: UIButton!
    @IBOutlet weak var BackButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
         webView.navigationDelegate = self
        
        if let myURL = URL(string: url1){
       let myRequest = URLRequest(url: myURL)
        webView.load(myRequest)
           
        }
    }
    
    @IBAction func backButton(_ sender: Any) {
        if webView.canGoBack{
            webView.goBack()
        }
    }
    
    @IBAction func ForwardButton(_ sender: Any) {
        if webView.canGoForward{
            webView.goForward()
        }
    }
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        BackButton.isEnabled = webView.canGoBack
        forwardButton.isEnabled = webView.canGoForward
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
