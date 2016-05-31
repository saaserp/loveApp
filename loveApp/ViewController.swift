//
//  ViewController.swift
//  loveApp
//
//  Created by wencai on 16/5/31.
//  Copyright © 2016年 wencai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var gender: UISegmentedControl!
    @IBOutlet weak var birth: UIDatePicker!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBOutlet weak var heightNumber: UISlider!

    @IBOutlet weak var result: UITextView!
    @IBAction func onChange(sender: AnyObject) {
        var slider = sender as! UISlider
        var i = Int(slider.value)
        height.text = "\(i)厘米"
        
    }
    @IBOutlet weak var hasPro: UISwitch!
    @IBOutlet weak var height: UILabel!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func onSubmit(sender: AnyObject) {
        let genderText = gender.selectedSegmentIndex==0 ? "高富帅" : "白富美"
        let gregorian = NSCalendar(calendarIdentifier:NSCalendarIdentifierGregorian)
        let now = NSDate();
        
        let components=gregorian?.components(NSCalendarUnit.NSYearCalendarUnit, fromDate: birth.date,toDate:now,options: NSCalendarOptions(rawValue: 0))
        let age=components?.year
        
        let hp = hasPro.on ? "有房" : "没房"
        result.text="\(name.text)\(genderText)"
        
        
        
    }


}

