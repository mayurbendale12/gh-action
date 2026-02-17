import SwiftUI

struct MovieRowView: View {
    let movie: Movie

    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(movie.title)
                .font(.headline)
            Text("\(movie.year) • \(movie.genre)")
                .font(.subheadline)
                .foregroundStyle(.secondary)
            Text("⭐️ \(movie.rating, specifier: "%.1f")")
                .font(.caption)
        }
    }
}
