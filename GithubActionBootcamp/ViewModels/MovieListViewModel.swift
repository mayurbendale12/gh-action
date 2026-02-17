import SwiftUI
import Combine

@MainActor
final class MovieListViewModel: MoviewViewModelContract {
    @Published private(set) var movies: [Movie] = []
    var isLoading = false

    private let service: MovieServiceProtocol

    init(service: MovieServiceProtocol) {
        self.service = service
    }

    func loadMovies() async {
        isLoading = true
        movies = (try? await service.fetchMovies()) ?? []
        isLoading = false
    }
}
