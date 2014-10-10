//
//  ViewController.swift
//  Music
//
//  Created by bekir tura on 10/10/14.
//  Copyright (c) 2014 bekir tura. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    var player:AVAudioPlayer = AVAudioPlayer()
    
    func audioPlayerDidFinishPlaying(player: AVAudioPlayer!, successfully flag: Bool) {
        
        println("done")
        
        
    }
                            
    @IBAction func player(sender : AnyObject) {
        
        var audioPath = NSString(string: NSBundle.mainBundle().pathForResource("bach1", ofType: "mp3")!)
        
        println(audioPath)
        
        var error : NSError? = nil
        player = AVAudioPlayer(contentsOfURL: NSURL(string: audioPath), error: &error)
        
        if ((error) != nil)
        {
                println("Error")
        }
        else
        {
            player.play()
        }
        
        
        
       
    }
    
    @IBAction func pause(sender : AnyObject) {
        player.pause()
    }
    @IBOutlet var pause : UIButton!
    @IBOutlet var volumeSlider : UISlider!
    
    
    @IBAction func volumeChanged(sender : AnyObject) {
        player.volume = volumeSlider.value
        
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

