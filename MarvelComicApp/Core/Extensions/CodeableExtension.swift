//
//  CodeableExtension.swift
//  MarvelComicApp
//
//  Created by VITOR ANDRADE LOPES on 01/07/25.
//

import Foundation

extension JSONDecoder{
    
   func decoderWithURLString<T: Decodable> (_ type: T.Type, fromURL url: String, completion: @escaping (Result<T, Error>) -> Void){
        let url = URL(string: url)
        URLSession.shared.dataTask(with: url!) { (data, response, error) in
            if let data = data{
                do {
                    print(String(data: data, encoding: .utf8)!)
                    let decode = JSONDecoder()
                    let result = try decode.decode(type, from: data)
                    completion(.success(result))
                } catch let error{
                    completion(.failure(error))
                }
            }
            
        }.resume()
    }
    
    func decoderWithRequest<T: Decodable> (_ type: T.Type, fromURLRequest urlRequest: URLRequest , completion: @escaping (Result<T, Error>) -> Void){
        URLSession.shared.dataTask(with: urlRequest) { (data, response, error) in
            if let data = data{
                do {
                    print(String(data: data, encoding: .utf8)!)
                    let decode = JSONDecoder()
                    let result = try decode.decode(type, from: data)
                    completion(.success(result))
                } catch let error{
                    completion(.failure(error))
                }
            }
        }.resume()
    }
}
