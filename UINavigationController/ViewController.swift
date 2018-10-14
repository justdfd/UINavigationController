//
//  ViewController.swift
//  UINavigationController
//
//  Created by Dave Dombrowski on 10/14/18.
//  Copyright © 2018 justDFD. All rights reserved.
//

import UIKit

class RedViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.red
        let showGreenVC = UIBarButtonItem(title: "Green \u{25B6}", style: .plain, target: self, action: #selector(pushGreenVC))
        self.navigationItem.rightBarButtonItem = showGreenVC
    }
    @objc func pushGreenVC() {
        let navController = self.navigationController as! NavigationController
        navController.pushGreenVC()
    }
    override func viewSafeAreaInsetsDidChange() {
        let navController = self.navigationController as! NavigationController
        navController.changeTitleViewHeight(to: view.safeAreaInsets.top)
    }
}

class GreenViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.green
        let showRedVC = UIBarButtonItem(title: "\u{25C0} Red", style: .plain, target: self, action: #selector(popGreenVC))
        self.navigationItem.leftBarButtonItem = showRedVC
    }
    @objc func popGreenVC() {
        let navController = self.navigationController as! NavigationController
        navController.popGreenVC()
    }
    override func viewSafeAreaInsetsDidChange() {
        let navController = self.navigationController as! NavigationController
        navController.changeTitleViewHeight(to: view.safeAreaInsets.top)
    }
}

