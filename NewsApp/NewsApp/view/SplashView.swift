//
//  SplashView.swift
//  NewsApp
//
//  Created by Luis Felipe on 2024-02-11.
//

import SwiftUI
import SDWebImageSwiftUI

struct SplashView: View {
    @State var isActive : Bool = false
    @State private var size = 0.2
    @State private var opacity = 0.4
    
    
    var body: some View {
        
       
            if isActive {
                MainView()
            }
            else {
                VStack {
                    VStack {
                        AnimatedImage(name: "news_splash.gif")
                            .resizable()
                            .scaledToFit()
                            .onAppear {
                                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                                    withAnimation {
                                        self.isActive = true
                                    }
                                }
                            }
                    }
                    .scaleEffect(size)
                    .opacity(opacity)
                    .onAppear {
                        withAnimation(.easeIn(duration: 1.2)) {
                            self.size = 0.6
                            self.opacity = 1.00
                        }
                    }
                }
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                        withAnimation {
                            self.isActive = true
                        }
                    }
                }
            }
    }
}

#Preview {
    SplashView()
}
