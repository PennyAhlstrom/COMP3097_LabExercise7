//
//  DetailView.swift
//  LabExercise7
//
//  Created by Penny Ahlstrom on 2026-03-02.
//

import SwiftUI

struct DetailView: View {
    let book: Book   // the data gets passed in from home

    var body: some View {
        VStack(spacing: 12) {
            Text(book.title)
                .font(.title)
                .bold()

            Text("by \(book.author)")
                .font(.title3)
                .foregroundColor(.secondary)

            Spacer()
            
            NavigationLink {
                InfoView()
            } label: {
                Text("Go to Info")
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
        .navigationTitle("Detail")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    DetailView(book: Book.sampleBooks[0])
}
