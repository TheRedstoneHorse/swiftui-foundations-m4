//
//  ContentView.swift
//  Recipe List App
//
//  Created by Dhruv Dingari on 2/22/21.
//

import SwiftUI

struct RecipeListView: View {
    
    @EnvironmentObject var model:RecipeModel
    
    var body: some View {
        
        NavigationView {
            List(model.recipes) { r in
                
                NavigationLink(
                    destination: RecipeDetailView(recipe: r),
                    label: {
          
                        // MARK: Row item
                        HStack(spacing: 20.0) {
                            Image(r.image)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 100, height: 100, alignment: .center)
                                .clipped()
                                .cornerRadius(10)
                            Text(r.name)
                                .font(.title)
                        }
                        
                    })
                
                
            }
            .navigationTitle("All Recipes")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
            .environmentObject(RecipeModel())
    }
}
