//
//  ContentView.swift
//  WeatherApp
//
//  Created by Arturo Burigo on 4/21/23.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
    @State var isShowingSafariView = false
    
    var body: some View {
        VStack {
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .padding()
            
            Spacer()
            
            Button {
                isShowingSafariView = true
            } label: {
                //AFButton(title: "Learn More")
                Label("Learn More", systemImage: "book.fill")
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            .tint(.blue)
            
            Spacer()
        }
        .fullScreenCover(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "apple.com")!)
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: MockData.sampleFramework)
    }
}

