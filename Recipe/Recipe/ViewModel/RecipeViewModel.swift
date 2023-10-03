
import Foundation
import Observation

@Observable class RecipeViewModel {
    var recipeModels: [RecipeModel] = []
    
    // Initialize the model
    init() {
        recipeModels.append(
        RecipeModel(
            name: "Hummus", 
            caloriesPer100Grams: 322,
            recipe: """
            **Ingredients**
            - ...
            - ...
            - ...
            - ...
            """,
            recipeImage: "IMGhummus",
            recipeURL: "https://www.naver.com")
        )
        
        recipeModels.append(
        RecipeModel(
            name: "Homemad Pizza",
            caloriesPer100Grams: 166,
            recipe: """
            **Ingredients**
            - pizza stuff ...
            - ...
            - ...
            - ...
            """,
            recipeImage: "IMGPizza",
            recipeURL: "https://www.naver.com")
        )
        
        recipeModels.append(
        RecipeModel(
            name: "Apple Pie",
            caloriesPer100Grams: 237,
            recipe: """
            **Ingredients**
            - Apple ...
            - ...
            - ...
            - ...
            """,
            recipeImage: "IMGApplePie",
            recipeURL: "https://www.naver.com")
        )
        recipeModels.append(
        RecipeModel(
            name: "Hummus",
            caloriesPer100Grams: 322,
            recipe: """
            **Ingredients**
            - ...
            - ...
            - ...
            - ...
            """,
            recipeImage: "IMGhummus",
            recipeURL: "https://www.naver.com")
        )
        
        recipeModels.append(
        RecipeModel(
            name: "Homemad Pizza",
            caloriesPer100Grams: 166,
            recipe: """
            **Ingredients**
            - pizza stuff ...
            - ...
            - ...
            - ...
            """,
            recipeImage: "IMGPizza",
            recipeURL: "https://www.naver.com")
        )
        
        recipeModels.append(
        RecipeModel(
            name: "Apple Pie",
            caloriesPer100Grams: 237,
            recipe: """
            **Ingredients**
            - Apple ...
            - ...
            - ...
            - ...
            """,
            recipeImage: "IMGApplePie",
            recipeURL: "https://www.naver.com")
        )
        recipeModels.append(
        RecipeModel(
            name: "Hummus",
            caloriesPer100Grams: 322,
            recipe: """
            **Ingredients**
            - ...
            - ...
            - ...
            - ...
            """,
            recipeImage: "IMGhummus",
            recipeURL: "https://www.naver.com")
        )
        
        recipeModels.append(
        RecipeModel(
            name: "Homemad Pizza",
            caloriesPer100Grams: 166,
            recipe: """
            **Ingredients**
            - pizza stuff ...
            - ...
            - ...
            - ...
            """,
            recipeImage: "IMGPizza",
            recipeURL: "https://www.naver.com")
        )
        
        recipeModels.append(
        RecipeModel(
            name: "Apple Pie",
            caloriesPer100Grams: 237,
            recipe: """
            **Ingredients**
            - Apple ...
            - ...
            - ...
            - ...
            """,
            recipeImage: "IMGApplePie",
            recipeURL: "https://www.naver.com")
        )
        
    }
}
