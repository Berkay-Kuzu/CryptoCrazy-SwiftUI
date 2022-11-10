//
//  CryptoViewModel.swift
//  CryptoCrazySwiftUI2
//
//  Created by Berkay Kuzu on 23.09.2022.
//

import Foundation

@MainActor
class CryptoListViewModel : ObservableObject {
    
    @Published var cryptoList = [CryptoViewModel]()
    let webservice = Webservice()
    
    func downloadCryptosAsync(url: URL) async {
        
        do {
            let cryptos = try await webservice.downloadCurrenciesAsync(url: url)
            self.cryptoList = cryptos.map(CryptoViewModel.init)
        } catch {
            print(error)
        }
    }
}


struct CryptoViewModel {
    
    let crypto : CryptoCurrency
 
    var id : UUID? {
        crypto.id
    }
 
    var currency : String {
        crypto.currency
    }
    
    var price : String {
        crypto.price 
    }
    
}
