//
//  HomeView.swift
//  HealthOrder
//
//  Created by Will D on 11/9/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        TabView {
            CameraView()
                .tabItem {
                    Label("Camera", systemImage: "camera")
                }
        }
    }
}

#Preview {
    HomeView()
}
