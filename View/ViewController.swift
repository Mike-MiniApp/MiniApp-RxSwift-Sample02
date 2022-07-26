//
//  ViewController.swift
//  MiniApp-RxSwift-Sample02
//
//  Created by 近藤米功 on 2022/07/26.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {
    let disposeBag = DisposeBag()

    // MARK: - UI Parts
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var emailLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupBinding()

    }
    private func setupBinding(){
        let emailViewModel = EmailViewModel(emailTextField: emailTextField.rx.text.orEmpty.asDriver())
        emailViewModel.emailTextFieldDriver.drive { result in
            self.emailLabel.text = result
        }
    }


}

