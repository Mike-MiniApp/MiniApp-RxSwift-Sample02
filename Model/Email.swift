//
//  Email.swift
//  MiniApp-RxSwift-Sample02
//
//  Created by 近藤米功 on 2022/07/26.
//

import UIKit
import RxSwift
import RxCocoa

class Email{
    func addText(text: String) -> String{
        return "あなたのemailは" + text + "です"
    }
}
