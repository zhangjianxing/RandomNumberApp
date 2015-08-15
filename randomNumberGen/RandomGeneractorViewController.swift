//
//  RandomGeneractorViewController.swift
//  randomNumberGen
//
//  Created by Jianxing Zhang on 15/8/14.
//  Copyright (c) 2015年 Jianxing Zhang. All rights reserved.
//

import UIKit

class RandomGeneractorViewController: UIViewController {
    
    @IBOutlet weak var startNumber: UITextField!
    
    @IBOutlet weak var endNumber: UITextField!
    
    @IBOutlet weak var dashBoard: UILabel!
    
    override func viewDidLoad() {
        
    }

    @IBAction func click() {
        var start : Int? = startNumber.text.toInt()
        var end : Int? = endNumber.text.toInt()
        
        if start == nil{
            dashBoard.text = "start number is not integer"
        }
        else if end == nil{
            dashBoard.text = "end number is not integer"
        }
        else {
            let diff : Int = end! - start!
            if diff < 0 {
                dashBoard.text = "end number is greater than start number"
            }
            else{
                var random = arc4random_uniform(UInt32(diff+1))
                dashBoard.text = "The Number is: \(random+UInt32(start!))"
                println("\(random)")

                
            }
        }
        println("\(start)  \(end)")
    }
}
