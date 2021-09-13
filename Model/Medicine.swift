//
//  Medicine.swift
//  Inhale
//
//  Created by Buka Cakrawala on 9/6/21.
//

import Foundation

struct Medicine: Identifiable {
    let id: Int
    let name: String
    let type: TreatmentType
    let remarks: String
    let frequencies: [String]
}

enum TreatmentType {

    case prescription
    case multivitamin
    case allergy
    case inhaler
    case hormone
    case pain
    case antidepression
    case others
    
}




