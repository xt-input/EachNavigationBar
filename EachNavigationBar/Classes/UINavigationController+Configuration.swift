//
//  UINavigationController+Configuration.swift
//  EachNavigationBar
//
//  Created by Pircate on 2018/6/26.
//  Copyright © 2018年 Pircate. All rights reserved.
//

import UIKit
import ObjectiveC

public class Configuration: NSObject {
    
    @objc public var isEnabled = false
    
    @objc public var isHidden = false
    
    @objc public var alpha: CGFloat = 1
    
    @objc public var barTintColor: UIColor?
    
    @objc public var backgroundImage: UIImage?
    
    @objc public var metrics: UIBarMetrics = .default
    
    @objc public var position: UIBarPosition = .any
    
    @objc public var shadowImage: UIImage?
    
    #if swift(>=4.2)
    @objc public var titleTextAttributes: [NSAttributedString.Key : Any]?
    #else
    @objc public var titleTextAttributes: [NSAttributedStringKey : Any]?
    #endif
    
    @objc public var isTranslucent: Bool = true
    
    @objc public var barStyle: UIBarStyle = .default
    
    /// Extra height for the navigation bar.
    @objc public var extraHeight: CGFloat = 0
    
    /// Image for leftBarButtonItem(not backBarButtonItem).
    /// If you don't set, there will be no back button by default.
    @objc public var backImage: UIImage?
    
    @objc public func setShadowHidden(_ hidden: Bool) {
        let image = hidden ? UIImage() : nil
        shadowImage = image
        guard #available(iOS 11.0, *) else {
            backgroundImage = image
            return
        }
    }
}

extension UINavigationController {
    
    @objc public var global_configuration: Configuration {
        if let configuration = objc_getAssociatedObject(self, &AssociatedKeys.configuration) as? Configuration {
            return configuration
        }
        let configuration = Configuration()
        objc_setAssociatedObject(self, &AssociatedKeys.configuration, configuration, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        return configuration
    }
}
