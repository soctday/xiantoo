//
//  ViewController.swift
//  XianToo
//
//  Created by Apple on 15/6/4.
//  Copyright (c) 2015年 XianToo Ltd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title="首页";
        
        let rect=CGRect(x:0,y:100,width:320,height:44);
        var mylabel=UILabel(frame: rect);
        mylabel.text="测试";
        mylabel.backgroundColor=UIColor.redColor();
        self.view.addSubview(mylabel);
        
        
        //let rightItem=UIBarButtonItem("发布",Style:.Plain,TARGET_)
        let nextItem=UIBarButtonItem(title:"发布",style:.Plain,target:self,action:"next");
        //  添加到到导航栏上
        self.navigationItem.rightBarButtonItem = nextItem;
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

