//
//  ApiNewsViewModel.swift
//  NewsApp
//
//  Created by Luis Felipe on 2024-02-11.
//

import Foundation
import Alamofire

class ApiNewsViewModel : ObservableObject{
    
    @Published var users: [NewsModel] = []

    init() {
        fetchNews()
    }

    func fetchNews() {
        ApiModule.shared.getNews{ result in
            switch result {
            case .success(let news):
                DispatchQueue.main.async {
                    self.users = news
                }
            case .failure(let error):
                print("Error: \(error)")
            }
        }
    }
    
    
    
}
