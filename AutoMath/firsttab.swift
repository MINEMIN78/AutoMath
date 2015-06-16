//
//  firsttab.swift
//  AutoMath
//
//  Created by YUMAKOMORI on 2015/06/17.
//  Copyright (c) 2015年 YUMAKOMORI. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, TabBarDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func didSelectTab(tabBarController: RAMAnimatedTabBarController) {
        println("first!")
        let colorBg = UIColor(red: 238/255, green: 238/255, blue: 238/255, alpha: 1.0)
        UITabBar.appearance().barTintColor = colorBg
       
    }
}
