//
//  ViewController.swift
//  BMIcounter
//
//  Created by sujin on 2022/11/05.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var txtHeight: UITextField!
    
    @IBOutlet var txtWeight: UITextField!
    @IBOutlet var txtResult: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnBMI(_ sender: UIButton) {
        if txtHeight.text == "" || txtWeight.text == "" {
            print("input error")
            txtResult.text = "키와 체중을 입력하세요."
        }
        else {
        var height = Double(txtHeight.text!)!
        var weight = Double(txtWeight.text!)!
        print(height,weight)
        
        let bmi = weight/(height*height*0.0001)
        let shortenedBMI = String(format: "%.1f", bmi)
        var body = ""
        if bmi >= 40 {
            body = "3단계 비만"
        }
        else if bmi >= 30 && bmi < 40 {
            body = "2단계 비만"
        }
        else if bmi >= 25 && bmi < 30 {
            body = "1단계 비만"
        }
            else if bmi >= 18.5 && bmi < 25 {
            body = "정상"
        }
        else{
            body = "저체중"
        }
        
        txtResult.text = "BMI:\(shortenedBMI), 판정:\(body)"
        print("BMI:\(shortenedBMI), 판정:\(body)")
            
    }
    
}

}
