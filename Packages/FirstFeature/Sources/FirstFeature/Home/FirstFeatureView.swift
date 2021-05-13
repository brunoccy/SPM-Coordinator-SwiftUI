//
//  SwiftUIView.swift
//  
//
//  Created by bruno chen chih ying on 21/03/21.
//

import SwiftUI
import DesignSystem

public struct FirstFeatureView: View {
    var viewModel: FirstFeatureViewModelType?

    public var body: some View {
        NavigationView {
            VStack(spacing: 15) {
                Button(action: { viewModel?.wantsToNavigateToSecondPage() }, label: {
                    Text("First Feature Page 2")
                }).buttonStyle(BaseButton())
                Button(action: { viewModel?.wantsToNavigateToHomeFeature() }, label: {
                    Text("Home Coordinator")
                }).buttonStyle(BaseButton())
            }
            .padding()
            .navigationBarTitle("Page 1 (First Feature)")
        }
    }
}

struct FirstFeatureView_Previews: PreviewProvider {
    static var previews: some View {
        FirstFeatureView()
    }
}
