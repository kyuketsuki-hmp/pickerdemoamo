//
//  ViewController.swift
//  pickerdemoamo
//
//  Created by mic-student4 on 7/21/19.
//  Copyright © 2019 MIC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var selectedDate: UILabel!
    
    
    
    @IBAction func changedate(_ sender: UIDatePicker) {
        
//        print(sender.date)
        
        //formatingg date to desired one
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "DD/MM/YYYY HH:MM:SS"
        
        let dateString = dateFormatter.string(from: sender.date)
        
        selectedDate.text = dateString
        
        
        
    }
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

