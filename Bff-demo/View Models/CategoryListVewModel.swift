//
//  CategoryListVewModel.swift
//  Bff-demo
//
//  Created by Constanza on 08-12-20.
//

import Foundation
import SwiftUI

class CategoryListViewModel: ObservableObject { //
    
   @Published var categories: [CategoryViewModel] = []
    
    let httpClient = HTTPClient()
    
    func getByName(_ name: String) {
        HTTPClient().fetchCategories(completion: { result in
            switch result {
            case .success(let categories):
                DispatchQueue.main.async {
                    self.categories = categories.map(CategoryViewModel.init)
                }
                
                    
                case .failure(let error):
                    print(error.localizedDescription)
            }
        })
    }
}

// this will provide data to the View so it can display the categories
struct CategoryViewModel { // I expose here only the data that I want to view
    
    let category: Category
    
    var id: Int {
        category.id
    }
    
    var name: String {
        category.name
    }
    
//    var names: Array<String> {
//
//    }
    
//    func loadCategories() {
//        HTTPClient().fetchCategories(completion: { result in
//            switch result {
//            case .success(let categories):
//            case .failure(let error):
//                print(error.localizedDescription)
//            }
//        })
//    }
    
    
    
    
}
