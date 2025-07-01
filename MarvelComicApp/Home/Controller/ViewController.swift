//
//  ViewController.swift
//  MarvelComicApp
//
//  Created by VITOR ANDRADE LOPES on 30/06/25.
//

import UIKit

class ViewController: UIViewController {
    let presentation = HomePresentation()
    override func viewDidLoad() {
        super.viewDidLoad()
        navBarStyling()
        setup()
    }
    
    fileprivate func setup() {
        presentation.controller = self
        presentation.displayLayout()
    }
    
    fileprivate func navBarStyling() {
        
        navigationController?.navStyle(titleNavBar: "Comic Characters", controller: self)
    }

}

