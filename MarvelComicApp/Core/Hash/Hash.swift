//
//  Hash.swift
//  MarvelComicApp
//
//  Created by VITOR ANDRADE LOPES on 03/07/25.
//

import Foundation
import CommonCrypto

import Foundation
import CommonCrypto

func MD5(string: String) -> String {
    guard let strData = string.data(using: .utf8) else { return "" }

    var digest = [UInt8](repeating: 0, count: Int(CC_MD5_DIGEST_LENGTH))

    strData.withUnsafeBytes { rawBufferPointer in
        guard let baseAddress = rawBufferPointer.baseAddress else { return }
        _ = CC_MD5(baseAddress, CC_LONG(strData.count), &digest)
    }

    return digest.map { String(format: "%02x", $0) }.joined()
}
