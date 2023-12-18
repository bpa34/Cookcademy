//
//  ContentView.swift
//  Cookcademy
//
//  Created by Brett Atkinson on 12/17/23.
//

import SwiftUI

struct RecipesListView: View {
    
    @StateObject var recipeData = RecipeData()
    
    private let listBackgroundColor = AppColor.background
    private let listTextColor = AppColor.foreground
    
    var body: some View {
        List{
            ForEach(recipes) { recipe in
                Text(recipe.mainInformation.name)
            }
            .listRowBackground(listBackgroundColor)
            .foregroundColor(listTextColor)
        }
        .navigationTitle(navigationTitle)
    }
}

extension RecipesListView {
    var recipes: [Recipe] {
        recipeData.recipes
    }
    
    var navigationTitle: String {
        "All Recipes"
    }
    
}

#Preview {
    NavigationView {
        RecipesListView()
    }
}
