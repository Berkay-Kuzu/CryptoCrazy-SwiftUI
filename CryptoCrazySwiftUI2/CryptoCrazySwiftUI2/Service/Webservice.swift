//
//  Webservice.swift
//  CryptoCrazySwiftUI2
//
//  Created by Berkay Kuzu on 23.09.2022.
//

import Foundation


class Webservice {

    
    func downloadCurrenciesAsync(url: URL) async throws -> [CryptoCurrency] {
        
        let (data, _ ) = try await  URLSession.shared.data(from: url)
        
        let currencies = try? JSONDecoder().decode([CryptoCurrency].self, from: data)
        
        return currencies  ?? []
    }

    }


enum DownloaderError : Error {
    case badUrl 
    case noData
    case dateParseError
}
