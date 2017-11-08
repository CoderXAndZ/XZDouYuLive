//
//  UIBarButtonItem-Extension.swift
//  XZDouYuLive
//
//  Created by XZ on 2017/11/8.
//  Copyright © 2017年 RongTuoJinRong. All rights reserved.
//

import UIKit

extension UIBarButtonItem{
    // 便利构造函数：1>convenience开头 2>在构造函数中必须明确调用一个设计的构造函数(self)
    convenience init(imageName:String,highImageName:String = "",size:CGSize = CGSize.zero) {
        // 1.创建UIButton
        let btn = UIButton()
        
        // 2.设置btn的尺寸
        if size == CGSize.zero {
            btn.sizeToFit()
        }else {
            btn.frame = CGRect(origin: CGPoint.zero, size: size)
        }
        
        // 3.设置btn的图片
        btn.setImage(UIImage.init(named: imageName), for: .normal)
        if highImageName != "" {
            btn.setImage(UIImage.init(named: highImageName), for: .highlighted)
        }
        
        // 4.创建UIBarButtonItem
        self.init(customView: btn)
    }
    /*
    class func createItem(imageName:String,highImageName:String,size:CGSize) -> UIBarButtonItem {
        let btn = UIButton()
        btn.frame = CGRect(origin: CGPoint.zero, size: size)
        btn.setImage(UIImage.init(named: imageName), for: .normal)
        btn.setImage(UIImage.init(named: highImageName), for: .highlighted)
        return UIBarButtonItem(customView: btn)
    }
 */
    
}
