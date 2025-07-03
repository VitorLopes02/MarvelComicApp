//
//  Environment.swift
//  MarvelComicApp
//
//  Created by VITOR ANDRADE LOPES on 03/07/25.
//

import Foundation

enum Environment {
    static var baseURL: String {
        return Bundle.main.object(forInfoDictionaryKey: "BASE_URL") as? String ?? ""
    }
    
    static var publicKey: String {
        return Bundle.main.object(forInfoDictionaryKey: "API_PUBLIC_KEY") as? String ?? ""
    }
    
    static var privateKey: String {
        return Bundle.main.object(forInfoDictionaryKey: "API_PRIVATE_KEY") as? String ?? ""
    }
}
