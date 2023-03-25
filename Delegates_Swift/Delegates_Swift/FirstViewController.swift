//
//  ViewController.swift
//  Delegates_Swift
//
//  Created by Padmaja Pathada on 3/24/23.
//

import UIKit

class FirstViewController: UIViewController, secondVCDelegate {

    @IBOutlet weak var textLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func enterButtonAction(_ sender: Any) {
        let secondVC = self.storyboard?.instantiateViewController(withIdentifier: "second") as! SecondViewController
        secondVC.delegateObj = self
        self.navigationController?.pushViewController(secondVC, animated: true)
        
    }
    
    func updateText(text: String) {
        textLbl.text = text
    }
    func succesMessage() {
        print("Delegation is Success")
    }
}

