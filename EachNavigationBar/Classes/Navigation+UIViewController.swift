//
//  Navigation+UIViewController.swift
//  EachNavigationBar
//
//  Created by Pircate(gao497868860@gmail.com) on 2018/6/26.
//  Copyright © 2018年 Pircate. All rights reserved.
//

public extension Navigation where Base: UIViewController {
    
    var bar: EachNavigationBar {
        return base.each_navigationBar
    }
    
    var item: UINavigationItem {
        return base.each_navigationItem
    }
}
