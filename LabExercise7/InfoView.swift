//
//  Untitled.swift
//  LabExercise7
//
//  Created by Penny Ahlstrom on 2026-03-02.
//

import SwiftUI

struct InfoView: View {
    var body: some View {
        VStack(spacing: 16) {
            Text("About This App")
                .font(.title)
                .bold()

            Text("This app demonstrates multi-screen navigation using NavigationStack and passing data between screens.")
                .multilineTextAlignment(.center)
                .foregroundColor(.secondary)
                .padding(.horizontal)

            Spacer()
        }
        .padding()
        .navigationTitle("Info")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        InfoView()
    }
}
