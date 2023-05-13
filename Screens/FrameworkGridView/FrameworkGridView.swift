//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Arturo Burigo on 4/27/23.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(MockData.frameworks) { framework in
                            NavigationLink(value: framework) {
                                FrameworkTitleView(framework: framework)
                            }
                    }
                }
            }
            .navigationTitle("Frameworks 🍎").padding(.horizontal, 15)
            .navigationDestination(for: Framework.self) {
                framework in FrameworkDetailView(framework: framework)
            }
        }
        .accentColor(Color(.label))
    }
}
 
struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View{
        FrameworkGridView()
    }
}

