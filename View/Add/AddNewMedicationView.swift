//
//  AddNewMedicationView.swift
//  Inhale
//
//  Created by Buka Cakrawala on 9/13/21.
//

import SwiftUI

struct AddNewMedicationView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @State private var medicationName: String = ""
    
    @ObservedObject var textFieldManager = TextFieldManager()
    
    @State private var remarks: String = ""
    @State private var selectedMedicationTypeIndex = 0
    @State private var shouldNotifyMorning = false
    @State private var shouldNotifyAfternoon = false
    @State private var shouldNotifyEvening = false
    @State private var shouldNotifyNight = false
    
    init(){
            UITableView.appearance().backgroundColor = .clear
        }
    
    var body: some View {
   
        NavigationView {
            Form {
                
                Section(header:
                           
                                
                            VStack {
                                
                                HStack {
                                    Spacer()
                                    Button(action: {
                                        presentationMode.wrappedValue.dismiss()
                                    }, label: {
                                        Image(systemName: "xmark")
                                            .foregroundColor(MyColor.maroon)
                                    }).buttonStyle(FloatingButtonStyle())
                                }
                                HStack {

                                        Text("Medication Name:")
                                            .font(Font.custom("Besley", size: 18))
                                            .foregroundColor(Color.black)
                                            .textCase(.none)
                                        Image(systemName: "staroflife.fill")
                                            .foregroundColor(MyColor.maroon)
                                    Spacer()
                                        
                                }
                            }
                            
                        
                ) {
                    
                    TextField("", text: $textFieldManager.medNameInput)
                       
                        .placeholder(when: textFieldManager.medNameInput.isEmpty) {
                            Text("e.g. Paracetamol")
                                .foregroundColor(.gray)
                                .font(Font.custom("Besley", size: 16))
                            
                            
                        }
                        .font(Font.custom("Besley", size: 16))
                    
                    
                }
                
                Section(header:
                            HStack {
                                Text("Remarks:")
                                
                                    .font(Font.custom("Besley", size: 18))
                                    .foregroundColor(Color.black)
                                    .textCase(.none)
                                
                                Image(systemName: "staroflife.fill")
                                    .foregroundColor(MyColor.maroon)
                            }
                        
                ) {
                    TextEditor(text: $remarks)
                        .placeholder(when: remarks.isEmpty) {
                            Text("e.g. take it after each meal")
                                .foregroundColor(.gray)
                                .font(Font.custom("Besley", size: 16))
                                .padding()
                        }
                        .font(Font.custom("Besley", size: 16))
                    
                }
                
                Section(header:
                            HStack {
                                Text("Medication Class:")
                                    .font(Font.custom("Besley", size: 18))
                                    .foregroundColor(Color.black)
                                    .textCase(.none)
                                
                                
                            }
                ) {
                    
                    Picker(selection: $selectedMedicationTypeIndex, label: Text("Type")
                            .foregroundColor(.black)
                            .font(Font.custom("Besley", size: 16))
                           
                    ) {
                        
                        ForEach(0 ..< TreatmentType.allCases.count) { i in
                            Text(TreatmentType.allCases[i].rawValue)
                                .font(Font.custom("Besley", size: 14))
                        }
                        
                        
                    }
                }
                
                Section(header:
                            Text("Notifications:")
                            .font(Font.custom("Besley", size: 18))
                            .foregroundColor(Color.black)
                            .textCase(.none)
                ) {
                    
                    Toggle(isOn: $shouldNotifyMorning, label: {
                        Text("morning")
                            .foregroundColor(.black)
                            .font(Font.custom("Besley", size: 16))
                    })
                    .toggleStyle(SwitchToggleStyle(tint: MyColor.maroon))
                    
                    Toggle(isOn: $shouldNotifyAfternoon, label: {
                        Text("afternoon")
                            .foregroundColor(.black)
                            .font(Font.custom("Besley", size: 16))
                    })
                    .toggleStyle(SwitchToggleStyle(tint: MyColor.maroon))
                    
                    Toggle(isOn: $shouldNotifyEvening, label: {
                        Text("evening")
                            .foregroundColor(.black)
                            .font(Font.custom("Besley", size: 16))
                    })
                    .toggleStyle(SwitchToggleStyle(tint: MyColor.maroon))
                    
                    Toggle(isOn: $shouldNotifyNight, label: {
                        Text("night")
                            .foregroundColor(.black)
                            .font(Font.custom("Besley", size: 16))
                    })
                    .toggleStyle(SwitchToggleStyle(tint: MyColor.maroon))
                    
                    
                }
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Save")
                        .font(Font.custom("Besley", size: 18))
                        .foregroundColor(textFieldManager.medNameInput.isEmpty || remarks.isEmpty ? .gray : MyColor.maroon)
                        .textCase(.none)
                })
                .buttonStyle(PlainButtonStyle())
                .disabled(textFieldManager.medNameInput.isEmpty || remarks.isEmpty)
               
               
                
                
            }
            .background(MyColor.lavender)
            .edgesIgnoringSafeArea(.all)
            .navigationBarHidden(true)
            .navigationBarTitle(
                Text(""), displayMode: .automatic
            )
            
        }
        
        .accentColor(MyColor.maroon)
        
        
    }
    

}


extension View {
    func placeholder<Content: View> (
        when shouldShow: Bool,
        alignment: Alignment = .leading,
        @ViewBuilder placeholder: () -> Content) -> some View {
        
        ZStack(alignment: alignment) {
            placeholder().opacity(shouldShow ? 1: 0)
            self
        }
        
    }
    
}




struct AddNewMedicationView_Previews: PreviewProvider {
    static var previews: some View {
        AddNewMedicationView()
    }
}
