//
//  pickerViewController.swift
//  pickerdemoamo
//
//  Created by mic-student4 on 7/21/19.
//  Copyright © 2019 MIC. All rights reserved.
//

import UIKit

class pickerViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {
    
    //model
    
//    var categories = [ "men ware", "Lady ware", "kid ware"]
//    var size = ["S","M","L","XXL"]
//    var colors = ["BLUE","red","GREEN"]
//    var modepurchase = ["COD","MONEY"]
    
    var items = [
    
   [ "men ware", "Lady ware", "kid ware"],
        ["S","M","L","XXL"],
      ["BLUE","red","GREEN"],
       ["COD","MONEY"]
    

    ]
    
    
    
    
    
    @IBOutlet weak var selectedLabel: UILabel!
    
    
    @IBOutlet weak var pickerView: UIPickerView!
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        
        
        //return 4
        return items.count
        
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
//        return categories.count
        
//        switch component {
//        case 0: return categories.count
//        case 1: return size.count
//        case 2: return colors.count
//        case 3: return modepurchase.count
//        default: return 0
//        }

        return items[component].count
        
        
    }
        
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
//        return categories[row]
        
//        switch component {
//        case 0: return categories[row]
//        case 1: return size[row]
//        case 2: return colors[row]
//        case 3: return modepurchase[row]
//        default: return ""
//
//        }
        
        return items[component][row]
        
        
    
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print( pickerView.selectedRow(inComponent: 0),pickerView.selectedRow(inComponent: 0),pickerView.selectedRow(inComponent: 1),pickerView.selectedRow(inComponent: 1))
        
        var selectedItemString = ""
        
        for i in 0 ..< items.count {
            selectedItemString += items[i][pickerView.selectedRow(inComponent: i)]
            
            
        }
        
//    var selectedItemString = categories[pickerView.selectedRow(inComponent: 0)]
//        selectedItemString += size[pickerView.selectedRow(inComponent: 1)]
//        selectedItemString += colors[pickerView.selectedRow(inComponent: 1)]
//        selectedItemString += modepurchase[pickerView.selectedRow(inComponent: 1)]
//
    selectedLabel.text = selectedItemString
    }
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerView.dataSource = self
        pickerView.delegate = self

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
