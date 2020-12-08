//
//  ContentView.swift
//  Bff-demo
//
//  Created by Constanza on 03-12-20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
        
        // TODO: to be deleted once the httpclient is tested
        .onAppear {
            HTTPClient().fetchCategories(completion: { result in
                switch result {
                case .success(let categories):
                    print(categories)
                case .failure(let error):
                    print(error.localizedDescription)
                }
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
