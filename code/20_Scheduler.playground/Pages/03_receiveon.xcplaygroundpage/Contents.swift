// Created by 白童童 on 2022/11/30.
// Copyright © 2022白童童. All rights reserved.

import Foundation
import Combine
 
Just(1)
   .map { _ in print(Thread.isMainThread) }
   .receive(on: DispatchQueue.global())
   .map { print(Thread.isMainThread) }
   .sink { print(Thread.isMainThread) }
