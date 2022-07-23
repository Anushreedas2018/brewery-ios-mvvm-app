//
//  BreweryViewModel.swift
//  Breweries
//
//  Created by Anushree Das on 23/07/22.
//

import Foundation

final class BreweryViewModel: ObservableObject {
    
    @Published var breweries: [Brewery] = []
//    @Published var hasError = false
//    @Published var error: BreweryError?
    
    func fetchBrewery() {
//        hasError = false
        let breweryUrl = "https://api.openbrewerydb.org/breweries"
        guard let url = URL(string: breweryUrl) else {
            return
        }
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
        guard let data = data, error == nil else {
                return
            }
            do {
                let breweries = try JSONDecoder().decode([Brewery].self, from: data)
                    DispatchQueue.main.async{
                        self?.breweries = breweries
                        
                    }
                
            }
            catch{
                    print(error)
                
            }
            
        }
                task.resume()
                
    }
}
//                DispatchQueue.main.async {
//
//                    if let error = error {
//
//                        self?.hasError = true
//                        self?.error = BreweryError.custom(error: error)
//                    } else {
//
//                        let decoder = JSONDecoder()
////                        decoder.keyDecodingStrategy = .convertFromSnakeCase
//
//                        if let data = data,
//                           let breweries =
//
//                        } else {
//                            self?.hasError = true
//                            self?.error = BreweryError.failedToDecode
//                        }
//
//                    }
//                }
//
//            }.resume()
//
//        }
//    }
//
//
//}
//
//extension BreweryViewModel {
//    enum BreweryError: LocalizedError {
//        case custom(error: Error)
//        case failedToDecode
//
//        var errorDescription: String? {
//            switch self {
//            case .failedToDecode:
//                return "Failed to decode response"
//            case .custom(let error):
//                return error.localizedDescription
//            }
//        }
//    }
//}
   
