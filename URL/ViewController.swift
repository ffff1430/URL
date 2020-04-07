//
//  ViewController.swift
//  URL
//
//  Created by star on 2020/4/7.
//  Copyright © 2020 star. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var urlstr = ""
    @IBOutlet weak var UrlTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    @IBAction func confirm(_ sender: Any) {
        urlstr = UrlTextField.text!
    }
    
    @IBSegueAction func connect(_ coder: NSCoder) -> secondViewController? {
        let controller = secondViewController(coder: coder)
        controller?.url1 = urlstr
        return controller
    }
}



