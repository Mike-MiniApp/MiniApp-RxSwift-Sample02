//
//  EmailViewModel.swift
//  MiniApp-RxSwift-Sample02
//
//  Created by 近藤米功 on 2022/07/26.
//

import UIKit
import RxSwift
import RxCocoa

class EmailViewModel{
    // Observable
    var emailTextFieldDriver: Driver<String>

    init(emailTextField: Driver<String>){
        // Modelとの接続
        let email = Email()
        emailTextFieldDriver = emailTextField.map({ text in
            email.addText(text: text)
        })
        .asDriver(onErrorJustReturn: "")
    }
}
