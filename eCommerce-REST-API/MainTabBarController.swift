//
//  MainTabBarController.swift
//  eCommerce-REST-API
//
//  Created by Dawei Hao on 2024/10/5.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        setupNCs()
    }
    
    private func setupNC(_ viewController: UIViewController, title: String, tabBarItemTitle: String,  image: UIImage) -> UINavigationController {
         viewController.title = title
         let navigationController = UINavigationController(rootViewController: viewController)
         navigationController.tabBarItem.title = tabBarItemTitle
         navigationController.tabBarItem.image = image
         return navigationController
     }
    
    private func setupNCs() {
        let productNC = setupNC(ProductViewController(), title: "Product Page", tabBarItemTitle: "Product", image: Images.cart)
        viewControllers = [productNC]
    }
}
