//
//  DataService.swift
//  Recipe List App
//
//  Created by Dhruv Dingari on 2/22/21.
//

import Foundation

class DataService {
    
    static func getLocalData() -> [Recipe] {
        
        // Parse local json file
        
        // Get url path to json file
        let pathString = Bundle.main.path(forResource: "recipes", ofType: "json")
        
        guard pathString != nil else {
            return [Recipe]()
        }
        
        // Create url object
        let url = URL(fileURLWithPath: pathString!)
        
        // Create data object
        do {
            let data = try Data(contentsOf: url)
            
            // Decode data with json decoder
            let decoder = JSONDecoder()
            
            do {
                let recipeData = try decoder.decode([Recipe].self, from: data)
                
                // Add unique ids
                for r in recipeData {
                    r.id = UUID()
                    
                    // Add unique ids to ingredients
                    for i in r.ingredients {
                        i.id = UUID()
                    }
                }
                
                // Return recipes
                return recipeData
            }
            catch {
                print(error)
            }
                
            
        }
        catch {
            print(error)
        }
        
        
        return [Recipe]()
    }
    
}
