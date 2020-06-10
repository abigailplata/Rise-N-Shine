//
//  SettingsViewController.swift
//  Alarm-ios-swift
//
//  Created by Abigail Plata on 11/3/18.
//  Copyright © 2018 LongGames. All rights reserved.
//
import Foundation
class SettingsBundleHelper {
    struct SettingsBundleKeys {
        static let TwentyFourHour = "24_HOUR_KEY"
        static let BuildVersionKey = "build_preference"
        static let AppVersionKey = "version_preference"
    }
    class func checkAndExecuteSettings() {
        if UserDefaults.standard.bool(forKey: SettingsBundleKeys.TwentyFourHour) {
            UserDefaults.standard.set(false, forKey: SettingsBundleKeys.TwentyFourHour)
            let appDomain: String? = Bundle.main.bundleIdentifier
            UserDefaults.standard.removePersistentDomain(forName: appDomain!)
            // reset userDefaults..
            // CoreDataDataModel().deleteAllData()
            // delete all other user data here..
            
            
        }
    }
    
    class func setVersionAndBuildNumber() {
        let version: String = Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as! String
        UserDefaults.standard.set(version, forKey: "version_preference")
        let build: String = Bundle.main.object(forInfoDictionaryKey: "CFBundleVersion") as! String
        UserDefaults.standard.set(build, forKey: "build_preference")
    }
}

