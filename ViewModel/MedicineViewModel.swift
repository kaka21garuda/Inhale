//
//  MedicineViewModel.swift
//  Inhale
//
//  Created by Buka Cakrawala on 9/8/21.
//

import SwiftUI
import CoreData

class MedicineViewModel: ObservableObject {
    
    let container: NSPersistentContainer
    @Published var savedEntities: [MedicationEntity] = []
   
    init() {
        container  = NSPersistentContainer(name: "MedicationContainer")
        container.loadPersistentStores { description, error in
            if let error = error {
                print("ERROR LOADING CORE DATA: \(error.localizedDescription)")
            }
        }
        
        fetchMedications()
    }
    
    func fetchMedications() {
        let request = NSFetchRequest<MedicationEntity>(entityName: "MedicationEntity")
        
        do {
            try savedEntities = container.viewContext.fetch(request)
        } catch let error {
            print("Error fetching: \(error.localizedDescription)")
        }
        
    }
    
    func addMedication(medName: String) {
        let newMedication = MedicationEntity(context: container.viewContext)
        newMedication.name = medName
        saveData()
    }
    
    
    func saveData() {
        do {
            try container.viewContext.save()
            fetchMedications()
        } catch let error {
            print("Error saving: \(error.localizedDescription)")
        }
    }
    
    
    
}

struct CoreDataTestView: View {
    
    @StateObject var vm = MedicineViewModel()
    
    var body: some View {
        Text("Hello, World!")
    }
    
    
}
