//
//  NetworkData.swift
//  PhotoGallery
//
//  Created by Леся on 26.06.2021.
//

import Foundation

class NetworkData {
    var networkService = NetworkService()
    
    func fetchImages(searchTerm: String, completion: @escaping (SearchResults?) -> ()) {
        networkService.request(searchTerm: searchTerm) { (data, error) in
            if let error = error {
                print("Error received request data: \(error.localizedDescription)")
                completion(nil)
            }
            
            let decode = self.decodeJSON(type: SearchResults.self, from: data)
            completion(decode)
        }
    }
    //Конвертируем данные которые приходят в JSON формате в модель данных.
    func decodeJSON<T: Decodable>(type: T.Type, from: Data?) -> T? {
        let decoder = JSONDecoder()
        guard let data = from else { return nil }
        
        do {
            let objects = try decoder.decode(type.self, from: data)
            return objects
        } catch let jsonError{
            print("Failed to decode", jsonError)
            return nil
        }
    }
}
