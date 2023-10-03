
import SwiftUI

struct TwoSidedBackgroundView: View {
    let frontColor: Color
    let backColor: Color
    let opacity: CGFloat
    let isFrontUp: Bool
    
    var body: some View {
        if isFrontUp {
            frontColor
                .opacity(opacity)
                .ignoresSafeArea()
        } else {
            backColor
                .opacity(opacity)
                .ignoresSafeArea()
        }
    }
}

#Preview {
    TwoSidedBackgroundView(
        frontColor: .blue,
        backColor: .red,
        opacity: 0.5,
        isFrontUp: true
    )
}
