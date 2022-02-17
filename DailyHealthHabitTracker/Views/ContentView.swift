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
            VStack {
                HStack {
                    Text("Journal")
                        .padding()
                        .font(.title3)
                    Spacer()
                    Button(action: {
                        journalIsSheetPresented.toggle()
                    }, label: {
                        Image(systemName: "plus")
                            .padding()
                            .font(.title3)
                    })
                        .sheet(isPresented: $journalIsSheetPresented, onDismiss: {}, content: { NewJournalEntry(today: $today, journalIsSheetPresented: $journalIsSheetPresented) })
                    
                }
                HStack {
                    Text("Medication Schedule")
                        .padding()
                        .font(.title3)
                    Spacer()
                    Image(systemName: "plus")
                        .padding()
                        .font(.title3)
                }
                HStack {
                    Text("Workout")
                        .padding()
                        .font(.title3)
                    Spacer()
                    Image(systemName: "plus")
                        .padding()
                        .font(.title3)
                }
                HStack {
                    Text("Daily Gratitude")
                        .padding()
                        .font(.title3)
                    Spacer()
                    Image(systemName: "plus")
                        .padding()
                        .font(.title3)
                }
            }
            .padding()
            
            
            Spacer()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
