import SwiftUI
import Combine

protocol MoviewViewModelContract: ObservableObject {}

@MainActor
final class MovieDetailViewModel: MoviewViewModelContract {
    @Published private(set) var movie: Movie?
    private let movieID: UUID
    private let service: MovieServiceProtocol

    init(movieID: UUID, service: MovieServiceProtocol) {
        self.movieID = movieID
        self.service = service
    }
    
    func loadMovie() async {
        movie = try? await service.fetchMovie(id: movieID)
    }
}
