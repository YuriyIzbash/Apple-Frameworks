//
//  FramworkDetailView.swift
//  Apple-Frameworks
//
//  Created by YURIY IZBASH on 10. 12. 24.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack {
            
            FrameworkTitleView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                isShowingSafariView = true
            }label: {
//                AFButton(title: "Learn More")
                Label("Learn More", systemImage: "book.fill")
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.roundedRectangle(radius: 12))
            .controlSize(.large)
            .tint(.red)
        }
        .fullScreenCover(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
        })
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.frameworks[1])
}
