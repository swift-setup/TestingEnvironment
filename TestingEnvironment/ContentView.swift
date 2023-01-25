//
//  ContentView.swift
//  TestingEnvironment
//
//  Created by Qiwei Li on 1/25/23.
//

import SwiftUI
import PluginEngine
import SetupPlugin
import GitHubRemoteSettingsPlugin
import PluginPackageCreator
import ImageResizingPlugin
import CloudAnchor

struct ContentView: View {
    @EnvironmentObject var engine: PluginEngine
    @EnvironmentObject var fileUtils: FileUtils
    @EnvironmentObject var panelUtils: NSPanelUtils
    
    var body: some View {
        VStack {
            if let _ = engine.currentPlugin {
                engine.render()
            }
        }
        .onAppear {
            engine.setup(fileUtils: fileUtils, nsPanelUtils: panelUtils)
//            engine.addPluginBuilder(builder: PluginackageCreatorBuilder())
//            engine.addPluginBuilder(builder: SetupPluginBuilder())
//            try! engine.use(plugin: "com.sirilee.SetupPlugin")
//            engine.addPluginBuilder(builder: GitHubRemoteSettingsPluginBuilder())
//            try! engine.use(plugin: "com.sirilee.PluginPackageCreator")
//            try! engine.use(plugin: "com.sirilee.GitHubRemoteSettings")
            
//            engine.addPluginBuilder(builder: ImageResizingPluginBuilder())
//            try! engine.use(plugin: "com.sirily11.imageResize")
            
//            engine.addPluginBuilder(builder: CloudAnchorBuilder())
//            try! engine.use(plugin: "com.sirilee.cloudAnchor")
            engine.addPluginBuilder(builder: PluginackageCreatorBuilder())
            try! engine.use(plugin: "com.sirilee.PluginPackageCreator")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
