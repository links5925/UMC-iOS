//
//  ProgressBar.swift
//  UMC_iOS_Mission
//
//  Created by 김창우 on 4/3/25.
//

import SwiftUI

struct ProgressBar: View {
    var width: CGFloat
    var progress: CGFloat
    var body: some View {
        ZStack(alignment: .leading) {
            Rectangle()
                .frame(height: 8)
                .foregroundColor(Color.gray)
                .cornerRadius(4)
            
            Rectangle()
                .frame(width: width * progress, height: 8)
                .foregroundColor(.gold)
                .cornerRadius(4)
        }
        .frame(width: width)
    }
}
