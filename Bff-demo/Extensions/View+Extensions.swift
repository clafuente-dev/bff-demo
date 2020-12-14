//
//  View+Extensions.swift
//  Bff-demo
//
//  Created by Constanza on 08-12-20.
//

import Foundation
import SwiftUI

extension View {
    func embedNavigationView() -> some View {
        return NavigationView { self }
    }
}
