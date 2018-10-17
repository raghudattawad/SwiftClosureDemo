//
//  ViewController.swift
//  SwiftClosureDemo
//
//  Created by Raghavendra Dattawad on 10/16/18.
//  Copyright © 2018 Raghavendra Dattawad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        
        
       let  result = addTwoNumbers(x: 10, y: 20)
    
    print(result)


    
    }

//// this is normal

    func addTwoNumbers(x:Int,y:Int) -> Int{
        
        
        return x + y
    }
    override func viewWillAppear(_ animated: Bool) {
    
//// closure having no func keyword and no name ///
        
        
        var sumClosure:(Int,Int) -> Int = { x,y in
            
            
            return x + y
        }
        

   let resultClosure = sumClosure(20,20)
    
    print("sum by using closures",resultClosure)
    }


    /// one more way  ///
    
    override func viewDidAppear(_ animated: Bool) {
    
    
    let name = hello()
    
    print(name)
    
    
        //// closure call
    
    
  
    
    //// 2ns way closure call
        
   let nameDetails =     helloWithClosure()
        
        
        print(nameDetails)
    }
  
    
    func hello() -> String {
        
       return "raghu"
        
    }
    
    
//// 2nd way using closures ///
    
    
    var  helloWithClosure:() -> String  = {
        
        return "my name is raghu"
        
    }
    

    

}

