
import SwiftUI

struct TopicView: View {
    @StateObject var flashCardViewModel = FlashCardViewModel()
    
    var body: some View {
        NavigationView {
            List(flashCardViewModel.flashCardModels) { flashCardModel in
                FlashItemView(flashCardModel: flashCardModel)
            }
        }.navigationTitle("Flashcards")
    }
}

#Preview {
    TopicView()
}
