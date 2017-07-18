//
//  ViewController.swift
//  MiraclePill
//
//  Created by Mark Price on 7/10/16.
//  Copyright © 2016 Devslopes. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var miraclePillEmo: UIImageView!
    @IBOutlet weak var MiraclePills: UILabel!
    @IBOutlet weak var price150: UILabel!
    @IBOutlet weak var Divider: UIView!
    @IBOutlet weak var FullName: UILabel!
    @IBOutlet weak var EnterYourName: UITextField!
    @IBOutlet weak var StreetAddress: UILabel!
    @IBOutlet weak var EnterYourAddress: UITextField!
    @IBOutlet weak var City: UILabel!
    @IBOutlet weak var EnterYourCity: UITextField!
    @IBOutlet weak var State: UILabel!
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var Country: UILabel!
    @IBOutlet weak var BuyNowbtt: UIButton!
    @IBOutlet weak var EnterCountry: UITextField!
    @IBOutlet weak var SuccessIndicator: UIImageView!
    @IBOutlet weak var buyNowBtn: UIImageView!
    let states = ["Alaska","Arkansas", "Alabama","California","Maine","New York"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
        
        self.view.backgroundColor = UIColor.purple
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func stateBtnPressed(_ sender: AnyObject) {
        statePicker.isHidden = false
        Country.isHidden = true
        EnterCountry.isHidden = true
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        Country.isHidden = false
        EnterCountry.isHidden = false
    }
    @IBAction func BuyNowbttPressed(_ sender: AnyObject) {
        miraclePillEmo.isHidden = true
        MiraclePills.isHidden = true
        price150.isHidden = true
        Divider.isHidden = true
        FullName.isHidden = true
        EnterYourName.isHidden = true
        StreetAddress.isHidden = true
        EnterYourAddress.isHidden = true
        City.isHidden = true
        EnterYourCity.isHidden = true
        State.isHidden = true
        statePickerBtn.isHidden = true
        Country.isHidden = true
        EnterCountry.isHidden = true
        buyNowBtn.isHidden = true
        BuyNowbtt.isHidden = true
        SuccessIndicator.isHidden = false
    }
    
}
