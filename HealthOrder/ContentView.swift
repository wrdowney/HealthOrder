//
//  ContentView.swift
//  HealthOrder
//
//  Created by Will D on 11/9/24.
//

import SwiftUI

extension AnyTransition {
    static var moveEdgeAndSuccess: AnyTransition {
        UINotificationFeedbackGenerator().notificationOccurred(.success)
        return AnyTransition.move(edge: .leading)
    }
}

struct ContentView: View {
    @State private var isLoading = true
    @State private var showLaunchView: Bool = true
    
    var body: some View {
        ZStack {
            Text("Hi")
            
            ZStack{
                if showLaunchView {
                    LaunchView(showLaunchView: $showLaunchView)
                        .transition(.moveEdgeAndSuccess)
                }
            }
            .zIndex(2.0)
        }
    }
}

#Preview {
    ContentView()
}
