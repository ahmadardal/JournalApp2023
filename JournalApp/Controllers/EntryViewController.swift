//
//  EntryViewController.swift
//  JournalApp
//
//  Created by Ahmad Ardal on 2023-09-11.
//

import UIKit

class EntryViewController: UIViewController {
    
    @IBOutlet weak var lblEntryTitle: UILabel!
    @IBOutlet weak var lblEntryDate: UILabel!
    @IBOutlet weak var txtEntryContent: UITextView!
    
    var entry: JournalEntry?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // När vyn laddas upp, vill vi fylla våra komponenter med text som är specifik för just den valda daganteckningen.
        
        
        
        // Kommer endast köras om vi har fått in en entry
        if let entry = entry {
            lblEntryTitle.text = entry.title
            lblEntryDate.text = entry.date
            txtEntryContent.text = entry.notes
        }
        
        
    }
    


}
