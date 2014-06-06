//
//  TableViewController.swift
//  TLJSONDemo
//
//  Created by Thor Lin on 2014/6/6.
//  Copyright (c) 2014年 Thor Lin. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    init(nibName nibNameOrNil: String!, bundle nibBundleOrNil: NSBundle!){
        super.init(nibName:"TableViewController",bundle:nil);
    }

    
    init(style: UITableViewStyle) {
        super.init(style: style)
        // Custom initialization
    }
    var EventArray:NSMutableArray?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        EventArray = TLJSON.ParseJSON("https://livelink.firebaseio.com/event/.json");
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // #pragma mark - Table view data source
    
    override func numberOfSectionsInTableView(tableView: UITableView?) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }
    
    override func tableView(tableView: UITableView?, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return EventArray!.count
    }
    
    override func tableView(tableView: UITableView?, cellForRowAtIndexPath indexPath: NSIndexPath?) -> UITableViewCell? {
        let cell  = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "MyCell")//tableView!.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)
    // Configure the cell...
        let event = EventArray![indexPath!.row] as Dictionary<String,String>
    cell.textLabel!.text = event["title"]
    return cell as? UITableViewCell
    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView?, canEditRowAtIndexPath indexPath: NSIndexPath?) -> Bool {
    // Return NO if you do not want the specified item to be editable.
    return true
    }
    */
    
    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView?, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath?) {
    if editingStyle == .Delete {
    // Delete the row from the data source
    tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
    } else if editingStyle == .Insert {
    // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }
    }
    */
    
    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView?, moveRowAtIndexPath fromIndexPath: NSIndexPath?, toIndexPath: NSIndexPath?) {
    
    }
    */
    
    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView?, canMoveRowAtIndexPath indexPath: NSIndexPath?) -> Bool {
    // Return NO if you do not want the item to be re-orderable.
    return true
    }
    */
    
    /*
    // #pragma mark - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue?, sender: AnyObject?) {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    }
    */
    
}
