
import SwiftUI

struct ResultsTopRow: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Result")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Text("Nov 2021")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.gray)
            }
            Spacer()
            Image(systemName: "arrow.uturn.backward")
                .foregroundColor(.white)
                .padding()
                .background(Color.black)
                .clipShape(Circle())
        }
    }
}

#Preview {
    ResultsTopRow()
        .padding()
}
