//
//  ViewController.swift
//  calculatorApp
//
//  Created by 밀가루 on 3/5/24.
//

import UIKit

class HeaderController: UIViewController {
    // number Label
    @IBOutlet weak var numberLabel: UILabel!

    // Header Button Collection
    @IBOutlet var headerButtons: [UIButton]!
    @IBAction func headerButtonClicked(_ sender: UIButton) {
        if let index = headerButtons.firstIndex(of: sender) {
            switch index {
            case 0:
                print("ACButton click")
            case 1:
                print("PlusMinusButton click")
            case 2:
                print("FountainButton click")
            default:
                break
            }
        }
    }
    
    // Right Button
    @IBOutlet var rightButtons: [UIButton]!
    @IBAction func rightButtonClicked(_ sender: UIButton) {
        if let index = rightButtons.firstIndex(of: sender) {
            switch index {
            case 0:
                print("DivisionButton click")
            case 1:
                print("MultiplicationButton click")
            case 2:
                print("MinusButton click")
            case 3:
                print("PlusButton click")
            case 4:
                print("ResultButton click")
            default:
                break
            }
        }
    }
    
    // Number Button
    @IBOutlet var numberButtons: [UIButton]!
    @IBAction func numberButtonClicked(_ sender: UIButton) {
        if let index = numberButtons.firstIndex(of: sender) {
            switch index {
            case 0:
                print("1 click")
            case 1:
                print("2 click")
            case 2:
                print("3 click")
            case 3:
                print("4 click")
            case 4:
                print("5 click")
            case 5:
                print("6 click")
            case 6:
                print("7 click")
            case 7:
                print("8 click")
            case 8:
                print("9 click")
      
            default:
                break
            }
        }
    }

    
    @IBOutlet weak var ZeroButton: UIButton!
    @IBOutlet weak var SpotButton: UIButton!

    // Zero Button
    @IBAction func ZeroButtonClick(_ sender: UIButton) {
        print("ZeroButton click")
    }

    // Spot Button
    @IBAction func SpotButtonClick(_ sender: UIButton) {
        print("SpotButton click")
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Header Button
        for button in headerButtons {
            button.layer.cornerRadius = button.bounds.width / 2
            button.clipsToBounds = true
        }
        
        // Right Button
        for button in rightButtons {
            button.layer.cornerRadius = button.bounds.width / 2
            button.clipsToBounds = true
        }
        
        // Number Button
        for button in numberButtons {
            button.layer.cornerRadius = button.bounds.width / 2
            button.clipsToBounds = true
        }

        // Spot Button
        self.SpotButton.layer.cornerRadius = self.SpotButton.bounds.width / 2
        self.SpotButton.clipsToBounds = true

        // Zero Button
        let minSide = min(self.ZeroButton.bounds.width, self.ZeroButton.bounds.height)
        self.ZeroButton.layer.cornerRadius = minSide / 2 // 버튼의 너비와 높이 중 작은 값의 절반을 radius로 설정하여 원형으로 만듦
        self.ZeroButton.clipsToBounds = true // 버튼의 경계를 벗어나는 부분을 잘라냄
    }
}

