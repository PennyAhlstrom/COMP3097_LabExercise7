//
//  Model.swift
//  LabExercise7
//
//  Created by Penny Ahlstrom on 2026-03-02.
//

import Foundation

struct Book: Identifiable, Hashable {
    let id = UUID()
    let title: String
    let author: String
}

extension Book {
    static let sampleBooks: [Book] = [
        .init(
            title: "Silent Spring",
            author: "Rachel Carson"
        ),
        .init(
            title: "The Immortal Life of Henrietta Lacks",
            author: "Rebecca Skloot"
        ),
        .init(
            title: "The End of Everything (Astrophysically Speaking)",
            author: "Katie Mack"
        ),
        .init(
            title: "Braiding Sweetgrass",
            author: "Robin Wall Kimmerer"
        )
    ]
}
