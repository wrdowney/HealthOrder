//
//  ContentView.swift
//  HealthOrder
//
//  Created by Will D on 11/9/24.
//

import SwiftUI

struct ContentView: View {
    @State private var isLoading = true
    @State private var showLaunchView: Bool = true
    
    var body: some View {
        ZStack {
            HomeView()
            
            ZStack{
                if showLaunchView {
                    LaunchView(showLaunchView: $showLaunchView)
                        .transition(.move(edge: .leading))
                }
            }
            .zIndex(2.0)
        }
        .onChange(of: showLaunchView) {
            UINotificationFeedbackGenerator().notificationOccurred(.success)
        }
    }
}

#Preview {
    ContentView()
}
