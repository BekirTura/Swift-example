//
//  ViewController.swift
//  Swipes and Shakes
//
//  Created by bekir tura on 12/10/14.
//  Copyright (c) 2014 bekir tura. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player:AVAudioPlayer = AVAudioPlayer()
    
    var files = ["bean", "belch", "giggle", "pew", "pig", "snore", "static", "uuu"]
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        
        
    }
    
    override func motionEnded(motion: UIEventSubtype, withEvent event: UIEvent!) {
        
        if event.subtype == UIEventSubtype.MotionShake {
            
            var randomNumber = Int(arc4random_uniform(UInt32(files.count)))
            
            var fileLocation = NSString(string:NSBundle.mainBundle().pathForResource("sounds/" + files[randomNumber], ofType: "mp3")!)
            
            var error:NSError? = nil
            
            player = AVAudioPlayer(contentsOfURL: NSURL(string: fileLocation), error: &error)
            
            player.play()
            
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

