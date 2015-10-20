//
//  LHTabBarButton.swift
//  toy_swift
//
//  Created by 李允 on 15/10/19.
//  Copyright © 2015年 liyun. All rights reserved.
//

import UIKit

class LHTabBarButton: UIButton {
    
    
    
    func makeContent(item: UITabBarItem) {
        self.setTitleColor(UIColor(rgb: 0xf5c82f), forState: UIControlState.Selected)
        self.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        self.titleLabel?.textAlignment = NSTextAlignment.Center
        self.titleLabel?.font = UIFont.systemFontOfSize(10)
        
        self.setTitle(item.title, forState: UIControlState.Normal)
        self.setImage(item.image, forState: UIControlState.Normal)
        self.setImage(item.selectedImage, forState: UIControlState.Selected)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.imageView?.setX((self.width() - 26)/2)
        self.imageView?.setY(6)
        self.imageView?.setWidth(26)
        self.imageView?.setHeight(26)
        
        self.titleLabel?.setX(0)
        self.titleLabel?.setY(32)
        self.titleLabel?.setWidth(self.width())
        self.titleLabel?.setHeight(self.height()-32)
    }
}
