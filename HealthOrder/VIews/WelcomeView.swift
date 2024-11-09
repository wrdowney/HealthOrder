//
//  WelcomeView.swift
//  HealthOrder
//
//  Created by Will D on 11/9/24.
//

import Lottie
import SwiftUI

struct WelcomeView: View {
    var body: some View {
        VStack {
            LottieView(animation: .named("hi"))
                .playing()
                .onAppear {
                    UINotificationFeedbackGenerator().notificationOccurred(.success)
                }
        }
    }
}

#Preview {
    WelcomeView()
}
