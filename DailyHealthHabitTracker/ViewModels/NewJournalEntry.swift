//
//  NewJournalEntry.swift
//  DailyHealthHabitTracker
//
//  Created by Drew Brokamp on 2/16/22.
//

import SwiftUI

struct NewJournalEntry: View {
    
    @Binding var today: Date
    @Binding var journalIsSheetPresented: Bool
    @State var newJournalEntry: String = "New Journal Entry"
    
    var body: some View {
        VStack {
            HStack {
                Text("Journal Entry for")
                Text(today, style: .date)
            }
            .padding()
            ScrollView {
                TextEditor(text: $newJournalEntry)
                    .font(.body)
                    .cornerRadius(10)
                    .frame(minHeight: 300)
                    
            }
            .padding()
            .shadow(radius: 10)
            .frame(maxHeight: 300)
                    
            
            Button(action: { journalIsSheetPresented = false }, label: { Text("Done")})
                .padding()

        }
    }
}

struct NewJournalEntry_Previews: PreviewProvider {
    
    
    static var previews: some View {
        NewJournalEntry(today: .constant(.now), journalIsSheetPresented: .constant(true))
    }
}
