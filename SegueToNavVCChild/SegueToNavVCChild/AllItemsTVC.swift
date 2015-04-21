//
//  AllItemsTVC.swift
//  SegueToNavVCChild
//
//  Created by Tobias Hähnel on 21/04/15.
//  Copyright (c) 2015 StackOverflow. All rights reserved.
//

import UIKit

class AllItemsTVC: UITableViewController {
    
    let profiles = ["Joe", "John", "Ken"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return profiles.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! UITableViewCell
        let profile = profiles[indexPath.row] as String
        cell.textLabel?.text = profile
        return cell
    }
    
    @IBAction func cancelFromShowProfile(segue: UIStoryboardSegue) {
    }

    // MARK: - Navigation
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if let identifier = segue.identifier {
            switch identifier {
            case "ShowProfile":
                if let showProfileVC = segue.destinationViewController as? ShowProfileVC {
                    // pass the data to the destinationVC
                    let selectedProfile = profiles[tableView.indexPathForSelectedRow()!.row] as String
                    showProfileVC.name = selectedProfile
                }
            default: break
            }
        }
    }
    
    
    // MARK: - Navigation
    /*
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
