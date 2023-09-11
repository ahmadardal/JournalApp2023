//
//  JournalEntry.swift
//  JournalApp
//
//  Created by Ahmad Ardal on 2023-09-07.
//

import Foundation

struct JournalEntry {
    
    private var dateFormatter = DateFormatter()
    
    var title: String
    var rawDate: Date
    var notes: String

    
    var date: String {
        return dateFormatter.string(from: rawDate)
    }

    init(title: String, date: Date, notes: String) {
        
        dateFormatter.dateFormat = "yyyy-MM-dd"
        
        self.title = title
        self.rawDate = date
        self.notes = notes
    
    }

}


