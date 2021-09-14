//
//  AddMedicationView.swift
//  Inhale
//
//  Created by Buka Cakrawala on 9/13/21.
//

import SwiftUI

struct AddMedicationView: View {
    
    @State private var name = ""
    
    var body: some View {
        ZStack {
            MyColor.offWhite
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            NavigationView {
                Form {
                    Section(header: "") {
                        TextField("name", $name)
                    }
                }
            }
            
        }
    }
}

struct AddMedicationView_Previews: PreviewProvider {
    static var previews: some View {
        AddMedicationView()
    }
}
