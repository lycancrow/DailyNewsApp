//
//  SplashView.swift
//  NewsApp
//
//  Created by Luis Felipe on 2024-02-11.
//



import SwiftUI
import Lottie

struct SplashView: View {
    @State var isActive : Bool = false
    @State private var size = 0.2
    @State private var opacity = 0.4
    
    
    var body: some View {
       
        ZStack{
            Color.backgroundLayout.ignoresSafeArea()
            
            if isActive {
                MainView()
            }
            else {
                VStack {
                    LottieViewNewsAnimation(name: "globe_news")
                }
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                        withAnimation {
                            self.isActive = true
                        }
                    }
                }
            }
        }
        
    }
}

#Preview {
    SplashView()
}
