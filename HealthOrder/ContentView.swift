//
//  ContentView.swift
//  HealthOrder
//
//  Created by Will D on 11/9/24.
//

import SwiftUI

struct ContentView: View {
    @State private var isLoading = true
    
    var body: some View {
        VStack {
            if isLoading {
                Text("HealthOrder")
            } else {
                WelcomeView()
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                isLoading = false
            }
        }
        .padding()
    }
}



#Preview {
    ContentView()
}
