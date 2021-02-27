//
//  RecipeHighlights.swift
//  Recipe List App
//
//  Created by Dhruv Dingari on 2/27/21.
//

import SwiftUI

struct RecipeHighlights: View {
    
    var allHighlights = ""
    
    init(highlights: [String]) {
        
        // Loop through highlights and build string
        
        for index in 0..<highlights.count {
            
            // If this is last item, don't add comma
            if index == highlights.count - 1 {
                allHighlights += highlights[index]
            } else {
                allHighlights += highlights[index] + ", "
            }
            
        }
        
    }
    
    var body: some View {
        Text(allHighlights)
    }
}

struct RecipeHighlights_Previews: PreviewProvider {
    static var previews: some View {
        RecipeHighlights(highlights: ["test", "test2"])
    }
}
