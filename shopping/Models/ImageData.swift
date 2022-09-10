//
//  ImageData.swift
//  shopping
//
//  Created by Aman Negi on 10/09/22.
//

import Foundation

struct FruitModel {
    var id: Int
    var title: Fruits
    var image: String
    var price: String
    var color: String
}

enum Fruits: String {
    case apple, apricot, avocado, banana,blackberry, cherry, dragonfruit, fig, grapes, kiwi, lemon, mango, muskmelon, orange, papaya, pear, pineapple, plum,raspberry, strawbery, watermelon
}
