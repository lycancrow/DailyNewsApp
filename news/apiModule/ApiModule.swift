//
//  ApiModel.swift
//  NewsApp
//
//  Created by Luis Felipe on 2024-02-11.
//

import Foundation
import Alamofire

class ApiModule {
    static let shared = ApiModule()

    private init() {}

    func getNews(completion: @escaping (Result<[NewsModel], Error>) -> Void) {
        AF.request("https://newsapi.org/v2/top-headlines?country=ca&apiKey=b99255752a9040ae94c12255d5d26147")
            .validate()
            .responseDecodable(of: [NewsModel].self) { response in
                switch response.result {
                case .success(let news):
                    completion(.success(news))
                case .failure(let error):
                    completion(.failure(error))
                }
            }
    }
    
    
    
    func getNewsSources(completion: @escaping (Result<[NewsSourcesModel], Error>) -> Void) {
        AF.request("https://newsapi.org/v2/top-headlines/sources?apiKey=b99255752a9040ae94c12255d5d26147")
            .validate()
            .responseDecodable(of: [NewsSourcesModel].self) { response in
                switch response.result {
                case .success(let news):
                    completion(.success(news))
                case .failure(let error):
                    completion(.failure(error))
                }
            }
    }
    
    

    
    func searchNews(for searchNews: String, completion: @escaping (Result<[NewsModel], Error>) -> Void) {
        let urlString = "https://newsapi.org/v2/everything?q=\(searchNews)&apiKey=b99255752a9040ae94c12255d5d26147"
        
        AF.request(urlString)
            .validate()
            .responseDecodable(of: [NewsModel].self) { response in
                switch response.result {
                case .success(let news):
                    completion(.success(news))
                case .failure(let error):
                    completion(.failure(error))
                }
            }
    }

    
    
}
