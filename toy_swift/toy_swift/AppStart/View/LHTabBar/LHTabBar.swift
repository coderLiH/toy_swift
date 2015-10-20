//
//  LHTabBar.swift
//  toy_swift
//
//  Created by 李允 on 15/10/19.
//  Copyright © 2015年 liyun. All rights reserved.
//

import UIKit

class LHTabBar: UIView {
    var selectedItem: LHTabBarButton?
    var itemBlock: ((index: Int) -> Void)?
    
    internal func createItem (item: UITabBarItem) -> Void {
        let barButton = LHTabBarButton()
        barButton.tag = self.subviews.count
        self.addSubview(barButton)
        barButton.addTarget(self, action: "selectItem:", forControlEvents: UIControlEvents.TouchUpInside)
        barButton.makeContent(item)
    }
    
    internal func selectItemWithIndex(index: Int) {
        for b in self.subviews {
            if let sender = b as? LHTabBarButton {
                if sender.tag == index {
                    self.selectItem(sender)
                }
            }
        }
    }
    
    func selectItem(sender: LHTabBarButton) {
        
        selectedItem?.selected = false
        sender.selected = true
        selectedItem = sender
        
        if (itemBlock != nil) {
            itemBlock!(index: sender.tag)
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        for i in 0..<self.subviews.count {
            let b = self.subviews[i]
            let width: CGFloat = self.width()/CGFloat(self.subviews.count)
            b.setX(CGFloat(i)*width)
            b.setY(0)
            b.setWidth(width)
            b.setHeight(self.height())
        }
    }

}
