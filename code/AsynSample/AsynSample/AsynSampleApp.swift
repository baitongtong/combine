// Created by AppDelegate on 2022/11/28.
// Copyright © 2022白童童. All rights reserved.
//

import SwiftUI

@main
struct AsynSampleApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(AppVar.envObj)
                .onOpenURL(perform: handleURL)
        }
    }
    
    func handleURL(_ url: URL) {
        AppVar.linkInfo = url.absoluteString
        AppVar.envObj.showDialog = true
    }
}
