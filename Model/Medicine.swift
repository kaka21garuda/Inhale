//
//  Medicine.swift
//  Inhale
//
//  Created by Buka Cakrawala on 9/6/21.
//

import Foundation

enum TreatmentType {

    case multivitamin
    case allergy
    case inhaler
    case prescription
    case others
}

struct Medicine {
    let name: String
    let type: TreatmentType
    let time: Date
    let useCount: Int
    let description: String
}


