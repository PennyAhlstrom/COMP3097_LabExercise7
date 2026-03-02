

//  ContentView.swift
//  LabExercise7
//
//  Created by Penny Ahlstrom on 2026-03-02.
//

import SwiftUI

struct ContentView: View {
    
    let books = Book.sampleBooks
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                
                Text("Welcome!")
                    .font(.largeTitle)
                    .bold()
                    .padding(.horizontal)
                
                List(books) { book in
                    NavigationLink {
                        Text("Placeholder for detail: \(book.title)")
                    } label: {
                        VStack(alignment: .leading) {
                            Text(book.title)
                                .font(.headline)
                            Text(book.author)
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                    }
                }
            }
            .navigationTitle("Home")
        }
    }
}
#Preview {
    ContentView()
}
