

//  ContentView.swift
//  LabExercise7
//
//  Created by Penny Ahlstrom on 2026-03-02.
//

import SwiftUI

enum Route: Hashable {
    case detail(Book)
    case info
}


struct ContentView: View {
    
    let books = Book.sampleBooks
    @State private var path = NavigationPath() // Add navigation path variable
    
    var body: some View {
        NavigationStack(path: $path) { // use the path variable
            Text("Welcome!")
                    .font(.largeTitle)
                    .bold()
                    .padding(.vertical, 6)
            
            List(books) { book in
                NavigationLink(value: Route.detail(book)) {
                    VStack(alignment: .leading) {
                        Text(book.title).font(.headline)
                        Text(book.author).font(.subheadline).foregroundColor(.gray)
                    }
                }
            }
            .navigationTitle("Home")
            .navigationDestination(for: Route.self) { route in
                            switch route {
                            case .detail(let book):
                                DetailView(book: book, path: $path)
                            case .info:
                                InfoView(path: $path)
                            }
                        }
        }
    }
}
#Preview {
    ContentView()
}
