//
//  TestingEnvironmentApp.swift
//  TestingEnvironment
//
//  Created by Qiwei Li on 1/25/23.
//

import SwiftUI
import PluginEngine

@main
struct TestingEnvironmentApp: App {
    @StateObject var pluginEngine = PluginEngine()
    @StateObject var fileUtils = FileUtils()
    @StateObject var panelUtils = NSPanelUtils()
    @StateObject var storeUtils = UserDefaultStore()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(pluginEngine)
                .environmentObject(fileUtils)
                .environmentObject(panelUtils)
                .environmentObject(storeUtils)
        }
        
        Settings {
            pluginEngine.renderSettings()
                .frame(minWidth: 300, maxWidth: .infinity, minHeight: 200, maxHeight: .infinity)
        }
    }
}
