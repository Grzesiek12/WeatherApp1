//
//  AppDelegate.swift
//  WeatherAppKilo
//
//  Created by Grzegorz Wiczkowski on 08/02/2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {


    //"75ce4ca21248ab7c4dd627df495b3fd8"
    
  //"7c464974bd024da15940fe7b0f2c973c"
    //"api.openweathermap.org/data/2.5/weather?q=London&appid="
    
    //"http://openweathermap.org/data/2.5/")
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
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

