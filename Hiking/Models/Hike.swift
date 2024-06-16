//
//  Hike.swift
//  Hiking
//
//  Created by Никита Стригин on 16.06.2024.
//

import Foundation

struct Hike: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let photo: String
    let miles: Double
}
