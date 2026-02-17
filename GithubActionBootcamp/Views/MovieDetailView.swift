import SwiftUI
struct MovieDetailView: View {
    @StateObject private var viewModel: MovieDetailViewModel

    init(movieID: UUID, service: MovieServiceProtocol) {
        _viewModel = StateObject(wrappedValue: MovieDetailViewModel(movieID: movieID, service: service))
    }

    var body: some View {
        Group {
            if let movie = viewModel.movie {
                ScrollView {
                    VStack(alignment: .leading, spacing: 16) {
                        Text(movie.title).font(.largeTitle.bold())
                        Text("\(movie.year) • \(movie.genre)").foregroundStyle(.secondary)
                        Text("⭐️ \(movie.rating, specifier: "%.1f")")
                        Text(movie.description)
                    }.padding()
                }
            } else {
                ProgressView()
            }
        }
        .task {
            await viewModel.loadMovie()
        }
        .navigationTitle("Details")
        .navigationBarTitleDisplayMode(.inline)
    }
}
