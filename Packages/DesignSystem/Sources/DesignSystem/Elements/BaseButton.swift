//
//  File.swift
//  
//
//  Created by bruno chen chih ying on 20/03/21.
//

import SwiftUI

public struct BaseButton: ButtonStyle {
    public init () {}
    public func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .font(.headline)
            .frame(maxWidth: .infinity, maxHeight: 35, alignment: .center)
            .contentShape(Rectangle())
            .foregroundColor(configuration.isPressed ? Color.white.opacity(0.5) : Color.white)
            .background(Color.black)
            .cornerRadius(8)
    }

}
