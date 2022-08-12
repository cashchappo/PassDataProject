//
//  ViewController.swift
//  PassDataProject
//
//  Created by Danil Bochkarev on 12.08.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginTF: UITextField!
    @IBOutlet weak var PasswordTF: UITextField!
    
    
    @IBOutlet weak var resultLabel: UILabel!
    
    
    
    @IBAction func loginTapped(_ sender: UIButton) {
        
    }
    
    @IBAction func unwindSegueToMainScreen(segue: UIStoryboardSegue) {
        guard let svc = segue.source as? SecondViewController else { return }
        resultLabel.text = svc.label.text
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let dvc = segue.destination as? SecondViewController else { return }
        dvc.login = loginTF.text
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}

