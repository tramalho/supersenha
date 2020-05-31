//
//  PwdGenerator.swift
//  SuperSenha
//
//  Created by Thiago Antonio Ramalho on 30/05/20.
//  Copyright © 2020 Tramalho. All rights reserved.
//

import Foundation

class PwdGenerator {
    
    private let letters = "abcdefghijklmnopqrstuvwxyz"
    private let specialChars = "!@#$%ˆ&*"
    private let numbers = "1234567890"
    
    private let pwdModel : PwdModel
    private var passwords: [String] = []
    
    init(pwdModel: PwdModel) {
        self.pwdModel = pwdModel
    }
    
    func generate() -> [String] {
        
        passwords.removeAll()
        
        let allRules = setupRules()
        
        while passwords.count < pwdModel.totalOfPwd {
            
            var result = ""
            
            for _ in 0..<pwdModel.totalOfChars {
                result.append(generateRandomChar(value: allRules))
            }
            
            passwords.append(result)
        }
        
        return passwords
    }
    
    private func setupRules() -> String {
        var allRules = ""
        
        if pwdModel.hasLowerLetters {
            allRules.append(letters)
        }
        
        if pwdModel.hasUpperLetters {
            allRules.append(letters.uppercased())
        }
        
        if pwdModel.hasSpecialChars {
            allRules.append(specialChars)
        }
        
        if pwdModel.hasNumbers {
            allRules.append(numbers)
        }
        
        return allRules
    }
    
    private func generateRandomChar(value: String) -> String {
        let index = Int(arc4random_uniform(UInt32(value.count)))
        return String(Array(value)[index])
    }
}
