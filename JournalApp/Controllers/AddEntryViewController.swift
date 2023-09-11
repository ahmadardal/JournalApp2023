//
//  AddEntryViewController.swift
//  JournalApp
//
//  Created by Ahmad Ardal on 2023-09-07.
//

import UIKit

class AddEntryViewController: UIViewController {

    
    @IBOutlet weak var txtTitle: UITextField!
    @IBOutlet weak var txtNotes: UITextView!
    
    @IBOutlet weak var switchDate: UISwitch!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    var myJournal: Journal?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func onSwitchDate(_ sender: Any) {
        if switchDate.isOn {
            // Då visar upp DatePickern
            
            datePicker.isHidden = false
            
        } else {
            // Göm DatePickern
            
            datePicker.isHidden = true
            
        }
    }
    
    
    @IBAction func onSave(_ sender: UIBarButtonItem) {
        
        guard let title = txtTitle.text,
              let notes = txtNotes.text else {
                  return
              }
        
        
        let newEntry = JournalEntry(title: title, date: switchDate.isOn ? datePicker.date : Date(), notes: notes)
        
        myJournal?.addEntry(newEntry: newEntry)
        
        self.navigationController?.popViewController(animated: true)
        
    }
    
}
