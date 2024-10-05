//
//  Drill.swift
//  hooper-v2
//
//  Created by Jason Crabtree on 03/10/2024.
//

import Foundation

struct Drill: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var time: Int
    var description: String
    var type: Category
    
    enum Category: String, CaseIterable, Codable {
        case layup = "Layup"
        case paint = "Floater"
        case elbow = "Elbow"
        case midrange = "Midrange"
        case jumper = "Jumper"
    }
}

var drills: [Drill] = load("DrillsData.json")

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error))")
    }
}
