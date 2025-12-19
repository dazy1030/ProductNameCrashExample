//
//  ProductNameCrashExampleApp.swift
//  ProductNameCrashExample
//
//  Created by 小田島 直樹 on 2025/12/19.
//

import SwiftUI

@main
struct ProductNameCrashExampleApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

final class AppDelegate: NSObject, UIApplicationDelegate {
    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil
    ) -> Bool {
        application.registerForRemoteNotifications()
        return true
    }
    
    func application(
        _ application: UIApplication,
        didFailToRegisterForRemoteNotificationsWithError error: any Error
    ) {
        // entitlementsにプッシュ通知を追加していないためエラーが発生する
        print(error)
    }
}
