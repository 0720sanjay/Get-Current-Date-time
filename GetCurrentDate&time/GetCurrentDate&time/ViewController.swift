//
//  ViewController.swift
//  GetCurrentDate&time
//
//  Created by Lalit Arya on 28/11/18.
//  Copyright © 2018 Lalit Arya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // MARK: - view did load
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMMM d, yyyy 'at' h:mm a"
        dateLabel.text = dateFormatter.string(from: Date())
        
    }
    
    // MARK: - outlets
    
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBAction func unwindToViewController(sender: UIStoryboardSegue) {
        let source = sender.source as! DateTimePickerViewController
        let dateFormatter = DateFormatter()
        let timeFormatter = DateFormatter()
        
        dateFormatter.dateStyle = .long
        timeFormatter.timeStyle = .short
        
        model.date = source.datePicker.date
        model.time = source.timePicker.date
        
        let selectedDate = dateFormatter.string(from: model.date!)
        let selectedTime = timeFormatter.string(from: model.time!)
        
        dateLabel.text = "\(selectedDate) at \(selectedTime)"
        
    }


}

