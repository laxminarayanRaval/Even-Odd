//
//  ViewController.swift
//  Even-Odds
//
//  Created by MacBook Pro on 17/06/21.
//

import UIKit

class ViewController: UIViewController {
    
    private let textBox : UITextField = {
        let textBox = UITextField()
        textBox.placeholder = "Interger"
        textBox.textAlignment = .center
        textBox.textColor = .systemBlue
        return textBox
    }()
    
    private let btn : UIButton = {
        let btn = UIButton()
        btn.setTitle("Check", for: .normal)
        btn.backgroundColor = .magenta
        btn.addTarget(self, action: #selector(check_it), for: .touchUpInside)
        return btn
    }()
    
    
    
    @objc func check_it(){
        let text = textBox.text!
        var res = ""
        if(Int(text) != nil){
            if (Int(text)! % 2 == 0) {
                res = "Even Number"
            }else{
                res = "Odd Number"
            }
            
            let vc = NavigController()
            vc.res = res
            
            navigationController?.pushViewController(vc, animated: true)

        }else{
            let alert = UIAlertController(title: "Please Enter Integer Value Only!!", message: "You've Inserted a Non-Integer Value.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
            
            self.present(alert, animated: true)
            
        }
    
        print(text)
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(btn)
        view.addSubview(textBox)
        
        // Do any additional setup after loading the view.
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        textBox.frame = CGRect(x: 20, y: 80, width: view.width - 40, height: 40)
        btn.frame = CGRect(x: 20, y: textBox.bottom + 20, width: view.width - 40, height: 40)
    }


}

