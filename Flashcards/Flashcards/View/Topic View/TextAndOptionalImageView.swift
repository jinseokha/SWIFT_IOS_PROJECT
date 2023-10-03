
import SwiftUI

struct TextAndOptionalImageView: View {
    let text: String
    let imageName: String?
    let rotate: Bool
    
    var body: some View {
        VStack {
            // This lets us use Markdown
            // in the text variable 
            Text(.init(text))
                .font(.title2)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .fixedSize(horizontal: false, vertical: true)
                .lineSpacing(5)
                .padding(.horizontal)
            
            // Execute only if imageName
            // is not nil
            if let imageName = imageName {
                
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(
                        width: 0.9 * width,
                        height: height / 2
                    )
            }
        }
        .rotation3DEffect(
            rotate ? .degrees(180) : .zero,
            axis: (x: 0, y: 1, z: 0)
        )
    }
}

#Preview {
    TextAndOptionalImageView(
        text: "What city is this?",
        imageName: BigBenImage,
        rotate: false)
}
