//
//  AppDelegate.swift
//  HomeSuperChatApp
//
//  Created by Васильева Ольга on 24.02.2022.
//

import UIKit

enum AppStates {
    case notRunningState
    case inactiveState
    case activeState
    case backgroundState
}

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        if LogManager.shared.loggingOn {
            print("Application moved from \(AppStates.notRunningState) to \(AppStates.inactiveState): \(#function)")
        }
        return true
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        
        if LogManager.shared.loggingOn {
            print("Application moved from \(AppStates.inactiveState) to \(AppStates.activeState): \(#function)")
        }
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        
        if LogManager.shared.loggingOn {
            print("Application moved from \(AppStates.activeState) to \(AppStates.inactiveState): \(#function)")
        }
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        
        if LogManager.shared.loggingOn {
            print("Application moved from \(AppStates.inactiveState) to \(AppStates.backgroundState): \(#function)")
        }
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        
        if LogManager.shared.loggingOn {
            print("Application moved from \(AppStates.backgroundState) to \(AppStates.inactiveState): \(#function)")
        }
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        
        if LogManager.shared.loggingOn {
            print("Application moved from \(AppStates.backgroundState) to \(AppStates.notRunningState): \(#function)")
        }
    }
}


