//
//  fetch.swift
//  Jason
//
//  Created by Ramneek Kaur on 2023-06-19.
//

import Foundation

class fetch {
        
        func fetchDataFromAPI(completion: @escaping (Result<Any, Error>) -> Void) {
            // Define the URL for the API endpoint
            let apiUrl = URL(string: "https://www.googleapis.com/books/v1/volumes?q=flowers")!
            
            // Create a URLSession instance
            let session = URLSession.shared
            
            // Create a URLSessionDataTask to make the API call
            let task = session.dataTask(with: apiUrl) { (data, response, error) in
                // Handle the response and error
                if let error = error {
                    completion(.failure(error))
                    return
                }
                
                // Ensure the response contains data
                guard let responseData = data else {
                    let error = NSError(domain: "com.example.api", code: 0, userInfo: [NSLocalizedDescriptionKey: "Empty response data"])
                    completion(.failure(error))
                    return
                }
                
                // Parse the response data, assuming it's JSON
                do {
                    let json = try JSONSerialization.jsonObject(with: responseData, options: [])
                    completion(.success(json))
                } catch {
                    completion(.failure(error))
                }
                
            
            }
            
            // Start the API request
            task.resume()
        }
    }

