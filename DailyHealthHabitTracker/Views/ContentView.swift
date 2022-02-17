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
            Text(today, style: .date)
                .font(.title)
                .padding()
            Spacer()
                .frame(height: 10)
            HStack {
                Text("Journal")
                    .padding()
                Spacer()
                Button(action: {
                    journalIsSheetPresented.toggle()
                }, label: {
                    Image(systemName: "plus")
                        .padding()
                })
                    .sheet(isPresented: $journalIsSheetPresented, onDismiss: {}, content: { NewJournalEntry(today: $today, journalIsSheetPresented: $journalIsSheetPresented) })

            }
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
