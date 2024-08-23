//
//  Hike.swift
//  HelloSwiftUI
//
//  Created by Justin Maronde on 8/23/24.
//

import Foundation

struct Hike: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let photo: String
    let miles: Double
}
