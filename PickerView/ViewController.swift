//
//  ViewController.swift
//  PickerView
//
//  Created by bekir tura on 21/09/14.
//  Copyright (c) 2014 bekir tura. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate {
    @IBOutlet weak var FruitsSelected: UILabel!
    
    var meyveler = [ "Muz","Elma","Karpuz","Şeftali","Armut"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        FruitsSelected.text=meyveler[0]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfRowsInComponent(component: Int) -> Int{
        return 1
    }
    func pickerView(pickerView: UIPickerView!, numberOfRowsInComponent component: Int) -> Int{
        return meyveler.count
    }
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String!{
        return meyveler[row]
    }
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int){
        FruitsSelected.text = meyveler[row]
        
    }
    
    
    


}

