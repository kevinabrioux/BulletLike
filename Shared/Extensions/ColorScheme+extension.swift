//
//  ColorScheme+extension.swift
//  BulletLike (iOS)
//
//  Created by Kevin ABRIOUX on 30/12/2021.
//

import Foundation
import SwiftUI

extension ColorScheme {
    var color: Color {
        get {
            self == .light ? Color.black : Color.white
        }
    }
}
