// Created by 白童童 on 2022/11/30.
// Copyright © 2022白童童. All rights reserved.

import Foundation
import Combine

public func testSample(label: String , testBlock: () -> Void) {
    print("您正在演示:\(label)")
    testBlock()
    print("演示:\(label)结束")
}

var subscriptions = Set<AnyCancellable>()
testSample(label: "01_never"){
    enum MyErrors {
    }
    
    /// Failure = Never
    let sourcePublisher = PassthroughSubject<Int, Never>()
    sourcePublisher
        .breakpointOnError() /// 不会产生错误。
        .sink(receiveCompletion: { completion in
            print("01_never completion:\(completion)")
        }, receiveValue: { value in
            print("01_never value : \(value)")
        }).store(in: &subscriptions)
    
    sourcePublisher.send(1)
    sourcePublisher.send(2) 
}
