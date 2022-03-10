//
//  ContentView.swift
//  DailyHealthHabitTracker
//
//  Created by Drew Brokamp on 2/13/22.
//

import SwiftUI

struct ContentView: View {
    
    
    @State var today = Date()
    @State var journalIsSheetPresented = false
    var medicationScheduleIsSheetPresented = false
    var workoutSheetIsPresented = false
    var dailyGratitudeSheetIsPresented = false
    
    var body: some View {
        VStack {
            DateTitle(today: today)
            Text("Weather")
                .task {
                    getWeather()
                }
            TrackerTitle(title: "Journal")
            TrackerTitle(title: "Medication")
            TrackerTitle(title: "Workout")
            TrackerTitle(title: "Daily Gratitude")
        }
    }
    
    func getWeather() {
        // Load URL
        
        // Parse JSON
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct TrackerTitle: View {
    
    var title: String
    
    var body: some View {
        HStack {
            Text(title)
                .padding()
                .font(.title3)
            Spacer()
            Image(systemName: "plus")
                .padding()
                .font(.title3)
        }
    }
}


//Button(action: {
//    journalIsSheetPresented.toggle()
//}, label: {
//    Image(systemName: "plus")
//        .padding()
//        .font(.title3)
//})
//    .sheet(isPresented: $journalIsSheetPresented, onDismiss: {}, content: { NewJournalEntry(today: $today, journalIsSheetPresented: $journalIsSheetPresented) })

struct DateTitle: View {
    
    var today: Date
    
    var body: some View {
        Text(today, style: .date)
            .font(.title)
            .padding()
    }
}
