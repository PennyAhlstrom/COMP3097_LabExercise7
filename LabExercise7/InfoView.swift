//
//  InfoView.swift
//  LabExercise7
//
//  Created by Penny Ahlstrom on 2026-03-02.
//

import SwiftUI

struct InfoView: View {
    @Binding var path: NavigationPath // add navigation path binding
    
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
            
            Button("Go Back to Home") {
                            path = NavigationPath()      // reset the navigation path to navigate back to root/home
                        }
                        .buttonStyle(.borderedProminent)
            
        }
        .padding()
        .navigationTitle("Info")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    @Previewable @State var path = NavigationPath()
    NavigationStack(path: $path) {
        InfoView(path: $path)
    }
}
