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
        NavigationView {
            ScrollView {
                LazyVGrid(columns: viewModel.columns) {
                    ForEach (MockData.frameworks) { framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                }
            }
            .navigationTitle("Apple Frameworks")
            .sheet(isPresented: $viewModel.isShowingDetailView) {
                FrameworkDetailView(framework: viewModel.selectedFramework ?? MockData.frameworks[0], isShowingDetailView: $viewModel.isShowingDetailView)
            }
        }
    }
}

#Preview {
    ContentView()
}
