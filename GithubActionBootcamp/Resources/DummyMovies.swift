import Foundation

enum DummyMovies {
    static let movies: [Movie] = [
        Movie(id: UUID(), title: "Inception", year: "2010", genre: "Sci-Fi", rating: 8.8, description: "A thief who steals corporate secrets through dream-sharing technology.", posterURL: ""),
        Movie(id: UUID(), title: "Interstellar", year: "2014", genre: "Adventure", rating: 8.6, description: "Explorers travel through a wormhole in space.", posterURL: ""),
        Movie(id: UUID(), title: "The Dark Knight", year: "2008", genre: "Action", rating: 9.0, description: "Batman faces the Joker.", posterURL: "")
    ]
}
