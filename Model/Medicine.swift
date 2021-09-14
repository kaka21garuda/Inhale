//
//  Medicine.swift
//  Inhale
//
//  Created by Buka Cakrawala on 9/6/21.
//

import Foundation

struct Medicine: Identifiable {
    let id = UUID().uuidString
    let name: String
    let type: TreatmentType
    let remarks: String
    let frequencies: [String]
}

enum TreatmentType: String, CaseIterable {

    case prescription = "General Prescription"
    case allergy = "Allergy"
    case antibiotics = "Antibiotics"
    case antidepressant = "Antidepressant"
    case derma = "Dermatological"
    case hormone = "Hormone"
    case inhaler = "Inhaler"
    case multivitamin  = "Multivitamin"
    case pain  = "Pain Reliever"
    case others = "others"
    
    
}




