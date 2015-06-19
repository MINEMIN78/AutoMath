//
//  ViewController.swift
//  AutoMath
//
//  Created by YUMAKOMORI on 2015/06/15.
//  Copyright (c) 2015年 YUMAKOMORI. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var logoImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        //起動画面
        self.view.backgroundColor = UIColor.whiteColor()
        
            //imageview作成
            self.logoImageView = UIImageView(frame: CGRectMake(0, 0, 1242, 2208))
            //画面centerに
            self.logoImageView.center = self.view.center
            //logo設定
            self.logoImageView.image = UIImage(named: "front.png")
            //viewに追加
            self.view.addSubview(self.logoImageView)
        
        
        //色
        let colorKey = UIColor(red: 255/255, green: 0/255, blue: 0/255, alpha: 1.0)
        let colorBg = UIColor(red: 0/255, green: 255/255, blue: 0/255, alpha: 1.0)
        //        let fontFamily: UIFont! = UIFont(name: "Hiragino Kaku Gothic ProN",size:10)?
        
        UITabBar.appearance().tintColor = colorKey
        UITabBar.appearance().barTintColor = colorBg
        
        
        
        

        
    }
    
    
    //animation front view
    override func viewDidAppear(animated: Bool) {
        //少し縮小するアニメーション
        UIView.animateWithDuration(0.3,
            delay: 1.0,
            options: UIViewAnimationOptions.CurveEaseOut,
            animations: { () in
                self.logoImageView.transform = CGAffineTransformMakeScale(0.9, 0.9)
            }, completion: { (Bool) in
                
        })
        
        //拡大させて、消えるアニメーション
        UIView.animateWithDuration(0.2,
            delay: 1.3,
            options: UIViewAnimationOptions.CurveEaseOut,
            animations: { () in
                self.logoImageView.transform = CGAffineTransformMakeScale(1.2, 1.2)
                self.logoImageView.alpha = 0
            }, completion: { (Bool) in
                self.logoImageView.removeFromSuperview()
        })        
    }
    
    //animation end
    
    
    
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

