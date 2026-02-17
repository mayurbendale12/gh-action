import Foundation

protocol MovieServiceProtocol {
    func fetchMovies() async throws -> [Movie]
    func fetchMovie(id: UUID) async throws -> Movie?
}
