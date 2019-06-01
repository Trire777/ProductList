//
//  ProductListModel.swift
//  ToDo List_2
//
//  Created by user152216 on 6/1/19.
//  Copyright © 2019 user152216. All rights reserved.
//

import Foundation

struct Products {
    let name: String
    let count: Int
    
}

class ProductListModel  {
    func retreiveProducts() -> [Products] {
        
   
        return [Products(name: "Молоко", count: 1),
        Products(name: "Хлеб", count: 1),
        Products(name: "Кефир", count: 1)]
        
    }
    
    
}
