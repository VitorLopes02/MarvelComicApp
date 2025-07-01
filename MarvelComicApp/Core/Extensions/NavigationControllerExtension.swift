//
//  NavigationControllerExtension.swift
//  MarvelComicApp
//
//  Created by VITOR ANDRADE LOPES on 30/06/25.
//

import UIKit

extension UINavigationController {
    
    func navStyle(titleNavBar: String, controller: UIViewController) {
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = .red
        appearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]

        navigationBar.standardAppearance = appearance
        navigationBar.scrollEdgeAppearance = appearance
        navigationBar.compactAppearance = appearance
        
        let title = UILabel()
        title.text = titleNavBar
        title.font = UIFont.systemFont(ofSize: 48)
        title.font = "Bentham-Regular"
        title.textColor = .white
        

        controller.navigationItem.leftBarButtonItem = UIBarButtonItem(customView: title)
    }
}

