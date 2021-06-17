//
//  NavigController.swift
//  Even-Odd
//
//  Created by MacBook Pro on 17/06/21.
//

import UIKit

class NavigController: UIViewController {
    
    var res = ""
    
    private let ltr : UILabel = {
        let l = UILabel()
        l.text = ""
        l.backgroundColor = .systemPink
        return l
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Result"
        self.view.backgroundColor = .yellow
        view.addSubview(ltr)
        ltr.text = res

        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        ltr.frame = CGRect(x: 20, y: 80, width: view.width - 40, height: 40)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
