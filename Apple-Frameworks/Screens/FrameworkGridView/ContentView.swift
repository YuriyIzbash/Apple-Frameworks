//
//  ContentView.swift
//  Apple-Frameworks
//
//  Created by YURIY IZBASH on 9. 12. 24.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: viewModel.columns) {
                    ForEach (MockData.frameworks) { framework in
                        NavigationLink(value: framework) {
                            FrameworkTitleView(framework: framework)

                        }
                    }
                }
            }
            .navigationTitle("Apple Frameworks")
            .navigationDestination(for: Framework.self) { framework in
                FrameworkDetailView(framework: framework)
            }
        }
    }
}

#Preview {
    ContentView()
}
