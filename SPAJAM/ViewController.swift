//
//  ViewController.swift
//  SPAJAM
//
//  Created by Takahiro Masaki on 2014/07/05.
//  Copyright (c) 2014年 Takahiro Masaki. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, NSURLConnectionDelegate{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
            
        //for reading JSON
        var url = "https://dl.dropboxusercontent.com/s/h8ooa0a2owi8gl6/users.json"
        var reqest = NSURLRequest(URL: NSURL(string: url))
        NSURLConnection.sendAsynchronousRequest(reqest,queue: NSOperationQueue.mainQueue(),completionHandler:{
            (res: NSURLResponse!, data: NSData!, error: NSError!) in
            let json = JSONValue(data)
            //debug
            //println(json)
        })
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return 7
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath:NSIndexPath!) -> UITableViewCell! {
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "List")
        
        cell.text = ""
        cell.detailTextLabel.text = "Profile #\(indexPath.row)"
        return cell
    }
}

