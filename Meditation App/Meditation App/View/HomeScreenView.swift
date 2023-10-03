
import SwiftUI

struct HomeScreenView: View {
    let homeScreen = "Home Screen"
    
    var body: some View {
        ZStack {
            deepBlue.ignoresSafeArea()
            Text(homeScreen)
                .foregroundColor(textWhite)
                .font(.largeTitle)
        }
    }
}

#Preview {
    HomeScreenView()
}
