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
        //  AF.request("https://newsapi.org/v2/top-headlines?country=ca&apiKey=b99255752a9040ae94c12255d5d26147")
            AF.request("https://newsapi.org/v2/everything?domains=techcrunch.com,thenextweb.com&apiKey=b99255752a9040ae94c12255d5d26147")
                .validate()
                .responseJSON { response in
                    switch response.result {
                    case .success(let value):
                        do {
                            guard let data = response.data else {
                                completion(.failure(NSError(domain: "", code: -1, userInfo: [NSLocalizedDescriptionKey: "Data is empty"])))
                                return
                            }
                            let decoder = JSONDecoder()
                            decoder.keyDecodingStrategy = .convertFromSnakeCase
                            let newsModel = try decoder.decode(NewsModel.self, from: data)
                            completion(.success([newsModel]))
                        } catch {
                            completion(.failure(error))
                        }
                    case .failure(let error):
                        completion(.failure(error))
                    }
                }
        }
    
    
    func getNewsSources(completion: @escaping (Result<[NewsSourcesModel], Error>) -> Void) {
            AF.request("https://newsapi.org/v2/top-headlines/sources?apiKey=b99255752a9040ae94c12255d5d26147")
                .validate()
                .responseJSON { response in
                    switch response.result {
                    case .success(let value):
                        do {
                            guard let data = response.data else {
                                completion(.failure(NSError(domain: "", code: -1, userInfo: [NSLocalizedDescriptionKey: "Data is empty"])))
                                return
                            }
                            let decoder = JSONDecoder()
                            decoder.keyDecodingStrategy = .convertFromSnakeCase
                            let newsSourcesModel = try decoder.decode(NewsSourcesModel.self, from: data)
                            completion(.success([newsSourcesModel]))
                        } catch {
                            completion(.failure(error))
                        }
                    case .failure(let error):
                        completion(.failure(error))
                    }
                }
        }
    
    
    
  
    
    func searchNews(for searchNews: String, completion: @escaping (Result<[NewsModel], Error>) -> Void) {
         AF.request("https://newsapi.org/v2/everything?q=\(searchNews)&apiKey=b99255752a9040ae94c12255d5d26147")
            .validate()
            .responseJSON { response in
                switch response.result {
                case .success(let value):
                    do {
                        guard let data = response.data else {
                            completion(.failure(NSError(domain: "", code: -1, userInfo: [NSLocalizedDescriptionKey: "Data is empty"])))
                            return
                        }
                        let decoder = JSONDecoder()
                        decoder.keyDecodingStrategy = .convertFromSnakeCase
                        let newsModel = try decoder.decode(NewsModel.self, from: data)
                        completion(.success([newsModel]))
                    } catch {
                        completion(.failure(error))
                    }
                case .failure(let error):
                    completion(.failure(error))
                }
            }
    
    }
    
}



