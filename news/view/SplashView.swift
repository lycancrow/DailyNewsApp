//
//  SplashView.swift
//  NewsApp
//
//  Created by Luis Felipe on 2024-02-11.
//



import SwiftUI


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
                    LottieAnimationView(filename: "globe_news", loopMode: .loop)
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
