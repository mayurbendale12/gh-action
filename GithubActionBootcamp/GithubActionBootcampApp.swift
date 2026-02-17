import SwiftUI

@main
struct GithubActionBootcampApp: App {
    private let service = MockMovieService()

    var body: some Scene {
        WindowGroup {
            MovieListView()
        }
    }
}
