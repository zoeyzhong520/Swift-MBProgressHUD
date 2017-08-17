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
        
        //1.
        //showHintInKeywindow(hint: "loading...")
        
        //2.
        showHudWithDuration(in: self.view)
        
        //3.
        //showHud(in: self.view, hint: "loading...")
        //hideHUD()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}







