//
//  SwiftUIView.swift
//  
//
//  Created by bruno chen chih ying on 21/03/21.
//

import SwiftUI
import DesignSystem

public struct SecondPageView: View {
    var viewModel: SecondPageViewModelType?

    public var body: some View {
        NavigationView {
            VStack(spacing: 15) {
                Button(action: { viewModel?.wantsToNavigateToPage1() }, label: {
                    Text("First Feature Page 1")
                }).buttonStyle(BaseButton())
            }
            .padding()
            .navigationBarTitle("Page 2 (First Feature)")
        }
    }
}

struct SecondPageView_Previews: PreviewProvider {
    static var previews: some View {
        SecondPageView()
    }
}
