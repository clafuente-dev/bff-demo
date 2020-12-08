//
//  Category.swift
//  Bff-demo
//
//  Created by Constanza on 03-12-20.
//
// Puting types to the json's properties
import Foundation

struct PayloadContent: Decodable {
    let message: String
    let info: [Category]
}

struct CategoryPayload: Decodable {
    let payload: PayloadContent
}

struct Category: Decodable { // A type that can decode itself from an external representation. We're just getting/typifying json that needs to be mapped
    let id: Int
    let name: String
    let hasChildren: Bool
    let url: String
    let children: [Category]
    let title: String
    let metaTagDescription: String
    
    private enum CodingKeys: String, CodingKey {
        case id
        case name
        case hasChildren
        case url
        case children
        case title = "Title"
        case metaTagDescription = "MetaTagDescription"
    }
}
