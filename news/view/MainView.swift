//
//  MainView.swift
//  NewsApp
//
//  Created by Luis Felipe on 2024-02-11.
//

import SwiftUI
import Lottie






struct MainView: View {
    
    @State var openMenu = false
    @ObservedObject var viewModel = ApiNewsViewModel()
    @State private var textCategory: String = ""
    
    var body: some View {
        
        NavigationView {
            
                ZStack{
                    Color.backgroundLayout.ignoresSafeArea()
                    
                    
                    
                    
                    NavigationLink(destination: AboutApp(), label: {
                        Text(" About App ").font(Font.custom("Times", size: 30)).bold().foregroundColor(Color.black).background(Color.goldenText).cornerRadius(8)
                    }).position(x: UIScreen.main.bounds.width * 0.21, y: UIScreen.main.bounds.height * 0.05)
                    
                    
                    
                    
                    NavigationLink(destination: Sources(), label: {
                        Text("Sources").font(Font.custom("Times", size: 30)).bold().foregroundColor(Color.black).cornerRadius(8)
                    }).position(x: UIScreen.main.bounds.width * 0.15, y: UIScreen.main.bounds.height * 0.09)
                    
                    
                    
                    Group{
                        Text("The").multilineTextAlignment(.trailing).font(Font.custom("Chomsky", size: 50)).bold()
                            .position(x: UIScreen.main.bounds.width * 0.85, y: UIScreen.main.bounds.height * 0.05)
                        
                        Text("News app").multilineTextAlignment(.trailing).font(Font.custom("Chomsky", size: 50)).bold()
                            .position(x: UIScreen.main.bounds.width * 0.73, y: UIScreen.main.bounds.height * 0.10)
                    }
                    
                    
                    VStack (spacing: 3){
                        Divider()
                            .background(Color.black)
                            .padding(.horizontal,2)
                        Divider()
                            .background(Color.black)
                            .padding(.horizontal,2)
                        Divider()
                            .background(Color.black)
                            .padding(.horizontal,2)
                    }.position(x: UIScreen.main.bounds.width * 0.5, y: UIScreen.main.bounds.height * 0.14)
                    
                    
                    
                    HStack{
                        TextField("Search Category",text: $textCategory).padding(.horizontal, 16)
                            .padding(.vertical, 16)
                            .background(Color.white)
                            .cornerRadius(10)
                            .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
                            .font(Font.custom("Times", size: 28))
                        
                        
                        
                        Button(action: {
                            viewModel.fetchNewsByCategory(categories: textCategory)
                            
                            
                        }, label: {
                            Image(systemName: "magnifyingglass").font(.system(size: 30)).foregroundColor(.black)
                            
                        })
                        
                        Spacer()
                        
                    }.position(x: UIScreen.main.bounds.width * 0.5, y: UIScreen.main.bounds.height * 0.19)
                    
                    
                    
                    ScrollView(.horizontal) {
                        HStack {
                            Spacer()
                            
                            Button(action: {
                                viewModel.fetchNewsByCategory(categories: "sports")
                            }, label: {
                                
                                HStack{
                                    Image(systemName: "tennis.racket").font(.system(size: 30)).foregroundColor(.black)
                                    Text("Sports").font(Font.custom("Times", size: 28)).foregroundColor(Color.black)
                                }.frame(width: UIScreen.main.bounds.width * 0.45, height: UIScreen.main.bounds.height * 0.05)
                                    .background(Color.white)
                                    .cornerRadius(20)
                                    .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
                                
                            })
                            
                            
                            Spacer()
                            
                            Button(action: {
                                viewModel.fetchNewsByCategory(categories: "politics")
                            }, label: {
                                HStack{
                                    Image(systemName: "person.2.wave.2.fill").font(.system(size: 30)).foregroundColor(.black)
                                    Text("Politcs").font(Font.custom("Times", size: 28)).foregroundColor(Color.black)
                                }.frame(width: UIScreen.main.bounds.width * 0.45, height: UIScreen.main.bounds.height * 0.05)
                                    .background(Color.white)
                                    .cornerRadius(20)
                                    .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
                            })
                            
                            
                            
                            
                            Spacer()
                            
                            Button(action: {
                                viewModel.fetchNewsByCategory(categories: "technology")
                            }, label: {
                                HStack{
                                    Image(systemName: "cursorarrow.motionlines").font(.system(size: 30)).foregroundColor(.black)
                                    Text("Tech").font(Font.custom("Times", size: 28)).foregroundColor(Color.black)
                                }.frame(width: UIScreen.main.bounds.width * 0.45, height: UIScreen.main.bounds.height * 0.05)
                                    .background(Color.white)
                                    .cornerRadius(20)
                                    .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
                                
                            })
                            
                            
                            Spacer()
                            
                            Button(action: {
                                viewModel.fetchNewsByCategory(categories: "health")
                            }, label: {
                                HStack{
                                    Image(systemName: "heart.fill").font(.system(size: 30)).foregroundColor(.black)
                                    Text("Health").font(Font.custom("Times", size: 28)).foregroundColor(Color.black)
                                }.frame(width: UIScreen.main.bounds.width * 0.45, height: UIScreen.main.bounds.height * 0.05)
                                    .background(Color.white)
                                    .cornerRadius(20)
                                    .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
                            })
                            
                            
                            
                            Spacer()
                            
                            
                            Button(action: {
                                viewModel.fetchNewsByCategory(categories: "fashion")
                            }, label: {
                                HStack{
                                    Image(systemName: "handbag.fill").font(.system(size: 30)).foregroundColor(.black)
                                    Text("Fahion").font(Font.custom("Times", size: 28)).foregroundColor(Color.black)
                                }.frame(width: UIScreen.main.bounds.width * 0.45, height: UIScreen.main.bounds.height * 0.05)
                                    .background(Color.white)
                                    .cornerRadius(20)
                                    .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
                            })
                            
                            
                            
                            Spacer()
                            
                            
                            Button(action:{
                                viewModel.fetchNewsByCategory(categories: "art")
                            }, label:{
                                HStack{
                                    Image(systemName: "photo.artframe").font(.system(size: 30)).foregroundColor(.black)
                                    Text("Art").font(Font.custom("Times", size: 28)).foregroundColor(Color.black)
                                }.frame(width: UIScreen.main.bounds.width * 0.45, height: UIScreen.main.bounds.height * 0.05)
                                    .background(Color.white)
                                    .cornerRadius(20)
                                    .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
                            })
                            
                            
                            
                            Spacer()
                            
                            
                            Button(action: {
                                viewModel.fetchNewsByCategory(categories: "world")
                            }, label: {
                                HStack{
                                    Image(systemName: "globe.americas.fill").font(.system(size: 30)).foregroundColor(.black)
                                    Text("World").font(Font.custom("Times", size: 28)).foregroundColor(Color.black)
                                }.frame(width: UIScreen.main.bounds.width * 0.45, height: UIScreen.main.bounds.height * 0.05)
                                    .background(Color.white)
                                    .cornerRadius(20)
                                    .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
                            })
                            
                            
                            
                            Spacer()
                            
                            
                            Button(action: {
                                viewModel.fetchNewsByCategory(categories: "opinion")
                            }, label: {
                                HStack{
                                    Image(systemName: "figure.wave").font(.system(size: 30)).foregroundColor(.black)
                                    Text("Opinion").font(Font.custom("Times", size: 28)).foregroundColor(Color.black)
                                }.frame(width: UIScreen.main.bounds.width * 0.45, height: UIScreen.main.bounds.height * 0.05)
                                    .background(Color.white)
                                    .cornerRadius(20)
                                    .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
                            })
                            
                            
                            
                            Spacer()
                            
                            Button(action: {
                                viewModel.fetchNewsByCategory(categories: "economy")
                            }, label: {
                                HStack{
                                    Image(systemName: "arrow.down.left.arrow.up.right").font(.system(size: 30)).foregroundColor(.black)
                                    Text("Economy").font(Font.custom("Times", size: 28)).foregroundColor(Color.black)
                                }.frame(width: UIScreen.main.bounds.width * 0.45, height: UIScreen.main.bounds.height * 0.05)
                                    .background(Color.white)
                                    .cornerRadius(20)
                                    .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
                                
                            })
                            
                            
                            
                            Spacer()
                            
                            
                            Button(action: {
                                viewModel.fetchNewsByCategory(categories: "movies")
                            }, label: {
                                HStack{
                                    Image(systemName: "tv").font(.system(size: 30)).foregroundColor(.black)
                                    Text("Cinema").font(Font.custom("Times", size: 28)).foregroundColor(Color.black)
                                }.frame(width: UIScreen.main.bounds.width * 0.45, height: UIScreen.main.bounds.height * 0.05)
                                    .background(Color.white)
                                    .cornerRadius(20)
                                    .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
                            })
                            
                            
                            
                            
                            Spacer()
                            
                        }
                    }
                    .frame(height: UIScreen.main.bounds.height * 0.1)
                    .position(x: UIScreen.main.bounds.width * 0.5, y: UIScreen.main.bounds.height * 0.27)
                    
                    
                    VStack {
                                        if viewModel.newsList.flatMap({ $0.articles }).isEmpty {
                                            
                                            
                                            LottieViewNewsAnimation(name: "no_data_available")
                                                .position(x: UIScreen.main.bounds.width * 0.5, y: UIScreen.main.bounds.height * 0.6)
                                        } else {
                                            // Mostrar la lista si hay datos disponibles
                                            List(viewModel.newsList.flatMap { $0.articles }, id: \.url) { article in
                                                Link(destination: URL(string: article.url)!) {
                                                    VStack {
                                                        if let author = article.author {
                                                            HStack {
                                                                Text("\(author):")
                                                                    .font(Font.custom("Times", size: 24))
                                                                    .foregroundColor(Color.red)
                                                                    .bold()
                                                                Spacer()
                                                            }
                                                        }
                                                        
                                                        if let urlToImage = article.urlToImage {
                                                            Image(urlToImage)
                                                        }
                                                        
                                                        Text(article.title)
                                                            .font(Font.custom("Roboto-Medium", size: 24))
                                                            .foregroundColor(Color.black)
                                                    }
                                                }
                                                .listRowBackground(Color.backgroundLayout)
                                            }
                                            .scrollContentBackground(.hidden)
                                            .listStyle(GroupedListStyle())
                                            .position(x: UIScreen.main.bounds.width * 0.5, y: UIScreen.main.bounds.height * 0.76)
                                        }
                                    }
                                    .onAppear {
                                        viewModel.fetchNews()
                                    }
                    
                }
            
            
        }.background(Color.blue)
    }
}





#Preview {
    MainView()
}

