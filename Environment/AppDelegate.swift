//
//  AppDelegate.swift
//  Environment
//
//  Created by Ara Hakobyan on 09/09/2019.
//  Copyright © 2019 Ara Hakobyan. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

//        print("ROOT URL: \(Configuration.rootURL)")

        print("ROOT URL: \(Configuration.rootUrl)")

        #if DEV
        let rootURL = URL(string: "https//api.development.com")
        let apiKey = 78623029723792
        #elseif RELEASE
        let rootURL = URL(string: "https//api.protuction.com")
        let apiKey = 64496853646464
        #endif


        // MARK: - Development
//        let rootURL = URL(string: "https//api.development.com")
//        let apiKey = "78623029723792"

        // MARK: - Production
        // let rootURL = URL(string: "https//api.protuction.com")
        // let apiKey = "64496853646464"


        rootURL
        apiKey
        return true
    }
}

