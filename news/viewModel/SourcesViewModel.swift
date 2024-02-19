//
//  SourcesViewModel.swift
//  news
//
//  Created by Luis Felipe on 2024-02-19.
//

import Foundation
import Alamofire


class SourcesViewModel : ObservableObject{
    @Published var sourcesList: [NewsSourcesModel] = []
    
    init() {
        fetchSources()
    }
    
    func fetchSources(){
        
        ApiModule.shared.getNewsSources{ result in
            switch result {
            case .success(let sources):
                DispatchQueue.main.async {
                    self.sourcesList = sources
                }
            case .failure(let error):
                print("Error: \(error)")
            }
        }
    }
    
}


