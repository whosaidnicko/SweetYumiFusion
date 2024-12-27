//
//  LoadingView.swift
//  SweetYumiFusion
//
//  Created by Nicolae Chivriga on 26/12/2024.
//

import SwiftUI


struct LoadingView: View {
    @EnvironmentObject private var navigationManager: RootManager
    @State var animationGoing: Bool = false
    var body: some View {
        VStack {
            Image("logotip")
            
            ZStack {
                Circle()
                    .trim(from: 0, to: 0.85)
                    .stroke(Color.white,lineWidth: 3)
                    .frame(width: 40, height: 40)
                    
                        Circle()
                            .trim(from: 0, to: animationGoing ? 1 : 0)
                            .fill(Color.white)
                            .frame(width: 40, height: 40)
                    
            }
                .rotationEffect(.degrees(animationGoing ? 1080 : 0))
        }
        .onAppear() {
            withAnimation(Animation.linear(duration: 3.2)) {
                animationGoing = true
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 3.2) {
                navigationManager.changeView(.menu)
            }
        }
    }
}
