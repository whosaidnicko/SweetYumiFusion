//
//  GameView.swift
//  SweetYumiFusion
//
//  Created by Nicolae Chivriga on 26/12/2024.
//

import SwiftUI


struct GameView: View {
    @EnvironmentObject private var navigationManager: RootManager
    @State var animationRepeating: Bool = false
    var body: some View {
        ZStack {
            Image("logotip")
                .scaleEffect(animationRepeating ? 1 : 0.8)
            VStack {
                HStack {
                    Button {
                        navigationManager.changeView(.menu)
                    } label: {
                        Image("back")
                    }
                    Spacer()
                }
                .padding(.horizontal)
                
            
                
                WKWebViewRepresentable(url: URL(string: "https://plays.org/game/yummi-fusion/")!, onLoadCompletion: {
                })

            }
            
        }
        .onAppear() {
            withAnimation(Animation.linear(duration: 2).repeatForever()) {
                animationRepeating = true
            }
        }
    }
}
