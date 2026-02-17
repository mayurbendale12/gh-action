import SwiftUI
import Combine

@MainActor
final class MovieDetailViewModel: ObservableObject {
    @Published var movie: Movie

    init(movie: Movie) {
        self.movie = movie
    }
}
