//
//  AppDelegate.swift
//  XianToo
//
//  Created by Apple on 15/6/4.
//  Copyright (c) 2015年 XianToo Ltd. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        let homeV : UIViewController = ViewController()
        let categoryV : UIViewController = CategoryController()
        let searchV : UIViewController = SearchController()
        let userV : UIViewController = UserController()
        
        
        homeV.title = "首页"
        categoryV.title = "分类"
        searchV.title = "搜索"
        userV.title="我的";
        
        //定义一个视图控制器
        let one_vc = ViewController(nibName:nil,bundle: nil);
        //创建导航控制器
        let nvc=UINavigationController(rootViewController:one_vc);
        //设置根视图
        self.window!.rootViewController=nvc;
        
        let naviV1 = UINavigationController(rootViewController: homeV)
        let naviV2 = UINavigationController(rootViewController: categoryV)
        let naviV3  = UINavigationController(rootViewController: searchV)
        let naviV4  = UINavigationController(rootViewController: userV)
        
        let tabbarCon : UITabBarController = UITabBarController()
        let arrV : NSArray = NSArray(objects:naviV1,naviV2,naviV3,naviV4)
        tabbarCon.setViewControllers(arrV as [AnyObject], animated: true)
        
        
        var item1 : UITabBarItem = tabbarCon.tabBar.items?[0] as! UITabBarItem
        var item2 : UITabBarItem = tabbarCon.tabBar.items?[1] as! UITabBarItem
        var item3 : UITabBarItem = tabbarCon.tabBar.items?[2] as! UITabBarItem
        var item4 : UITabBarItem = tabbarCon.tabBar.items?[3] as! UITabBarItem
        let img1 : UIImage = UIImage(named: "wm_tabbar_home1_new")!
                let img2 : UIImage = UIImage(named: "list_blue_tab")!
                let img3 : UIImage = UIImage(named: "list_blue_tab")!
                let img4 : UIImage = UIImage(named: "list_blue_tab")!
                //let img5 : UIImage = UIImage(named: "list_blue_tab")!
        item1.image = img1
        item2.image = img2
        item3.image = img3
        item4.image = img4
        
        
        UINavigationBar.appearance().barTintColor = UIColor.yellowColor()
        
        let font:UIFont! = UIFont(name:"HelveticaNeue-Bold",size:10)
        let selectedAttributes:NSDictionary! = [NSFontAttributeName:font,NSForegroundColorAttributeName:UIColor.redColor()]
        // UITabBarItem.appearance().setTitleTextAttributes(selectedAttributes, forState: UIControlState.Selected)
        
        window!.rootViewController = tabbarCon
        
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

