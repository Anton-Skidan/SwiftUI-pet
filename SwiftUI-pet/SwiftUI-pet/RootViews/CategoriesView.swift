//
//  CategoriesView.swift
//  SwiftUI-pet
//
//  Created by Антон Скидан on 24.01.2023.
//

import SwiftUI

struct CategoriesView: View {
    var body: some View {
        NavigationView {
            Text("Категории")
                .navigationTitle("Категории")
        }
    }
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
    }
}

