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
        // Do any additional setup after loading the view, typically from a nib.
    }


}

