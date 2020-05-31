//
//  PwdModel.swift
//  SuperSenha
//
//  Created by Thiago Antonio Ramalho on 30/05/20.
//  Copyright © 2020 Tramalho. All rights reserved.
//

import Foundation

struct PwdModel {
    var totalOfPwd: Int {
        set {
           self.totalOfPwd = min(newValue, 16)
           self.totalOfPwd = max(0, self.totalOfPwd)
        }
        get {
            return self.totalOfPwd
        }
    }
    
    var totalOfChars: Int = 0
    var hasUpperLetters: Bool = false
    var hasLowerLetters: Bool = false
    var hasNumbers: Bool = false
    var hasUpperChars: Bool = false
    var hasSpecialChars: Bool = false
}
