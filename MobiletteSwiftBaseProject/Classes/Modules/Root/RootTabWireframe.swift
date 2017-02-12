//
//  RootTabWireframe.swift
//  MobiletteSwiftBaseProject
//
//  Mobilette template version 2.1
//
//  Created by Romain ASNAR on 25/04/16.
//  Copyright © 2016 Mobilette. All rights reserved.
//

import UIKit

class RootTabWireframe: Routable
{
    // MARK: - Property
    
    var interfaceIdentifier: String = "RootTabViewController"
    var presenter: RootTabModuleInterface? = nil
    weak var viewController: RootTabViewController? = nil
    
    // MARK: - Storyboard segue
    
    private var preparedSegue: UIStoryboardSegue? = nil
    
    func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        self.preparedSegue = segue
    }
    
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
}
