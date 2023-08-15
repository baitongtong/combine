// Created by AppDelegate on 2022/11/28.
// Copyright © 2022白童童. All rights reserved.
//

import Foundation

class SomeOperation: Operation {
    let value: Int
    
    init(value: Int) {
        self.value = value
    }

    override func main() {
        Thread.sleep(forTimeInterval: 1)
        print(value)
    }
}
