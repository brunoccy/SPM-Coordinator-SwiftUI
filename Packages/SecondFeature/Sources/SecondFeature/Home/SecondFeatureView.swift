//
//  SwiftUIView.swift
//  
//
//  Created by bruno chen chih ying on 21/03/21.
//

import SwiftUI
import DesignSystem

public struct SecondFeatureView: View {
    var viewModel: SecondFeatureViewModelType?

    public var body: some View {
        NavigationView {
            VStack(spacing: 15) {
                Button(action: { viewModel?.wantsToNavigateToHomeFeature() }, label: {
                    Text("Home Coordinator")
                }).buttonStyle(BaseButton())
            }
            .padding()
            .navigationBarTitle("Second Feature")
        }
    }
}

struct SecondFeatureView_Previews: PreviewProvider {
    static var previews: some View {
        SecondFeatureView()
    }
}
