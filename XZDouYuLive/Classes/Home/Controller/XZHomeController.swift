//
//  XZHomeController.swift
//  XZDouYuLive
//
//  Created by XZ on 2017/11/6.
//  Copyright © 2017年 RongTuoJinRong. All rights reserved.
//

import UIKit

class XZHomeController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // 设置UI界面
        setupUI()
        
    }
}

// MARK:- 设置UI界面
extension XZHomeController {
    private func setupUI() {
        // 1.设置导航栏
        setupNavigationBar()
    }
    
    private func setupNavigationBar() {
        // 1、设置左侧item
        navigationItem.leftBarButtonItem = UIBarButtonItem(imageName: "logo")
        // 2、设置右侧items
        let size = CGSize(width: 40, height: 40)
        let historyItem = UIBarButtonItem(imageName: "image_my_history", highImageName: "Image_my_history_click", size: size)
        
        let searchItem = UIBarButtonItem(imageName: "btn_search", highImageName: "btn_search_clicked", size: size)
    
        let qrcoderItem = UIBarButtonItem(imageName: "Image_scan", highImageName: "Image_scan_click", size: size)
        navigationItem.rightBarButtonItems = [historyItem,searchItem,qrcoderItem]
        
    }
}
