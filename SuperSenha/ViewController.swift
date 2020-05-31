//
//  ViewController.swift
//  SuperSenha
//
//  Created by Thiago Antonio Ramalho on 29/05/20.
//  Copyright © 2020 Tramalho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var totalOfPwd: UITextField!
    @IBOutlet weak var totalOfChars: UITextField!
    @IBOutlet weak var hasLowerChars: UISwitch!
    @IBOutlet weak var hasNumbers: UISwitch!
    @IBOutlet weak var hasUpperChars: UISwitch!
    @IBOutlet weak var hasSpecialChars: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let pvc = segue.destination as? PasswordsViewController {

            var totalPwd = 1
            if let tp = Int(totalOfPwd.text!) {
                totalPwd = tp
            }
            
            var totalChars = 5
            if let tc = Int(totalOfChars.text!) {
                totalChars = tc
            }
            
            let passwordModel = PwdModel(totalOfPwd: totalPwd,
                                         totalOfChars: totalChars,
                                         hasUpperLetters: hasUpperChars.isOn,
                                         hasLowerLetters: hasLowerChars.isOn,
                                         hasNumbers: hasNumbers.isOn,
                                         hasSpecialChars: hasSpecialChars.isOn)
            pvc.pwdModel = passwordModel
            view.endEditing(true)
        }
    }
}

