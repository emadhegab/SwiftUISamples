//
//  FancyTimer.swift
//  ObservableObject
//
//  Created by Mohamed Hegab on 22.12.20.
//

import Foundation
import SwiftUI
import Combine

class FancyTimer: ObservableObject {
    @Published var value: Int = 0

    init() {
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { (timer) in
            self.value += 1
        }
    }
}
