
import Foundation

struct QuestionModel: Identifiable {
    let id = UUID()
    let question: String
    let questionImageName: String?
    let answer: String
    let answerImageName: String?
}
