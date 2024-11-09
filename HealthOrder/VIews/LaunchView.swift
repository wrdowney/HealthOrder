//
//  WelcomeView.swift
//  HealthOrder
//
//  Created by Will D on 11/9/24.
//

import Lottie
import SwiftUI

struct LaunchView: View {
    @State private var counter: Int = 0
    @State private var loadingText: [String] = "Loading your experience...".map { String($0) }
    @State private var showLoadingText: Bool = false
    @State private var loops: Int = 0
    @Binding var showLaunchView: Bool
    
    private let timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        ZStack {
            Color.launchBackground
                .ignoresSafeArea()
            
            LottieView(animation: .named("hi"))
                .playing()
            
            ZStack {
                if showLoadingText {
                    HStack(spacing: 0) {
                        ForEach(loadingText.indices) { index in
                            Text(loadingText[index])
                                .font(.headline)
                                .fontWeight(.heavy)
                                .foregroundColor(Color.launch.accent)
                                .offset(y: counter == index ? -10 : 0)
                        }
                    }
                    .transition(AnyTransition.scale.animation(.easeIn))
                }
            }
            .offset(y: 100)
        }
        .onAppear {
            showLoadingText.toggle()
        }
        .onReceive(timer, perform: { _ in
            withAnimation(.spring()) {
                
                if counter == loadingText.count - 1 {
                    counter = 0
                    loops += 1
                    if loops >= 2 {
                        showLaunchView = false
                    }
                }
                
                counter += 1
            }
        })
    }
}

#Preview {
    LaunchView(showLaunchView: .constant(true))
}
