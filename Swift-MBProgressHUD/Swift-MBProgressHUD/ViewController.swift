//
//  ViewController.swift
//  Swift-MBProgressHUD
//
//  Created by JOE on 2017/8/17.
//  Copyright © 2017年 JOE. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Swift-MBProgressHUD"
        self.view.backgroundColor = UIColor.white
        
        let buttonArray = ["showHintInKeywindow", "showHudWithDuration", "showHud"]
        for i in 0..<buttonArray.count {
            let button = UIButton(type: .system)
            button.frame = CGRect(x: 0, y: CGFloat(100*i)+64, width: UIScreen.main.bounds.size.width, height: 100)
            button.setTitle(buttonArray[i], for: .normal)
            button.addTarget(self, action: #selector(buttonPressed(btn:)), for: .touchUpInside)
            button.tag = i
            self.view.addSubview(button)
        }
    }
    
    @objc fileprivate func buttonPressed(btn: UIButton) {
        switch btn.tag {
        case 0:
            showHintInKeywindow(hint: "正在加载中...")
        case 1:
            showHudWithDuration(in: self.view, hint: "waiting...", duration: 2.0)
        case 2:
            showHud(in: self.view, hint: "loading...")
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2.0, execute: { 
                self.hideHUD()
            })
        default:
            break
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}







