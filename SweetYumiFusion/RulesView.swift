//
//  RulesView.swift
//  SweetYumiFusion
//
//  Created by Nicolae Chivriga on 26/12/2024.
//

import SwiftUI

struct RulesView: View {
    @EnvironmentObject private var navigationManager: RootManager
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Button {
                        navigationManager.changeView(.menu)
                    } label: {
                        Image("back")
                    }
                    Spacer()
                }
                Spacer()
            }
            .padding()
            Image("ruleImg")
                
                    Text("""
Your goal is to place three elements of the same kind next to each other. Then the three elements will be merged and upgraded to the next one. Whenever you have reached 🎂 you won the round.
Note: In order to place a new object, touch on an empty field. The upcoming tile is shown on the top (sample).
""")
                    .font(.system(size: 15, weight: .semibold, design: .serif))
                    .foregroundColor(.white)
                    .padding(.top, 50)
                    .padding(.horizontal, 70)
                
        }
    }
}
