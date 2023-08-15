// Created by AppDelegate on 2022/11/28.
// Copyright © 2022白童童. All rights reserved.
//

import Foundation
class AppVar {
    static var envObj = EnvObj()
    static var openMethod = ""
    static var linkInfo = ""
}

class EnvObj : ObservableObject {
    @Published var showDialog = false
}
