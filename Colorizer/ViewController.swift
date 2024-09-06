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
        timer?.invalidate()
        timer = nil
        count = 5
        printTimeValue()
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(countdownTimer), userInfo: nil, repeats: true)
        backgroundView.backgroundColor = UIColor.red
        
    }
    
    @objc func countdownTimer() {
        print("redButton pressed, passed time: \(count).")
        count -= 1
        if count == 0 {
            timer?.invalidate()
            timer = nil
            backgroundView.backgroundColor = UIColor.darkGray
        }
        printTimeValue()
    }
    
    @IBAction func greenButtonAction(_ sender: Any) {
        timer?.invalidate()
        timer = nil
        count = 5
        printTimeValue()
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(countdownTimer), userInfo: nil, repeats: true)
        backgroundView.backgroundColor = UIColor.green
    }
    
    @IBAction func blueButtonAction(_ sender: Any) {
        timer?.invalidate()
        timer = nil
        count = 5
        printTimeValue()
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(countdownTimer), userInfo: nil, repeats: true)
        backgroundView.backgroundColor = UIColor.blue
    }
    
}

