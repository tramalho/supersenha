//
//  PasswordsViewController.swift
//  SuperSenha
//
//  Created by Thiago Antonio Ramalho on 30/05/20.
//  Copyright © 2020 Tramalho. All rights reserved.
//

import UIKit

class PasswordsViewController: UIViewController {
    
    @IBOutlet weak var passwords: UITextView!
    
    var pwdModel: PwdModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        generatePwd()
    }
    
    @IBAction func generate(_ sender: Any) {
        generatePwd()
    }
    
    private func generatePwd() {
        
        if let pm = pwdModel {
            title = "Total de Senhas: \(pm.totalOfPwd)"
            passwords.scrollRangeToVisible(NSRange(location: 0, length: 0))
            passwords.text = ""
            
            let result = PwdGenerator(pwdModel: pm).generate()
            for pwd in result {
                passwords.text.append("\(pwd)\n\n")
            }
        }
    }
}
