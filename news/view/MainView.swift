//
//  MainView.swift
//  NewsApp
//
//  Created by Luis Felipe on 2024-02-11.
//

import SwiftUI


struct MainView: View {
    
    @State var openMenu = false
    @ObservedObject var viewModel = ApiNewsViewModel()
    @State private var textCategory: String = ""
    
    var body: some View {
        
        NavigationView{
        ZStack{
            
            
            Color.backgroundLayout.ignoresSafeArea()
            
            
            Text(" About App ").font(Font.custom("Times", size: 30)).bold().background(Color.goldenText).cornerRadius(10)
                .position(x: UIScreen.main.bounds.width * 0.21, y: UIScreen.main.bounds.height * 0.05)
            
            Text("Sources").font(Font.custom("Times", size: 30)).bold()
                .position(x: UIScreen.main.bounds.width * 0.15, y: UIScreen.main.bounds.height * 0.09)
            
            
            Group{
                Text("The").multilineTextAlignment(.trailing).font(Font.custom("Chomsky", size: 50)).bold()
                    .position(x: UIScreen.main.bounds.width * 0.85, y: UIScreen.main.bounds.height * 0.05)
                
                Text("News app").multilineTextAlignment(.trailing).font(Font.custom("Chomsky", size: 50)).bold()
                    .position(x: UIScreen.main.bounds.width * 0.73, y: UIScreen.main.bounds.height * 0.10)
            }
           
            
            VStack {
                Divider()
                    .background(Color.black)
                    .padding(.horizontal)
                Divider()
                    .background(Color.black)
                    .padding(.horizontal)
                Divider()
                    .background(Color.black)
                    .padding(.horizontal)
            }.position(x: UIScreen.main.bounds.width * 0.5, y: UIScreen.main.bounds.height * 0.14)
            
            
            
            TextField("Search Category",text: $textCategory).padding(.horizontal, 16)
                .padding(.vertical, 16)
                .background(Color.white)
                .cornerRadius(10)
                .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
                .font(Font.custom("Times", size: 28))
                .position(x: UIScreen.main.bounds.width * 0.5, y: UIScreen.main.bounds.height * 0.21)
            
         
            
            ScrollView(.horizontal){
                HStack{
                    Group{
                        Spacer()
                        VStack{
                            
                            LottieViewNewsAnimation(name:"globe_news",loopMode: .loop)
                            Text("Sports").font(Font.custom("Times", size: 28))
                            
                            
                        }.frame(width: UIScreen.main.bounds.width * 0.3, height: UIScreen.main.bounds.height * 0.14)
                            .background(Color.white)
                            .cornerRadius(20)
                            .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
                        Spacer()
                        VStack{
                            LottieViewNewsAnimation(name:"globe_news",loopMode: .loop)
                            Text("Sports").font(Font.custom("Times", size: 28))
                        }.frame(width: UIScreen.main.bounds.width * 0.3, height: UIScreen.main.bounds.height * 0.14)
                            .background(Color.white)
                            .cornerRadius(20)
                            .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
                        Spacer()
                        VStack{
                            LottieViewNewsAnimation(name:"globe_news",loopMode: .loop)
                            Text("Sports").font(Font.custom("Times", size: 28))
                        }.frame(width: UIScreen.main.bounds.width * 0.3, height: UIScreen.main.bounds.height * 0.14)
                            .background(Color.white)
                            .cornerRadius(20)
                            .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
                        Spacer()
                        VStack{
                            LottieViewNewsAnimation(name:"globe_news",loopMode: .loop)
                            Text("Sports").font(Font.custom("Times", size: 28))
                        }.frame(width: UIScreen.main.bounds.width * 0.3, height: UIScreen.main.bounds.height * 0.14)
                            .background(Color.white)
                            .cornerRadius(20)
                            .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
                        Spacer()
                        VStack{
                            LottieViewNewsAnimation(name:"globe_news",loopMode: .loop)
                            Text("Sports").font(Font.custom("Times", size: 28))
                        }.frame(width: UIScreen.main.bounds.width * 0.3, height: UIScreen.main.bounds.height * 0.14)
                            .background(Color.white)
                            .cornerRadius(20)
                            .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
                        Spacer()
                        VStack{
                            LottieViewNewsAnimation(name:"globe_news",loopMode: .loop)
                            Text("Sports").font(Font.custom("Times", size: 28))
                        }.frame(width: UIScreen.main.bounds.width * 0.3, height: UIScreen.main.bounds.height * 0.14)
                            .background(Color.white)
                            .cornerRadius(20)
                            .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
                        Spacer()
                        VStack{
                            LottieViewNewsAnimation(name:"globe_news",loopMode: .loop)
                            Text("Sports").font(Font.custom("Times", size: 28))
                        }.frame(width: UIScreen.main.bounds.width * 0.3, height: UIScreen.main.bounds.height * 0.14)
                            .background(Color.white)
                            .cornerRadius(20)
                            .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
                        Spacer()
                        VStack{
                            LottieViewNewsAnimation(name:"globe_news",loopMode: .loop)
                            Text("Sports").font(Font.custom("Times", size: 28))
                        }.frame(width: UIScreen.main.bounds.width * 0.3, height: UIScreen.main.bounds.height * 0.14)
                            .background(Color.white)
                            .cornerRadius(20)
                            .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
                        Spacer()
                        VStack{
                            LottieViewNewsAnimation(name:"globe_news",loopMode: .loop)
                            Text("Sports").font(Font.custom("Times", size: 28))
                        }.frame(width: UIScreen.main.bounds.width * 0.3, height: UIScreen.main.bounds.height * 0.14)
                            .background(Color.white)
                            .cornerRadius(20)
                            .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
                        Spacer()
                        VStack{
                            LottieViewNewsAnimation(name:"globe_news",loopMode: .loop)
                            Text("Sports").font(Font.custom("Times", size: 28))
                        }.frame(width: UIScreen.main.bounds.width * 0.3, height: UIScreen.main.bounds.height * 0.14)
                            .background(Color.white)
                            .cornerRadius(20)
                            .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 2)
                        
                        Spacer()
                    }
                }
            }
            .position(x: UIScreen.main.bounds.width * 0.5, y: UIScreen.main.bounds.height * 0.34)
            
            
            
            
            
        }
    }
        
    }
    
    
}

#Preview {
    MainView()
}
