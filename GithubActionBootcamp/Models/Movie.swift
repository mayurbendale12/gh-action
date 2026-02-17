import Foundation

struct Movie: Identifiable, Equatable {
    let id: UUID
    let title: String
    let year: String
    let genre: String
    let rating: Double
    let description: String
    let posterURL: String
}
