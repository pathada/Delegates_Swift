//
//  SecondViewController.swift
//  Delegates_Swift
//
//  Created by Padmaja Pathada on 3/24/23.
//

import UIKit


protocol secondVCDelegate: AnyObject{
    func updateText(text:String)
    func succesMessage()
}



class SecondViewController: UIViewController {

    @IBOutlet weak var txtFld: UITextField!
    weak var delegateObj:secondVCDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func doneButtonAction(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
        self.delegateObj?.updateText(text: txtFld.text ?? "text is empty")
        self.delegateObj?.succesMessage()
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
