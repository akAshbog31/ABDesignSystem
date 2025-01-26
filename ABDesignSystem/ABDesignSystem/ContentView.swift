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
                    RoundedRectangle(cornerRadius: Theme.CornerRadius.medium)
                        .fill(Theme.Colors.textPrimary)
                        .frame(width: 100, height: 100)
                    
                    RoundedRectangle(cornerRadius: Theme.CornerRadius.medium)
                        .fill(Theme.Colors.textSecondary)
                        .frame(width: 100, height: 100)
                }
                
                /*
                 Button {
                 print("Hello")
                 } label: {
                 Text("Tap Me")
                 }
                 .buttonStyle(.primary(bgColor: Theme.Colors.primary, textColor: .white))
                 .padding(.horizontal, Theme.Spacing.medium)
                 */
                
                AsyncButton {
                    do {
                        if #available(iOS 16.0, *) {
                            try await Task.sleep(for: .seconds(5))
                            print("Task Complate")
                        }
                    } catch {
                        print(error.localizedDescription)
                    }
                } label: {
                    Text("Try me!")
                } progress: {
                    ProgressView()
                        .tint(.white)
                }
                .buttonStyle(
                    .primary(
                        bgColor: Theme.Colors.primary,
                        textColor: .white
                    )
                )
                .padding(.horizontal, Theme.Spacing.medium)
            }
        }
    }
}

#Preview {
    ContentView()
}
