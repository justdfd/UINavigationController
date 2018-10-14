//
//  UINavigationController.swift
//  UINavigationController
//
//  Created by Dave Dombrowski on 10/14/18.
//  Copyright © 2018 justDFD. All rights reserved.
//

import UIKit

class NavigationController:UINavigationController {
    
    let redVC = RedViewController()
    let greenVC = GreenViewController()
    let safeAreaView = UIView()
    let titleView = TitleView()
    var titleViewHeightConstraint:NSLayoutConstraint!
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        pushViewController(redVC, animated: false)
        view.addSubview(titleView)
        titleViewHeightConstraint = titleView.heightAnchor.constraint(equalToConstant: 0)
        titleViewHeightConstraint.isActive = true
        titleView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        titleView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        titleView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.3).isActive = true
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    func popGreenVC() {
        popViewController(animated: true)
        print(titleView.frame)
    }
    func pushGreenVC() {
        pushViewController(greenVC, animated: true)
    }
    func changeTitleViewHeight(to:CGFloat) {
        titleViewHeightConstraint.constant = to - view.safeAreaInsets.top
    }
}
class TitleView: UIView {
    let yellowView = UIView()
    let blueView = UIView()
    convenience init() {
        self.init(frame: CGRect.zero)
        self.translatesAutoresizingMaskIntoConstraints = false
        yellowView.translatesAutoresizingMaskIntoConstraints = false
        blueView.translatesAutoresizingMaskIntoConstraints = false
        yellowView.backgroundColor = UIColor.yellow
        blueView.backgroundColor = UIColor.blue
        self.addSubview(yellowView)
        self.addSubview(blueView)
        yellowView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        yellowView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        yellowView.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.5).isActive = true
        yellowView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        blueView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        blueView.leadingAnchor.constraint(equalTo: yellowView.trailingAnchor).isActive = true
        blueView.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.5).isActive = true
        blueView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
    }
}
