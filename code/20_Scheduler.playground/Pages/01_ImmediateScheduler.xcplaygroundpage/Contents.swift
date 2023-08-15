// Created by 白童童 on 2022/11/30.
// Copyright © 2022白童童. All rights reserved.

import Foundation
import Combine

let immediateScheduler = ImmediateScheduler.shared

print("Current thread:  \(Thread.current)")

let aNum = [1,2,3].publisher
    .receive(on: immediateScheduler)
    .sink(receiveValue: {
        print("Received \($0)")
        print("Received thread:  \(Thread.current)")
})

