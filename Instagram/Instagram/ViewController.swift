//
//  ViewController.swift
//  Instagram
//
//  Created by bekir tura on 19/10/14.
//  Copyright (c) 2014 bekir tura. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Parse.setApplicationId("eeQ-********vFv5thhC7wJYP0xgvcfi", clientKey: "8ho1WLc6P9xx4VI6kp******")
        var score=PFObject(className: "score")
        score.setObject("Bekir", forKey: "name")
        score.setObject(95, forKey: "number")
        score.saveInBackgroundWithBlock {
            (success: Bool!,error: NSError!) -> Void in
            if success==true {
                print("parse edildi score id = \(score.objectId) ")
                
            }else{
                print(error)
            }
            }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

