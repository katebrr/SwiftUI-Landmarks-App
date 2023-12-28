//
//  ContentView.swift
//  Landmarks
//
//  Created by Kateryna BRYLINSKA on 27/12/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
