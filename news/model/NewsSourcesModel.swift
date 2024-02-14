//
//  NewsSourcesModel.swift
//  NewsApp
//
//  Created by Luis Felipe on 2024-02-11.
//

import Foundation

struct NewsSourcesModel : Codable {
    let status: String
    let sources: [NewsSource]
}

struct NewsSource: Codable {
    let id: String
    let name: String
    let description: String
    let url: String
    let category: String
    let language: String
    let country: String
}

