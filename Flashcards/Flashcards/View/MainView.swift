
import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            TopicView()
                .tabItem {
                    Label("Flashcards",
                    systemImage: "doc.plaintext")
                }
            
            InformationView()
                .tabItem {
                    Label("Info",
                    systemImage: "info.circle")
                }
        }
    }
}

#Preview {
    MainView()
}
