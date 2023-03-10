//
//  FruitsModel.swift
//  Fructus
//
//  Created by Yusril on 20/02/23.
//

import Foundation
import SwiftUI

//MARK: Fruits Data Model
struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColor: [Color]
    var description: String
    var nutrition: [String]
}
