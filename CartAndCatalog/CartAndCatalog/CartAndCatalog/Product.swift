//
//  Product.swift
//  CartAndCatalog
//
//  Created by sdt5 on 2015. 8. 20..
//  Copyright (c) 2015년 tacademy. All rights reserved.
//

import Foundation

class Product{
    var code: String!
    var name: String!
    var price: String!
    var image: String!
    
    init(code : String, name : String, price : String, image : String){
        self.code = code
        self.name = name
        self.price = price
        self.image = image
    }
}
