//
//  PrimaryButtonStyle.swift
//  ABDesignSystem
//
//  Created by Akash Boghani on 21/01/25.
//

import SwiftUI

public struct PrimaryButtonStyle: ButtonStyle {
    var bgColor: Color
    var textColor: Color
    
    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.title3)
            .frame(maxWidth: .infinity, alignment: .center)
            .frame(height: 50)
            .background(bgColor)
            .foregroundStyle(textColor)
            .clipShape(RoundedRectangle(cornerRadius: Theme.CornerRadius.medium))
            .opacity(configuration.isPressed ? 0.3 : 1)
    }
}

extension ButtonStyle where Self == PrimaryButtonStyle {
    public static func primary(bgColor: Color = .blue, textColor: Color = .black) -> Self {
        return Self(bgColor: bgColor, textColor: textColor)
    }
}
