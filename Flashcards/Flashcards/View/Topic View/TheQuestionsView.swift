
import SwiftUI

struct TheQuestionsView: View {
    // Used to dismiss view
    @Environment(\.presentationMode) var presentation
    
    @State var questionModels: [QuestionModel]
    @State var currentQuestionIndex: Int = 0
    
    var totalNumberOfQuestions: Int
    let topic: String
    
    var questionModel: QuestionModel {
        return questionModels[currentQuestionIndex]
    }
    
    var questionNumber: Int {
        return currentQuestionIndex + 1
    }
    
    var body: some View {
        ZStack {
            Color.gray.opacity(0.3)
                .ignoresSafeArea()
            
            VStack{
                HeaderView(
                    topic: topic,
                    questionNumber: currentQuestionIndex,
                    totalNumberOfQuestions: totalNumberOfQuestions,
                    colorBG: .gray,
                    colorFill: .purple,
                    dismissFunc: {
                        self.presentation
                            .wrappedValue
                            .dismiss()
                    }
                )
                
                ZStack {
                    ForEach(0 ..< questionModels.count, id: \.self) { index in
                        let questionModel = questionModels[index]
                        
                        CardView(
                            text: questionModel.question,
                            imageName: questionModel.questionImageName,
                            answer: questionModel.answer,
                            answerImageName: questionModel.answerImageName,
                        removeCard: {
                            withAnimation {
                                removeCard(at: index)
                            }
                        })
                        .opacity(
                            index == questionModels.count - 1 ? 1 : 0
                        )
                    }
                }
            }
        }
    }
    
    func removeCard( at index: Int ) {
        // Remove top of deck of
        // flashcards
        questionModels.removeLast()
        
        // Next Question
        currentQuestionIndex += 1
        
        // If we finished the questions
        // then leave
        if currentQuestionIndex == totalNumberOfQuestions {
            self.presentation.wrappedValue.dismiss()
        }
    }
}

#Preview {
    TheQuestionsView(questionModels: QuestionViewModel.getQuestionCountryModels(),
                     totalNumberOfQuestions: QuestionViewModel.getQuestionCountryModels().count,
    topic: "Countries")
}
