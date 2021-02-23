//
//  RecipeFeaturedView.swift
//  Recipe List App
//
//  Created by Dhruv Dingari on 2/23/21.
//

import SwiftUI

struct RecipeFeaturedView: View {
    
    // Reference view model
    @EnvironmentObject var model:RecipeModel
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct RecipeFeaturedView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeFeaturedView()
    }
}
