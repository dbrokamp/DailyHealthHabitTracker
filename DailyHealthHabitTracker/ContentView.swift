//
//  ContentView.swift
//  DailyHealthHabitTracker
//
//  Created by Drew Brokamp on 2/13/22.
//

import SwiftUI

struct ContentView: View {
    

    var today = Date()
    
    var body: some View {
        
        VStack {
            Text(today, style: .date)
                .padding()
            Text("Medication Schedule")
                .padding()
            Text("Workout")
                .padding()
            Text("Daily Gratitute")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
