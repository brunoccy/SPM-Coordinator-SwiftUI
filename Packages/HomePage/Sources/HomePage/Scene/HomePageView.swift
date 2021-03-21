//
//  HomePage.swift
//  ModularCoordinator
//
//  Created by bruno chen chih ying on 20/03/21.
//

import SwiftUI
import DesignSystem

public struct HomePageView: View {
    public var viewModel: HomePageViewModelType?

    public init() {}

    public var body: some View {
        VStack(spacing: 15) {
            Button(action: { print("Hi") }, label: {
                Text("First Feature")
            }).buttonStyle(BaseButton())
            Button(action: { print("Hi") }, label: {
                Text("Second Feature")
            }).buttonStyle(BaseButton())
        }
        .padding()
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
    }
}
