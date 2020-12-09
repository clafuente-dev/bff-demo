//
//  CategoryListView.swift
//  Bff-demo
//
//  Created by Constanza on 08-12-20.
//

import SwiftUI

struct CategoryListView: View {
    
    let categories: [CategoryViewModel]
    
    var body: some View {
        List(self.categories, id: \.id) { category in
            Text(category.name)
            
            
        }
    }
}
