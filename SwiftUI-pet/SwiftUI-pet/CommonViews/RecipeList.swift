//
//  RecipeList.swift
//  SwiftUI-pet
//
//  Created by Антон Скидан on 25.01.2023.
//

import SwiftUI

struct RecipeList: View {
    var recipies: [RecipeModel]
    var body: some View {
        VStack {
            HStack {
                Text("\(recipies.count) \(recipies.count > 1 ? "рецепта" : "рецепт")")
                    .font(.headline)
                    .fontWeight(.medium)
                .opacity(0.7)
                
                Spacer()
            }
            
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 160), spacing: 15)], spacing: 15) {
                ForEach(recipies) { recipe in
                    NavigationLink(destination: RecipeView(recipe: recipe)) {
                        RecipeCard(recipe: recipe)
                    }
                }
            }
            .padding(.top)
        }
        .padding()
    }
}

struct RecipeList_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView {
            RecipeList(recipies: RecipeModel.recipes)
        }
    }
}
