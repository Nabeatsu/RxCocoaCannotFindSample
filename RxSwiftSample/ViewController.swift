//
//  ViewController.swift
//  RxSwiftSample
//
//  Created by 田辺信之 on 2019/05/09.
//  Copyright © 2019 田辺信之. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {
    
    @IBAction func tappedGitHubSignUp(_ sender: Any) {
        let storyBoard = UIStoryboard(name: "GitHubSignup1", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "GitHubSignUpViewController1")
        self.navigationController?.pushViewController(vc, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }


}

