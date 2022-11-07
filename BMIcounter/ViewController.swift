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
        txtResult.layer.cornerRadius = 7
        if txtHeight.text == "" || txtWeight.text == "" {
            print("input error")
            txtResult.text = "키와 체중을 입력하세요."
        }
        else {
        var height = Double(txtHeight.text!)!
        var weight = Double(txtWeight.text!)!
        var color = UIColor.white
            print(height,weight)
        
        let bmi = weight/(height*height*0.0001)
        let shortenedBMI = String(format: "%.1f", bmi)
        var body = ""
        if bmi >= 40 {
            body = "3단계 비만"
            color = UIColor(displayP3Red: 0.4, green: 0.0, blue: 0.0, alpha: 1.0)
        }
        else if bmi >= 30 && bmi < 40 {
            body = "2단계 비만"
            color = UIColor(displayP3Red: 0.7, green: 0.0, blue: 0.0, alpha: 1.0)
        }
        else if bmi >= 25 && bmi < 30 {
            body = "1단계 비만"
            color = UIColor(displayP3Red: 1.0, green: 0.0, blue: 0.0, alpha: 1.0)
        }
            else if bmi >= 18.5 && bmi < 25 {
            body = "정상"
                color = UIColor(displayP3Red: 0.0, green: 0.7, blue: 0.3		, alpha: 1.0)
        }
        else{
            body = "저체중"
            color = UIColor(displayP3Red: 1.0, green: 0.0, blue: 0.0, alpha: 1.0)
        }
        
        txtResult.text = "BMI:\(shortenedBMI), 판정:\(body)" //실제출력부분
        txtResult.backgroundColor = color
        print("BMI:\(shortenedBMI), 판정:\(body)")
            
    }
    
}

}
