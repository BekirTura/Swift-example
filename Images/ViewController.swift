//
//  ViewController.swift
//  Images
//
//  Created by bekir tura on 28/09/14.
//  Copyright (c) 2014 bekir tura. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  
    @IBOutlet weak var alien: UIImageView!
    var counter=1
    @IBAction func updateImage(sender: AnyObject) {
       counter++
        // let frame2=UIImage(named: "frame2.png")
        alien.image = UIImage(named: "frame\(counter).png")
        if(counter==5){
            counter = 1
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

