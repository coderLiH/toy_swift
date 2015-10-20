//
//  JTATabBarController.swift
//  toy_swift
//
//  Created by 李允 on 15/10/17.
//  Copyright © 2015年 liyun. All rights reserved.
//

import UIKit

class JTATabBarController: UITabBarController {
    var myTab: LHTabBar?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myTab = LHTabBar(frame: self.tabBar.bounds)
        self.tabBar.addSubview(myTab!)
        myTab!.itemBlock = { (index) -> Void in// === index in
            self.selectedIndex = index;
        }
        
        let entry = JTAEntryController(style: UITableViewStyle.Grouped)
        let order = JTAOrderListController()
        let mine = JTAMineController()
        
        self.addChildController(entry,title: "首页",image: UIImage(named: "shouye")!,selImage: UIImage(named: "shouye_selected")!,needNav: true)
        self.addChildController(order,title: "订单",image: UIImage(named: "dingdan")!,selImage: UIImage(named: "dingdan_selected")!,needNav: true)
        self.addChildController(mine,title: "我的",image: UIImage(named: "wode")!,selImage: UIImage(named: "wode_selected")!,needNav: false)
        
        myTab!.selectItemWithIndex(0)
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        for v in self.tabBar.subviews {
            if !v.isKindOfClass(LHTabBar.self) {
                v.hidden = true
            }
        }
    }
    
    func addChildController (controller: UIViewController,title: String,image: UIImage,selImage: UIImage,needNav: Bool) -> Void {
        let navVC = JTANavController(rootViewController: controller)
        controller.title = title
        if needNav {
            self.addChildViewController(navVC)
        } else {
            self.addChildViewController(controller)
        }
        
        controller.tabBarItem.title = title
        controller.tabBarItem.image = image
        controller.tabBarItem.selectedImage = selImage
        
        myTab!.createItem(controller.tabBarItem)
    }
    
}
