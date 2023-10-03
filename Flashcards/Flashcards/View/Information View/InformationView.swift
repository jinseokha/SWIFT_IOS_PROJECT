
import SwiftUI

struct InformationView: View {
    var body: some View {
        ZStack {
            Color
                .blue
                .opacity(0.3)
                .ignoresSafeArea()
            
            Text("Information View")
        }
    }
}

#Preview {
    InformationView()
}
