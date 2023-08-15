// Created by 白童童 on 2022/11/30.
// Copyright © 2022白童童. All rights reserved.

import SwiftUI

@main
struct MyJobAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(JobListDataModel())
        }
    }
}
