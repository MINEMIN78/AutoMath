//
//  ViewController.swift
//  AutoMath
//
//  Created by YUMAKOMORI on 2015/06/15.
//  Copyright (c) 2015年 YUMAKOMORI. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let colorKey = UIColor(red: 255/255, green: 0/255, blue: 0/255, alpha: 1.0)
        let colorBg = UIColor(red: 0/255, green: 255/255, blue: 0/255, alpha: 1.0)
        //        let fontFamily: UIFont! = UIFont(name: "Hiragino Kaku Gothic ProN",size:10)?
        
        UITabBar.appearance().tintColor = colorKey
        UITabBar.appearance().barTintColor = colorBg
        
        

        
    }
    
    class MyFancyMenuViewController: UIViewController  {
        
        @IBOutlet
        var menuItems = [UIView] ()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
//    func didSelectTab(tabBarController: TabBarController) {
//        println("first!")
//    }
    
    



}

