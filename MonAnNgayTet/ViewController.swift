//
//  ViewController.swift
//  MonAnNgayTet
//
//  Created by Quan on 7/19/16.
//  Copyright © 2016 MyStudio. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    @IBOutlet weak var myTableView: UITableView!
    var dataManager = DataManager.shareInstance
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.delegate = self
        myTableView.dataSource = self
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataManager.data.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! Cell
        let monAn = dataManager.data[indexPath.item] as! MonAn
        cell.kCellWidth = self.view.frame.size.width
        cell.addSubviews()
        cell.imageViewCell.image = monAn.photo
        cell.nameLabel.text = monAn.name
        
        return cell
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 200
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == UITableViewCellEditingStyle.Delete {
            dataManager.data.removeObjectAtIndex(indexPath.item)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Automatic)
        }
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let showVC = self.storyboard?.instantiateViewControllerWithIdentifier("showData") as! ShowDataVC
        let monAnDuocChon = self.dataManager.data[indexPath.item] as! MonAn
        showVC.data = monAnDuocChon
        self.navigationController?.pushViewController(showVC, animated: true)
        
    }
    
    
    


}

