//
//  ContentView.swift
//  ABDesignSystem
//
//  Created by Akash Boghani on 21/01/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            VStack(spacing: Theme.Spacing.medium) {
                HStack(spacing: Theme.Spacing.dynamicSpacing(base: Theme.Spacing.medium)) {
                    Rectangle()
                        .fill(.red)
                        .frame(width: 100, height: 100)
                    
                    Rectangle()
                        .fill(.yellow)
                        .frame(width: 100, height: 100)
                }
                
                Button {
                    print("Hello")
                } label: {
                    Text("Tap Me")
                }
                .buttonStyle(.primary(bgColor: Theme.Colors.primary, textColor: .white))
                .padding(.horizontal, Theme.Spacing.medium)
            }
        }
    }
}

#Preview {
    ContentView()
}
