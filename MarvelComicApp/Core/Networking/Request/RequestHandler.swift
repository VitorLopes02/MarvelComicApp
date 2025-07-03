//
//  RequestHandler.swift
//  MarvelComicApp
//
//  Created by VITOR ANDRADE LOPES on 01/07/25.
//

import Foundation

class RequestHandler {
    let baseURL = "https://gateway.marvel.com"
    let privateKey = "ajustar no xxconfig"
    let publicKey = "ajustar no xxconfig"

    
    func getCharacters() -> URLRequest {
        let endpoint = "/v1/public/characters"
        let url = baseURL + endpoint
        
        let request = URLRequest(url: URL(string: url)!)
        return request
    }
    
    private func buildQuery() -> String {
        let timeStamp = Date().timeIntervalSince1970
        
        var queryString = "?ts=\(timeStamp)&apikey=\(publicKey)&hash=\(buildHashToken(timestamp: timeStamp))"
        return queryString
    }
    
    private func buildHashToken(timestamp: TimeInterval) -> String {
        let unHashString = "\(timestamp)" + privateKey + publicKey
        return MD5(string: unHashString)
    }
}
