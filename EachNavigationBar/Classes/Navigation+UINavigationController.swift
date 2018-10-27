//
//  Navigation+UINavigationController.swift
//  EachNavigationBar
//
//  Created by Pircate(gao497868860@gmail.com) on 2018/6/26.
//  Copyright © 2018年 Pircate. All rights reserved.
//

public extension Navigation where Base: UINavigationController {
    
    var configuration: Configuration {
        return base.global_configuration
    }
}
