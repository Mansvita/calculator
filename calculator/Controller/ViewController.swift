//
//  ViewController.swift
//  calculator
//
//  Created by MANSVITA on 13/09/22.
//

import UIKit

 //MARK: -enum
enum operatorType{
    case add
    case multiple
    case subtract
    case division
}

class ViewController: UIViewController {
    // MARK: - Outlets
    @IBOutlet weak var outputlbl: UILabel!
   
    // MARK: -variable declaration
    
      var results = 0
    var currentvalue:Int = 0
    //var num1:Double = 0
   // var num2:Double = 0
   // var output:Double = 0
    var Operatorsign = ""
    var mathoperation = false
    var subtotal:Int = 1
    var charcterstring = ""
    var div:String = ""
    var lastoperator:operatorType?
    // MARK: - view life cycle
    //didload
    override func viewDidLoad() {
        super.viewDidLoad()
        clearall()
    }
    // MARK: - buttons
    //btn1
    @IBAction func btn1(_ sender: Roundbutton) {
        
        outputlbl.text = outputlbl.text! + "1"
        
    }
    
   
    //btn2
    @IBAction func btn2(_ sender: Roundbutton) {
        outputlbl.text = outputlbl.text! + "2"
    }
    
  
    //btn3
    @IBAction func btn3(_ sender: Roundbutton) {
        outputlbl.text = outputlbl.text! + "3"
    }
   
    //btn4
    @IBAction func btn4(_ sender: Roundbutton) {
        outputlbl.text = outputlbl.text! + "4"
    }
    
    //btn5
    @IBAction func btn5(_ sender: Roundbutton) {
        outputlbl.text = outputlbl.text! + "5"
    }
    
   
    //btn6
    @IBAction func btn6(_ sender: Roundbutton) {
        outputlbl.text = outputlbl.text! + "6"
    }
    
   
    //btn7
    @IBAction func btn7(_ sender: Roundbutton) {
        outputlbl.text = outputlbl.text! + "7"
    }
   
    //btn8
    @IBAction func btn8(_ sender: Roundbutton) {
        outputlbl.text = outputlbl.text! + "8"
    }
    
    
    //btn9
    @IBAction func btn9(_ sender: Roundbutton) {
        outputlbl.text = outputlbl.text! + "9"
    }
    
    
    //btn10
    @IBAction func btn0(_ sender: Roundbutton) {
        outputlbl.text = outputlbl.text! + "0"
    }
    
    
    //buttondecimal
    @IBAction func btndot(_ sender: Roundbutton) {
        outputlbl.text = outputlbl.text! + String(".")
        //num1 = Double(outputlbl.text!)!
    }
    // MARK: - operations
    //button addition
    @IBAction func btnadd(_ sender: Roundbutton) {
       currentvalue = Int(outputlbl.text!) ?? 0
       results = results + currentvalue
       outputlbl.text = String(results)
       charcterstring.append("+")
    print(results)
       
      
    }
    // MARK: - Outlets
    //button substract
    @IBAction func btnsubtract(_ sender: Roundbutton) {
        Operatorsign = "-"
        currentvalue = Int(outputlbl.text!) ?? 0
        results = results - currentvalue
        outputlbl.text = String(results)
       print(results)
        //clearall()
        
    }
    // MARK: - Outlets
    //button multiply
    @IBAction func btnmultiply(_ sender: Roundbutton) {
        Operatorsign = "*"
        currentvalue = Int(outputlbl.text!) ?? 0
        subtotal = subtotal * currentvalue
        outputlbl.text = String(subtotal)
        print(subtotal)
         //clearall()
    }
    // MARK: - Outlets
    //button divide
    @IBAction func btndevide(_ sender: Roundbutton) {
        Operatorsign = "/"
        
        currentvalue = Int(outputlbl.text!) ?? 0
        subtotal = subtotal / currentvalue
        outputlbl.text = String(subtotal)
        print(subtotal)
        //clearall()
    }
    // MARK: - Outlets
    //button persontile
    @IBAction func btnpresontile(_ sender: Roundbutton) {
        Operatorsign = "%"
        results = Int(outputlbl.text!) ?? 0
        clearall()
    }
    // MARK: - Outlets
    //button plusminus
    @IBAction func btnplusminus(_ sender: Roundbutton) {
        
        if Int(outputlbl.text!)! - Int(outputlbl.text!)! == 0 {
            
            outputlbl.text = String(Int(outputlbl.text!)! * -1)
            } else {
            outputlbl.text = String(Float(outputlbl.text!)! * -1)
        }
        
    }
    // MARK: - clearbutton
    //button clear
    @IBAction func btnallclear(_ sender: Roundbutton) {
        clearall()
    }
    // MARK: - equalto operation
    //button equalto
    @IBAction func btnequalto(_ sender: Roundbutton) {
        // Operatorsign = "="
        currentvalue = Int(outputlbl.text!) ?? 0
       
        switch Operatorsign{
        case "+" :
            results = results + currentvalue
            outputlbl.text = String(results)
            print(results)
        case "-" :
            results = results - currentvalue
            outputlbl.text = String(results)
            print(results)
        case "*" :
            results = results * currentvalue
            outputlbl.text = String(results)
            print(results)
        case "/" :
            results = results / currentvalue
            outputlbl.text = String(results)
            print(results)
        default:
            print("something wrong")
        }
    }
    // MARK: - Outlets
    //clear function
    func clearall(){
        outputlbl.text = ""
    }
    
    
}




//        case "-" :
//            output = Double(num1 - num2)
//            outputlbl.text = String(output)
//
//        case "*" :
//            output = Double(num1 * num2)
//            outputlbl.text = String(output)
//
//        case "/" :
//            output = Double(num1 / num2)
//            outputlbl.text = String(output)
//
//        case "%" :
//            if output == 0{
//                 num1 /= 100
//            }else{
//                num1 = num2 * Double(output) / 100
//            }
//            outputlbl.text = String(num1)
//
//        case "." :
//            if mathoperation || outputlbl.text!.isEmpty
//                {
//                    outputlbl.text = "0."
//                    mathoperation = false
//                }
//                else
//                {
//                    if !outputlbl.text!.contains(".") {
//                       outputlbl.text = outputlbl.text! + "."
//                    }
//                }
//                num1 = Double(outputlbl.text!)!
