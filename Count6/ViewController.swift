//
//  ViewController.swift
//  Count6
//
//  Created by Sakai Aoi on 2021/02/08.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var label:UILabel!
    var number:Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        label.text = String(number)
    }
    
    @IBAction func plus(){
        number += 1
        label.text = String(number)
        color()
    }
    
    @IBAction func minus(){
        number -= 1
        label.text = String(number)
        color()
    }
    
    @IBAction func clear(){
        number = 0
        label.text = String(number)
        color()
    }
    
    func color(){
        if number % 15 == 0 {
            label.textColor = UIColor.red
        }else if number % 3 == 0{
            label.textColor = UIColor.green
        }else if number % 5 == 0{
            label.textColor = UIColor.blue
        }else{
            label.textColor = UIColor.black
        }
    }


}

