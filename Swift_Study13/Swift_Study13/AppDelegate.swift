//
//  AppDelegate.swift
//  Swift_Study13
//
//  Created by DohyunKim on 2020/06/10.
//  Copyright © 2020 DohyunKim. All rights reserved.
//

import UIKit
import UserNotifications

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        if #available(iOS 10.0, *) {
        
        let notiCenter = UNUserNotificationCenter.current()
            notiCenter.requestAuthorization(options: [.alert, .badge, .sound], completionHandler: {didAllow, Error in print(didAllow)
            })
        } else {
            
        }
        
        // Override point for customization after application launch.
        return true
    }
    func applicationWillResignActive(_ application: UIApplication) {
        if #available(iOS 10.0, *) {
            UNUserNotificationCenter.current().getNotificationSettings(completionHandler: { settings in if settings.authorizationStatus == UNAuthorizationStatus.authorized {
                let nContent = UNMutableNotificationContent()
                nContent.badge = 1
                nContent.title = "로컬 알림 메시지"
                nContent.subtitle = "준비된 내용이 아주 많아요! 얼른 다시 앱을 열어주세요!!"
                nContent.body = "앗, 왜 나갔어요??? 어서 들어오세요!!"
                nContent.sound = UNNotificationSound.default
                nContent.userInfo = ["name" : "홍길동"]
                
                let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
                
                let request = UNNotificationRequest(identifier: "wake up", content: nContent, trigger: trigger)
                
                UNUserNotificationCenter.current().add(request)
                
            } else {
                print("사용자가 동의하지 않음!!!")
                }
            })
        } else {
            
        }
    }
    

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

