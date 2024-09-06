//
//  ViewController.swift
//  Colorizer
//
//  Created by Sergey Sukharev on 06.09.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var countTimer: UILabel!
    
    @IBOutlet weak var redButton: UIButton!
    
    @IBOutlet weak var greenButton: UIButton!
    
    @IBOutlet weak var blueButton: UIButton!
    
    @IBOutlet weak var backgroundView: UIView!
    
    var timer: Timer?
    
    var count = 0
    
    func printTimeValue() {
        countTimer.text = "Second last: \(count)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        printTimeValue()
    }

    @IBAction func redButtonAction(_ sender: Any) {
        count = 5
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(countdownTimer), userInfo: nil, repeats: true)
        backgroundView.backgroundColor = UIColor.red
    }
    
    @objc func countdownTimer() {
        count -= 1
        if count == 0 {
            timer?.invalidate()
            timer = nil
        }
    }
    
    @IBAction func greenButtonAction(_ sender: Any) {
    }
    
    @IBAction func blueButtonAction(_ sender: Any) {
    }
    
}

