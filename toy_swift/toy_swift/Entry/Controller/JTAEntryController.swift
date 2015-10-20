//
//  JTAEntryController.swift
//  toy_swift
//
//  Created by 李允 on 15/10/17.
//  Copyright © 2015年 liyun. All rights reserved.
//

import UIKit

let bannerCellID: String = "bannerCellID"
let headerCellID: String = "headerCellID"
let comboCellID: String = "comboCellID"
let ageCellID: String = "ageCellID"
let optionalCellID: String = "optionalCellID"

class JTAEntryController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.initList()
    }
    
    func initList() {
        self.tableView .registerClass(JTAEntryBannerCell.self, forCellReuseIdentifier: bannerCellID)
        self.tableView .registerClass(JTAEntryHeaderCell.self, forCellReuseIdentifier: headerCellID)
        self.tableView .registerClass(JTAEntryComboCell.self, forCellReuseIdentifier: comboCellID)
        self.tableView .registerClass(JTAEntryAgeCell.self, forCellReuseIdentifier: ageCellID)
        self.tableView .registerClass(JTAEntryOptionalCell.self, forCellReuseIdentifier: optionalCellID)
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    /*
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)

        // Configure the cell...

        return cell
    }
    */

}
