//
//  ViewController.swift
//  SwiftDemo
//
//  Created by piggybear on 2017/10/25.
//  Copyright © 2017年 piggybear. All rights reserved.
//

import UIKit
import PGDatePicker

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    @IBAction func yearHandler(_ sender: Any) {
        let datePicker = PGDatePicker()
        datePicker.delegate = self
        datePicker.show()
        datePicker.minimumDate = NSDate.setYear(2015)
        datePicker.maximumDate = NSDate.setYear(2020)
        datePicker.datePickerMode = .year
    }
    
    @IBAction func yearAndMonthHandler(_ sender: Any) {
        let datePicker = PGDatePicker()
        datePicker.delegate = self
        datePicker.show()
//        datePicker.minimumDate = NSDate.setYear(2015, month: 5)
        datePicker.maximumDate = NSDate.setYear(2020, month: 10)
        datePicker.datePickerMode = .yearAndMonth
    }
    
    @IBAction func dateHandler(_ sender: Any) {
        let datePicker = PGDatePicker()
        datePicker.delegate = self
        datePicker.show()
        datePicker.minimumDate = NSDate.setYear(2015, month: 5, day: 10)
        datePicker.maximumDate = NSDate.setYear(2020, month: 10, day: 20)
        datePicker.datePickerMode = .date
    }
    
    @IBAction func timeHandler(_ sender: Any) {
        let datePicker = PGDatePicker()
        datePicker.delegate = self
        datePicker.show()
        datePicker.datePickerMode = .time
    }
    
    @IBAction func dateAndTimeHandler(_ sender: Any) {
        let datePicker = PGDatePicker()
        datePicker.delegate = self
        datePicker.show()
        datePicker.datePickerMode = .dateAndTime
    }
    
    @IBAction func titleHandler(_ sender: Any) {
        let datePicker = PGDatePicker()
        datePicker.delegate = self
        datePicker.show()
        datePicker.datePickerMode = .date
        datePicker.titleLabel.text = "PGDatePicker"
    }
    
    @IBAction func styleHandler(_ sender: Any) {
        let datePicker = PGDatePicker()
        datePicker.delegate = self
        datePicker.show()
        datePicker.titleLabel.text = "PGDatePicker"
        //设置线条的颜色
        datePicker.lineBackgroundColor = UIColor.red
        //设置选中行的字体颜色
        datePicker.titleColorForSelectedRow = UIColor.red
        //设置未选中行的字体颜色
        datePicker.titleColorForOtherRow = UIColor.black
        //设置取消按钮的字体颜色
        datePicker.cancelButton.setTitleColor(UIColor.black, for: .normal)
        //设置确定按钮的字体颜色
        datePicker.confirmButton.setTitleColor(UIColor.red, for: .normal)
        datePicker.datePickerMode = .date
    }
}

extension ViewController: PGDatePickerDelegate {
    func datePicker(_ datePicker: PGDatePicker!, didSelectDate dateComponents: DateComponents!) {
        print("dateComponents = ", dateComponents)
    }
    
    
}

