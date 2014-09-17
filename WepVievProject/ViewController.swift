//
//  ViewController.swift
//  WepVievProject
//
//  Created by bekir tura on 17/09/14.
//  Copyright (c) 2014 bekir tura. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBOutlet weak var wepView: UIWebView!
    
    var URLPath = "http://google.com"
    
    
    override func viewDidLoad() {
         super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
     
        loadAddressURl()
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadAddressURl(){
        let requestURL = NSURL(string: URLPath)
        let request = NSURLRequest(URL: requestURL)
        wepView.loadRequest(request)
    }


}

