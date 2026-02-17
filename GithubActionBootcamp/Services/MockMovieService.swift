import Foundation

final class MockMovieService: MovieServiceProtocol {
    private let movies: [Movie]
    
    init(movies: [Movie] = DummyMovies.movies) {
        self.movies = movies
    }

    func fetchMovies() async throws -> [Movie] {
        try await Task.sleep(nanoseconds: 500_000_000)
        return movies
    }
}
