//
//  ViewController.swift
//  is it prime?
//
//  Created by bekir tura on 24/09/14.
//  Copyright (c) 2014 bekir tura. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var number: UITextField!
    @IBAction func Primebutton(sender: AnyObject) {
        var Integer=number.text.toInt()
       
        if((Integer) != nil){
            var isPrime = true
            if(Integer<1){
                message.text="Please enter a positive number"
            }else if(Integer==1){
                message.text = " 1 is not prime"
            }else {
               
                for var i=2 ; i<Integer ;++i{
                    if(Integer!%i == 0){
                        isPrime = false
                        }
                    }
                if(isPrime==true){
                    message.text = "that number is prime"
                }else{
                    message.text = "that number is not prime"
                }
                
            }
            
        }else{
            message.text="Please enter a number"
        }
    }
    @IBOutlet weak var message: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

