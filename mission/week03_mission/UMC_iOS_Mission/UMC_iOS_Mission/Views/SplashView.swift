//
//  ContentView.swift
//  UMC_iOS_Mission
//
//  Created by 김창우 on 3/20/25.
//

import SwiftUI
import SwiftData

struct SplashView: View {
    @State private var isActive = false

    var body: some View {
        NavigationStack {
            if isActive {
                LoginView()
            } else {
                ZStack {
                    Color.main.edgesIgnoringSafeArea(.all)
                    Image("Logo")
                        .frame(width: 168, height: 168)
                }
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                        isActive = true
                    }
                }
            }
        }
    }
}

#Preview {
    SplashView()
        .modelContainer(for: Item.self, inMemory: true)
}
