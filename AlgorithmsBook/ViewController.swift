//
//  ViewController.swift
//  AlgorithmsBook
//
//  Created by dandy_zhouli on 2021/1/22.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func btnClick(_ sender: UIButton) {
        
        let Count64 = Fibonacci.recursionCal(4)
        let Count64_ = Fibonacci.forCal(64)
        let Count64__ = Fibonacci.mathEquation(64)
        
        print("第64个月的兔子数：recursionCal:\(Count64)，forCalL:\(Count64_)，mathEquation:\(Count64__)")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }


}

