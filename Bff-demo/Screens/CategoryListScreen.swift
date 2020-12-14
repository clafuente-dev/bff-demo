//
//  CategoryListScreen.swift
//  Bff-demo
//
//  Created by Constanza on 08-12-20.
//

import SwiftUI

struct CategoryListScreen: View {
    
    @ObservedObject private var categoryListVM: CategoryListViewModel
    
    init() {
        self.categoryListVM = CategoryListViewModel()
        self.categoryListVM.getByName("")
    }
    
    var body: some View {
        VStack {
            CategoryListView(categories: self.categoryListVM.categories)
                .padding([.top, .bottom]) // Default padding to Top and Bottom
            Spacer() // Spacer will make the component above to go up
                .navigationBarTitle("App Unimarc")
        }.embedNavigationView()
    }
}

struct CategoryListScreen_Previews: PreviewProvider {
    static var previews: some View {
        CategoryListScreen()
    }
}
