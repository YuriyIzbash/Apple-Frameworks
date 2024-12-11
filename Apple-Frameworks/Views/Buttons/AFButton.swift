//
//  AFButton.swift
//  Apple-Frameworks
//
//  Created by YURIY IZBASH on 10. 12. 24.
//

import SwiftUI

struct AFButton: View {
    
    let title: String
    
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 250, height: 20)
            .padding()
            .background(Color.red)
            .foregroundColor(Color.white)
            .cornerRadius(10)
    }
}

#Preview {
    AFButton(title: "Test")
}
