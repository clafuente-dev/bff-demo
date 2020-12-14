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
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(categories, id: \.id) { category in
                    Button(category.name) {
                        print("Click On: \(category.name)")
                    }
                    .padding(10)             // 10 point padding in 4 directions
                    .background(Color.red)
                    .cornerRadius(45/2)      // Divide height 45/2 = 22.5
                    .foregroundColor(.white) // Font color or default color
                }
                .frame(height: 45)           // The button container has a height of 45 points
            }
        }
    }
}

struct CategoryListView_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
