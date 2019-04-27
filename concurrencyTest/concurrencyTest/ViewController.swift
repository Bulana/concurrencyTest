//
//  ViewController.swift
//  concurrencyTest
//
//  Created by Bulana on 2019/04/27.
//  Copyright © 2019 Bulana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func calculatePrimeNumbers(_ sender: Any) {
        for number in 0 ... 100_000_000 {
            let isPrimeNumber = isPrime(number: number)
            print("\(number) is prime: \(isPrimeNumber)")
        }
    }
    
    @IBOutlet weak var primeNumberButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func isPrime(number: Int) -> Bool {
        if number <= 1 {
            return false
        }
        if number <= 3 {
            return true
        }
        var i = 2
        while i * i <= number {
            if number % i == 0 {
                return false
            }
            i = i + 2
        }
        return true
    }

}

