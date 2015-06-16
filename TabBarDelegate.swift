//
//  TabBarDelegate.swift
//  AutoMath
//
//  Created by YUMAKOMORI on 2015/06/17.
//  Copyright (c) 2015年 YUMAKOMORI. All rights reserved.
//

import Foundation

@objc protocol TabBarDelegate {
    
    func didSelectTab(tabBarController: RAMAnimatedTabBarController)
}
