//
//  UIView+Frame.swift
//  toy_swift
//
//  Created by 李允 on 15/10/19.
//  Copyright © 2015年 liyun. All rights reserved.
//

import UIKit

extension UIView {
    
    func setX(x: CGFloat) {
        var frame = self.frame;
        frame.origin.x = x;
        self.frame = frame;
    }
    
    func x() -> CGFloat {
        return self.frame.origin.x
    }
    
    func setY(y: CGFloat) {
        var frame = self.frame;
        frame.origin.y = y;
        self.frame = frame;
    }
    
    func y() -> CGFloat {
        return self.frame.origin.y
    }
    
    func setWidth(w: CGFloat) {
        var frame = self.frame;
        frame.size.width = w;
        self.frame = frame;
    }
    
    func width() -> CGFloat {
        return self.frame.size.width
    }
    
    func setHeight(h: CGFloat) {
        var frame = self.frame;
        frame.size.height = h;
        self.frame = frame;
    }
    
    func height() -> CGFloat {
        return self.frame.size.height
    }
}