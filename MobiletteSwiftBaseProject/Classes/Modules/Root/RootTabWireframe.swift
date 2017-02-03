//
//  RootTabWireframe.swift
//  MobiletteSwiftBaseProject
//
//  Mobilette template version 2.0
//
//  Created by Romain ASNAR on 25/04/16.
//  Copyright © 2016 Mobilette. All rights reserved.
//

import UIKit

class RootTabWireframe: ModuleWireframeInterface
{
    // MARK: - Property
    
    var presenter: RootTabModuleInterface? = nil
    fileprivate var rootViewController: RootTabViewController? = nil
    
    // MARK: - Tab Controller Presentation
    
    func presentItem1Interface(tabBarIndex: Int)
    {
//        let wireframe = ModuleFactory.<# Interface name #>Module().wireframe
//        if let navigationViewController = self.rootViewController?.viewControllers?[tabBarIndex] as? UINavigationController,
//            let viewController = navigationViewController.viewControllers.first as? <# Interface name #>ViewController {
//            wireframe.prepareInterface(fromViewController: viewController)
//        }
    }
    
    func presentItem2Interface(tabBarIndex: Int)
    {
//        let wireframe = ModuleFactory.<# Interface name #>Module().wireframe
//        if let navigationViewController = self.rootViewController?.viewControllers?[tabBarIndex] as? UINavigationController,
//            let viewController = navigationViewController.viewControllers.first as? <# Interface name #>ViewController {
//            wireframe.prepareInterface(fromViewController: viewController)
//        }
    }
    
    func presentItem3Interface(tabBarIndex: Int)
    {
//        let wireframe = ModuleFactory.<# Interface name #>Module().wireframe
//        if let navigationViewController = self.rootViewController?.viewControllers?[tabBarIndex] as? UINavigationController,
//            let viewController = navigationViewController.viewControllers.first as? <# Interface name #>ViewController {
//            wireframe.prepareInterface(fromViewController: viewController)
//        }
    }
    
    // MARK: - Module Wireframe Interface
    
//    var interfaceIdentifier: String { return "RootViewController" }
    var interfaceIdentifier: String = "RootTabViewController"
    
    func prepareInterface(fromViewController viewController: UIViewController)
    {
        guard let viewController = viewController as? RootTabViewController else {
            abort()
        }
        viewController.presenter = self.presenter
        self.rootViewController = viewController
    }
}
