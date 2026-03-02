

//  ContentView.swift
//  LabExercise7
//
//  Created by Penny Ahlstrom on 2026-03-02.
//

import SwiftUI

struct ContentView: View {
    
    let books = Book.sampleBooks
    @State private var path = NavigationPath() // Add navigation path variable
    
    var body: some View {
        NavigationStack(path: $path) { // use the path variable
            VStack(alignment: .leading) {
                
                Text("Welcome!")
                    .font(.largeTitle)
                    .bold()
                    .padding(.horizontal)
                
                List(books) { book in
                    NavigationLink {
                        DetailView(book: book, path: $path)   // pass in the selected book and the navigation path
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
