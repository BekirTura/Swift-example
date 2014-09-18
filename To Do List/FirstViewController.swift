//
//  FirstViewController.swift
//  To Do List
//
//  Created by bekir tura on 18/09/14.
//  Copyright (c) 2014 bekir tura. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController ,UITableViewDelegate , UITableViewDataSource {
    
    @IBOutlet var tblTask:UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //returningto view 
    override func viewWillAppear(animated: Bool) {
        tblTask.reloadData() 
         
    }
    //UItableViewDataSource
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return taskMgr.tasks.count
    }
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        
        let cell:UITableViewCell = UITableViewCell(style:UITableViewCellStyle.Subtitle, reuseIdentifier:"Default")
        cell.textLabel.text = taskMgr.tasks[indexPath.row].name
        cell.detailTextLabel.text = taskMgr.tasks[indexPath.row].desc
        return cell
    
    }
    //UITableViewDelete
    
    func tableView(tableView: UITableView!, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath!) {
        if(editingStyle == UITableViewCellEditingStyle.Delete){
            taskMgr.tasks.removeAtIndex(indexPath.row)
            tblTask.reloadData()
        }
    }

}
