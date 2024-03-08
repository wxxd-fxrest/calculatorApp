//
//  ViewController.swift
//  calculatorApp
//
//  Created by 밀가루 on 3/5/24.
//

import UIKit

class HeaderController: UIViewController {

    @IBOutlet weak var ACButton: UIButton!
    @IBOutlet weak var PlusMinusButton: UIButton!
    @IBOutlet weak var FountainButton: UIButton!
    
    @IBAction func ACButtonClick(_ sender: UIButton) {
        print("ACButtonClick click")
    }
    
    @IBAction func PlusMinusButtonClick(_ sender: UIButton) {
        print("PlusMinusButton click")
    }
    
    @IBAction func FountainButtonClick(_ sender: UIButton) {
        print("FountainButton click")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // 버튼의 너비의 절반을 radius로 설정하여 완전한 원형으로 만듦
        self.ACButton.layer.cornerRadius = self.ACButton.bounds.width / 2
        self.PlusMinusButton.layer.cornerRadius = self.PlusMinusButton.bounds.width / 2
        self.FountainButton.layer.cornerRadius = self.FountainButton.bounds.width / 2

        // 버튼의 경계를 벗어나는 부분은 잘라냄
        self.ACButton.clipsToBounds = true
        self.PlusMinusButton.clipsToBounds = true
        self.FountainButton.clipsToBounds = true
    }
}

