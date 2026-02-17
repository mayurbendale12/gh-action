import XCTest

@testable import GithubActionBootcamp

final class MovieServiceTests: XCTestCase {

    func testFetchMoviesReturnsData() async throws {
        let service = await MockMovieService()
        let movies = try await service.fetchMovies()
        XCTAssertFalse(movies.isEmpty)
    }
}
