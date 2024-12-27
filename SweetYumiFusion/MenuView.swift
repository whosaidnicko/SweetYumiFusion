//
//  MenuView.swift
//  SweetYumiFusion
//
//  Created by Nicolae Chivriga on 26/12/2024.
//

import SwiftUI

struct MenuView: View {
    @EnvironmentObject var rootManager: RootManager
    var body: some View {
        VStack {
           Image("logotip")
            
            Spacer()
            
            VStack(spacing: 20) {
                buttonNav(changeView: .game, text: "GAME")
                
                buttonNav(changeView: .rules, text: "RULES")
                
                buttonNav(changeView: .options, text: "SETTINGS")
            }
            .padding(.top, 80)
        }
    }
    
    func buttonNav(changeView: PresentedView, text: String) -> some View {
            Button {
                rootManager.changeView(changeView)
            } label: {
                ZStack {
                Image("rect")
                    
                        Text(text)
                            .font(.system(size: 43, weight: .heavy, design: .rounded))
                            .foregroundColor(Color.init(hex: "#562A01"))
                    }
            }

    
    }
}
extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (1, 1, 1, 0)
        }

        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue:  Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}
