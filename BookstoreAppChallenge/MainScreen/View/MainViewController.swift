//
//  MainViewController.swift
//  BookstoreAppChallenge
//
//  Created by Yerlan Omarov on 04.12.2023.
//

import UIKit
import SnapKit

class MainViewController: UIViewController {
    
    lazy var button: UIButton = {
        let button = UIButton()
        button.setTitle("MainVC", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        view.addSubview(button)
        setupLayout()
    }
    
    func setupLayout() {
        button.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
    }
    
    @objc func didTapButton() {
        self.navigationController?.pushViewController(BooksViewController(), animated: true)
    }
}

