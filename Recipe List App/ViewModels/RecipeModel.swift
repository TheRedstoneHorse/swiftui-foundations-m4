//
//  RecipeModel.swift
//  Recipe List App
//
//  Created by Dhruv Dingari on 2/22/21.
//

import Foundation

class RecipeModel: ObservableObject {
    
    @Published var recipes = [Recipe]()
    
    init() {
        
        // Create an instance of data service and get the data
        self.recipes = DataService.getLocalData()
        
        // Set recipes property
    }
}
