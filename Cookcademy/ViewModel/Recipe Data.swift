//
//  Recipe Data.swift
//  Cookcademy
//
//  Created by Brett Atkinson on 12/17/23.
//

import Foundation


class RecipeData: ObservableObject {
    @Published var recipes = Recipe.testRecipes
}
