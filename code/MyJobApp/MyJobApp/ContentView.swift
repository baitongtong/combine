// Created by 白童童 on 2022/11/30.
// Copyright © 2022白童童. All rights reserved.

import SwiftUI
import Combine

struct ContentView: View {
    
    @EnvironmentObject var jobDataModel: JobListDataModel
    
    var  body: some View {
        VStack(spacing: 20) {
            JobListPage()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
