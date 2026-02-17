import SwiftUI

struct MovieListView: View {
    @StateObject private var viewModel: MovieListViewModel

    init() {
        _viewModel = StateObject(wrappedValue: MovieListViewModel(service: MockMovieService()))
    }

    var body: some View {
        NavigationStack {
            ZStack {
                if viewModel.isLoading {
                    ProgressView()
                } else {
                    List(viewModel.movies) { movie in
                        NavigationLink {
                            MovieDetailView(movie: movie)
                        } label: {
                            MovieRowView(movie: movie)
                        }
                    }
                }
            }
            .task {
                await viewModel.loadMovies()
            }
            .navigationTitle("Movies")
        }
    }
}
