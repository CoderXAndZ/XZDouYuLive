//
//  XZMainTabBarController.swift
//  XZDouYuLive
//
//  Created by admin on 2017/10/24.
//  Copyright © 2017年 RongTuoJinRong. All rights reserved.
//

import UIKit

class XZMainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //
        addChildVc(storyName: "Home")
        addChildVc(storyName: "Live")
        addChildVc(storyName: "Follow")
        addChildVc(storyName: "Profile")
    }

    private func addChildVc(storyName : String) {
        // 1.通过storyboard获取控制器
        let childVc = UIStoryboard(name: storyName, bundle: nil).instantiateInitialViewController()!
        // 2.将childVc作为子控制器
        addChildViewController(childVc)
    }

}
