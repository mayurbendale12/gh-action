import SwiftUI
struct MovieDetailView: View {
    @StateObject private var viewModel: MovieDetailViewModel

    init(movie: Movie) {
        _viewModel = StateObject(wrappedValue: MovieDetailViewModel(movie: movie))
    }

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                Text(viewModel.movie.title)
                    .font(.largeTitle.bold())
                Text("\(viewModel.movie.year) • \(viewModel.movie.genre)")
                    .foregroundStyle(.secondary)
                Text("⭐️ \(viewModel.movie.rating, specifier: "%.1f")")
                Text(viewModel.movie.description)
            }.padding()
        }
        .navigationTitle("Details")
        .navigationBarTitleDisplayMode(.inline)
    }
}
