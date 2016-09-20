//
//  ViewController.swift
//  CoreDataApp3
//
//  Created by class24 on 2016/9/20.
//  Copyright © 2016年 GUO. All rights reserved.
//

import UIKit
import CoreData
class ViewController: UIViewController, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    var result: [UserData] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
        
        let appDelegate: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        let context: NSManagedObjectContext = appDelegate.managedObjectContext
        let fetch: NSFetchRequest = NSFetchRequest(entityName: "UserData")
        do {
            try result = context.executeFetchRequest(fetch) as! [UserData]
        } catch let error {
            print("Error:\(error)")
        }
        // 初始化 coreData 資料
        self.initData()
        // 重新整理表單
        self.tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func initData() {
        if self.result.count == 0 {
            let appDelegate: AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
            let context: NSManagedObjectContext = appDelegate.managedObjectContext
            // 新增 user 資料
            var user: UserData = NSEntityDescription.insertNewObjectForEntityForName("UserData", inManagedObjectContext: context) as! UserData
            user.cname = "GUO TING RU"
            user.iid = "A01"
            appDelegate.saveContext()
            
            user = NSEntityDescription.insertNewObjectForEntityForName("UserData", inManagedObjectContext: context) as! UserData
            user.cname = "GUO"
            user.iid = "A02"
            appDelegate.saveContext()
            // 重新讀取 UserData 資料
            let fetch: NSFetchRequest = NSFetchRequest(entityName: "UserData")
            do {
                try result = context.executeFetchRequest(fetch) as! [UserData]
            } catch let error {
                print("Error:\(error)")
            }
        }
    }
    // # MARK: - TableViewDataSource
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.result.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        cell.textLabel?.text = "編號：\(result[indexPath.row].iid!)  姓名：\(result[indexPath.row].cname!)"
        return cell
    }

}

