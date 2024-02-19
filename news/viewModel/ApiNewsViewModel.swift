//
//  ApiNewsViewModel.swift
//  NewsApp
//
//  Created by Luis Felipe on 2024-02-11.
//

import Foundation
import Alamofire

class ApiNewsViewModel : ObservableObject{
    
    @Published var newsList: [NewsModel] = []

    init() {
        fetchNews()
    }

    func fetchNews() {
        ApiModule.shared.getNews{ result in
            switch result {
            case .success(let news):
                DispatchQueue.main.async {
                    self.newsList = news
                }
            case .failure(let error):
                print("Error: \(error)")
            }
        }
    }
    
    
    
    func fetchNewsByCategory(categories: String) {
        ApiModule.shared.searchNews(for: categories){ result in
            switch result {
            case .success(let news):
                DispatchQueue.main.async {
                    self.newsList = news
                }
            case .failure(let error):
                print("Error: \(error)")
            }
        }
    }
    
    
}
