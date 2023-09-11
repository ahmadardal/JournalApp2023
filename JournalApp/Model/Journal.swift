//
//  Journal.swift
//  JournalApp
//
//  Created by Ahmad Ardal on 2023-09-07.
//

import Foundation

class Journal {
    
    private var entries: [JournalEntry]
    
    init() {
        self.entries = [JournalEntry(title: "Exempel", date: Date(), notes: "Hej")]
    }
    
    @objc // Gör så att man kan kalla på denna funktion från Objective-C
    func getEntriesCount() -> Int {
        return entries.count
    }
    
    func getEntry(atIndex index: Int) -> JournalEntry {
        return entries[index]
    }
    
    func addEntry(newEntry: JournalEntry) {
        entries.append(newEntry)
    }

}
