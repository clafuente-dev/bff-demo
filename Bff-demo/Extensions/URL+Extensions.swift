//
//  URL+Extensions.swift
//  Bff-demo
//
//  Created by Constanza on 08-12-20.
//

import Foundation

extension URL {
    
    static func forCategoriesByName() -> URL? { 
        return URL(string: "http://localhost:3000/v1/bff/categories/3")
    }
    
}
