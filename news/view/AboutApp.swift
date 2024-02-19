//
//  AboutApp.swift
//  news
//
//  Created by Luis Felipe on 2024-02-18.
//

import SwiftUI
import Lottie

struct AboutApp: View {
    var body: some View {
        ZStack{
            
            Text("The News App").multilineTextAlignment(.trailing).font(Font.custom("Chomsky", size: 50)).bold()
                .position(x: UIScreen.main.bounds.width * 0.5, y: UIScreen.main.bounds.height * 0.05)
            
            
            Text("This app was made by Felipe Cuervo. Find out everything that happens in the world with this app that brings news from different sources.\n\nThe concepts used in this app are: \n\n Alamofire\n SwiftyJSON\n Mvvm Architecture\n Lottie \n  ").multilineTextAlignment(.leading).font(Font.custom("Roboto-Medium", size: 28)).bold()
                .position(x: UIScreen.main.bounds.width * 0.5, y: UIScreen.main.bounds.height * 0.4)
            
            LottieViewNewsAnimation(name: "newpaper_animation")
                .frame(width: 170,height: 200)
                .position(x: UIScreen.main.bounds.width * 0.7, y: UIScreen.main.bounds.height * 0.75)
            
        }.background(Color.backgroundLayout.ignoresSafeArea())
    }
}

#Preview {
    AboutApp()
}
