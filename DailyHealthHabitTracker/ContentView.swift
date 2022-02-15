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
            Spacer()
                .frame(height: 10)
            HStack {
                Text("Medication Schedule")
                    .padding()
                Spacer()
                Image(systemName: "plus")
                    .padding()
            }
            HStack {
                Text("Workout")
                    .padding()
                Spacer()
                Image(systemName: "plus")
                    .padding()
            }
            HStack {
                Text("Daily Gratitude")
                    .padding()
                Spacer()
                Image(systemName: "plus")
                    .padding()
            }
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
