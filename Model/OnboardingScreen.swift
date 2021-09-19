//
//  OnboardingScreen.swift
//  Inhale
//
//  Created by Buka Cakrawala on 9/18/21.
//

import SwiftUI

struct BoardingScreen: Identifiable {
    var id = UUID().uuidString
    var title: String
    var description: String
    var color: Color
}

let title = "Best way to get notif on your medications with Inhale"
let description = "you can receive the latest notifications super easy and fast"


var boardingScreens: [BoardingScreen] = [

    BoardingScreen(title: title, description: description, color: Color.green),
    BoardingScreen(title: title, description: description, color: Color.blue),
    BoardingScreen(title: title, description: description, color: Color.orange),
    BoardingScreen(title: title, description: description, color: Color.red)

]
