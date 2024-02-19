//
//  Sources.swift
//  news
//
//  Created by Luis Felipe on 2024-02-18.
//

import SwiftUI

struct Sources: View {
    @ObservedObject var viewModel = SourcesViewModel()
    var body: some View {
        VStack{
            
            List(viewModel.sourcesList.flatMap { $0.sources}, id: \.url) { sources in
                Link(destination: URL(string: sources.url)!) {
                    VStack {
                        Spacer()
                        Text(sources.name).bold().font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).foregroundColor(.red)
                        Spacer()
                        
                        Text(sources.description)
                            .font(Font.custom("Roboto-Medium", size: 24))
                            .foregroundColor(Color.black)
                    }
                }
                .listRowBackground(Color.backgroundLayout)
            }
            .scrollContentBackground(.hidden)
            .listStyle(GroupedListStyle())
        }.background(Color.backgroundLayout.ignoresSafeArea())
    }
}

#Preview {
    Sources()
}
