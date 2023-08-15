// Created by 白童童 on 2022/11/30.
// Copyright © 2022白童童. All rights reserved.

import Foundation
import Combine

struct BusyPublisher: Publisher {
    
    typealias Output = Int
    typealias Failure = Never
    
    func receive<S>(subscriber: S) where S : Subscriber, Failure == S.Failure, Output == S.Input {
        sleep(5)
        subscriber.receive(subscription: Subscriptions.empty)
        _ = subscriber.receive(1)
        
        print("receive<S>(subscriber: S):: ")
        print(Thread.isMainThread ? "main" : "not main")
        subscriber.receive(completion: .finished)
    }
}


BusyPublisher()
   .subscribe(on: DispatchQueue.global())
   .receive(on: DispatchQueue.main)
   .sink { _ in
       print("Received value")
       print(Thread.isMainThread ? "sink main" : "sink not main")
   }
