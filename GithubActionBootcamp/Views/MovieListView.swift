import SwiftUI

struct MovieListView: View {
    @StateObject private var viewModel: MovieListViewModel

    private let service: MovieServiceProtocol

    init(service: MovieServiceProtocol) {
        self.service = service
        _viewModel = StateObject(wrappedValue: MovieListViewModel(service: service))
    }

    var body: some View {
        NavigationStack {
            Group {
                if viewModel.isLoading {
                    ProgressView()
                } else {
                    List(viewModel.movies) { movie in
                        NavigationLink {
                            MovieDetailView(movieID: movie.id, service: service)
                        } label: {
                            MovieRowView(movie: movie)
                        }
                    }
                }
            }
            .navigationTitle("Movies")
        }
        .task {
            await viewModel.loadMovies()
        }
    }
}
