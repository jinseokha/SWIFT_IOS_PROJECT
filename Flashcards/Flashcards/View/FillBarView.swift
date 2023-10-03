
import SwiftUI

struct FillBarView: View {
    let barWidth: CGFloat
    let colorBG: Color
    let colorFill: Color
    let percentage: CGFloat
    
    var body: some View {
        HStack {
            GeometryReader { geometry in
                VStack {
                    ZStack(alignment: .leading) {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(colorBG.opacity(0.7))
                            .frame(width: .infinity, height: barWidth)
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .fill(colorFill.opacity(0.7))
                            .frame(width: geometry.size.width * percentage, height: barWidth)
                            
                            RoundedRectangle(cornerRadius: 10)
                                .fill(.white.opacity(0.3))
                                .frame(width: geometry.size.width * percentage - 10, height: 0.3 * barWidth)
                                .offset(y: -1)
                        }
                        
                    }
                }
            }
        }
        .frame(width: .infinity, height: barWidth)
        
        
    }
}

#Preview {
    VStack {
        ForEach(0 ..< 11) { item in
            FillBarView(barWidth: 10,
                        colorBG: .gray,
                        colorFill: .purple,
                        percentage: CGFloat(item) / 10)
                        .padding()
        }
    }
}
