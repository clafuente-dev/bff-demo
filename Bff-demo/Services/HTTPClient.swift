//
//  HTTPClient.swift
//  Bff-demo
//
//  Created by Constanza on 03-12-20.
//

import Foundation

enum NetWorkErrors: Error {
    case badURL
    case noData
    case decodingError
}

class HTTPClient {
    func fetchCategories(completion: @escaping (Result<[Category], NetWorkErrors>) -> Void) {
    
        guard let url = URL.forCategoriesByName() else {
            return completion(.failure(.badURL))
        }
    
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
    
        URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data, error == nil else {
                return completion(.failure(.noData))
            }
        
            guard let categoryResponse = try? JSONDecoder().decode(CategoryPayload.self, from: data) else {
                // try? in the case that this fails returns a nil
                return completion(.failure(.decodingError))
            }
        
            completion(.success(categoryResponse.payload.info))
        }.resume()
    }
}
