//
//  Category.swift
//  XianToo
//
//  Created by Apple on 15/6/9.
//  Copyright (c) 2015年 XianToo Ltd. All rights reserved.
//

import Foundation

import UIKit

class UserController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor.brownColor()
    }
    //override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        
        let subV = UserController()
        subV.title = "会员中心"
        self.navigationController?.pushViewController(subV, animated: true)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    }
    */
    
}
