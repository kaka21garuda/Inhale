//
//  TextFieldManager.swift
//  Inhale
//
//  Created by Buka Cakrawala on 9/17/21.
//

import SwiftUI

class TextFieldManager: ObservableObject {
    
    let medNameCharLimit = 30
    
    @Published var medNameInput = "" {
    
        didSet {
            if medNameInput.count > medNameCharLimit {
                medNameInput = String(medNameInput.prefix(medNameCharLimit))
            }
        }
        
    }
    
}
