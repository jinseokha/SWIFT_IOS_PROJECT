
import SwiftUI

struct ShowRecipeView: View {
    let theRecipe: String
    let imageName: String
    let recipeURL: String
    
    var body: some View {
        ZStack {
            Color.gray.opacity(0.7)
                .ignoresSafeArea()
            
            VStack {
                ScrollView {
                    Text(.init(theRecipe))
                        .padding()
                }
                
                Spacer()
                
                Link(destination: URL(string: recipeURL)!, label: {
                    ZStack {
                        Image(imageName)
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(20)
                            .scaleEffect(0.8)
                        
                        Text("Click image for recipe")
                            .foregroundColor(.orange)
                            .font(.headline)
                            .padding()
                            .background(
                            Capsule()
                                .fill(Color.black
                                    .opacity(0.7))
                            )
                        
                    }
                })
            }
        }
    }
}

#Preview {
    ShowRecipeView(
    theRecipe: "afsavxvavas", imageName: "IMGhummus", recipeURL: "http://www.naver.com"
    )
}
