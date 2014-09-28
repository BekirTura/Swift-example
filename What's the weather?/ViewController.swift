//
//  ViewController.swift
//  What's the weather?
//
//  Created by bekir tura on 28/09/14.
//  Copyright (c) 2014 bekir tura. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var City: UITextField!
    @IBOutlet weak var weatherMessage: UILabel!
    @IBAction func Press(sender: AnyObject) {
        self.view.endEditing(true)
        var urlString = "http://www.weather-forecast.com/locations/"+City.text.stringByReplacingOccurrencesOfString(" ", withString: "")+"/forecasts/latest"
        var url = NSURL(string: urlString)
        let task = NSURLSession.sharedSession().dataTaskWithURL(url){
            (data,response,error)in
           var urlContent = NSString(data: data, encoding: NSUTF8StringEncoding)
            if(urlContent.hasPrefix("<span class=\"phrase\">")){
            var contentArray = urlContent.componentsSeparatedByString("<span class=\"phrase\">")
            var contentArray1 = contentArray[1].componentsSeparatedByString("</span>")
           
            self.weatherMessage.text = (contentArray1[0] as String).stringByReplacingOccurrencesOfString("&deg;", withString: "°")
            }else{
                self.weatherMessage.text="Couldn't find that city - Please try again"
            }
    }
        task.resume()
        println(urlString)
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

