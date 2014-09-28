//
//  ViewController.swift
//  stopwatch
//
//  Created by bekir tura on 24/09/14.
//  Copyright (c) 2014 bekir tura. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var timer = NSTimer()
    @IBOutlet weak var Time: UILabel!
    var count = 0
    @IBAction func play(sender: AnyObject) {
           timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("result"), userInfo: nil, repeats: true)
    }
    @IBAction func pause(sender: AnyObject) {
        timer.invalidate()
    }
    @IBAction func Cancel(sender: AnyObject) {
        timer.invalidate()
        count=0
        Time.text="0"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
      
        
    }
    func result(){
       count++
        Time.text=String(count)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

