//
//  ViewController.swift
//  AutoMath
//
//  Created by YUMAKOMORI on 2015/06/15.
//  Copyright (c) 2015年 YUMAKOMORI. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var logoimageView:UIImageView!
    var scale:CGFloat = 1.0
    var width:CGFloat = 0
    var height:CGFloat = 0
    var screenWidth:CGFloat = 0
    var screenHeight:CGFloat = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Screen Size の取得
        screenWidth = self.view.bounds.width
        screenHeight = self.view.bounds.height
        
        // UIImage インスタンスの生成
        let image:UIImage! = UIImage(named:"front.png")
        
        // 画像の幅・高さの取得
        width = image!.size.width
        height = image!.size.height
        
        // UIImageView インスタンス生成
        logoimageView = UIImageView(image:image)
        
        // 画像サイズをスクリーン幅に合わせる
        scale = screenWidth / width
        var rect:CGRect = CGRectMake(0, 0, width*scale, height*scale)
        
        // ImageView frame をCGRectMakeで作った矩形に合わせる
        logoimageView!.frame = rect;
        
        // 画像の中心を187.5, 333.5 の位置に設定、iPhone6のケース
        logoimageView!.center = CGPointMake(187.5, 333.5)
        
        // view に ImageView を追加する
        self.view.addSubview(logoimageView!)
        

        
    }
    
    
    //animation front view
    override func viewDidAppear(animated: Bool) {
        //少し縮小するアニメーション
        UIView.animateWithDuration(0.3,
            delay: 1.0,
            options: UIViewAnimationOptions.CurveEaseOut,
            animations: { () in
                self.logoimageView.transform = CGAffineTransformMakeScale(0.9, 0.9)
            }, completion: { (Bool) in
                
        })
        
        //拡大させて、消えるアニメーション
        UIView.animateWithDuration(0.2,
            delay: 1.3,
            options: UIViewAnimationOptions.CurveEaseOut,
            animations: { () in
                self.logoimageView.transform = CGAffineTransformMakeScale(1.2, 1.2)
                self.logoimageView.alpha = 0
            }, completion: { (Bool) in
                self.logoimageView.removeFromSuperview()
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

