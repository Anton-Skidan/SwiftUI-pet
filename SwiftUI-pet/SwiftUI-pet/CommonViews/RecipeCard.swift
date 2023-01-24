//
//  RecipeCard.swift
//  SwiftUI-pet
//
//  Created by Антон Скидан on 24.01.2023.
//

import SwiftUI

struct RecipeCard: View {
    var recipe: RecipeModel
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: recipe.image)) { image in
                image
                    .resizable()
            } placeholder: {
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40, alignment: .center)
                    .foregroundColor(.white.opacity(0.7))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
        }
        .frame(width: 160, height: 220, alignment: .top)
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .shadow(color: .black.opacity(0.3), radius: 15, x: 0, y: 10)
        .background(RecipeCard.backgroundState)
        
    }
}

private extension RecipeCard {
    static let backgroundState = LinearGradient(gradient: Gradient(colors: [Color(.gray).opacity(0.3), Color(.gray)]), startPoint: .top, endPoint: .bottom)
}

struct RecipeCard_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCard(recipe: RecipeModel.recipes[0])
    }
}
