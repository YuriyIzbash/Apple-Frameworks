//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by YURIY IZBASH on 10. 12. 24.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
}
