//
//  MockArts.swift
//  NaturalArt
//
//  Created by Leandro Hernandez on 15/3/22.
//

import Foundation

struct Natural: Identifiable {
    var id = UUID()
    var title: String
    var image: String
}

let naturalArts: [Natural] = [
    Natural(title: "Berry", image: "berry"),
    Natural(title: "Lemon", image: "lemon"),
    Natural(title: "Tomato", image: "tomato"),
    Natural(title: "Grapefruit", image: "grapefruit"),
    Natural(title: "Watermelon", image: "watermelon"),
    Natural(title: "Carrot", image: "carrot"),
    Natural(title: "Cherry", image: "cherry"),
    Natural(title: "Avocado", image: "avocado"),
    Natural(title: "Apple", image: "apple"),
    Natural(title: "Banana", image: "banana2"),
    Natural(title: "Coconut",  image: "coconut"),
    Natural(title: "Cucumber", image: "cucumber"),
    Natural(title: "Banana", image: "banana")
]
