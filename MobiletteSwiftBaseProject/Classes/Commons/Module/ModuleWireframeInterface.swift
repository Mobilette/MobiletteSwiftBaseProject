//
//  ModuleWireframeInterface.swift
//  MobiletteSwiftBaseProject
//
//  Mobilette template version 2.0
//
//  Created by Romain Asnar on 2/3/17.
//  Copyright © 2017 Mobilette. All rights reserved.
//

import Foundation
import UIKit

protocol ModuleWireframeInterface: class
{
    var interfaceIdentifier: String { get }
    
    func presentInterface(fromWindow window: UIWindow)
    func presentNavigationInterface(fromWindow window: UIWindow)
    func presentInterface(fromSegue segue: UIStoryboardSegue)
    func presentNavigationInterface(fromSegue segue: UIStoryboardSegue)
    
    func prepareInterface(fromViewController viewController: UIViewController)
    
    func mainStoryboard() -> UIStoryboard
    func viewControllerFromStoryboard() -> UIViewController
    func navigationControllerFromStoryboard() -> UINavigationController?
}

extension ModuleWireframeInterface
{
    func mainStoryboard() -> UIStoryboard
    {
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        return storyboard
    }
    
    func viewControllerFromStoryboard() -> UIViewController
    {
        let storyboard = self.mainStoryboard()
        let viewController = storyboard.instantiateViewController(withIdentifier: interfaceIdentifier)
        return viewController
    }
    
    func navigationControllerFromStoryboard() -> UINavigationController?
    {
        let storyboard = self.mainStoryboard()
        let navigationController = storyboard.instantiateViewController(withIdentifier: interfaceIdentifier) as? UINavigationController
        return navigationController
    }
    
    func presentInterface(fromWindow window: UIWindow)
    {
        let viewController = self.viewControllerFromStoryboard()
        self.prepareInterface(fromViewController: viewController)
        window.rootViewController = viewController
    }
    
    func presentNavigationInterface(fromWindow window: UIWindow)
    {
        guard let navigationViewController = self.navigationControllerFromStoryboard(),
            let viewController = navigationViewController.viewControllers.first else {
                fatalError("Invalid navigation view controller from window.")
        }
        self.prepareInterface(fromViewController: viewController)
        window.rootViewController = viewController
    }
    
    func presentInterface(fromSegue segue: UIStoryboardSegue)
    {
        self.prepareInterface(fromViewController: segue.destination)
    }
    
    func presentNavigationInterface(fromSegue segue: UIStoryboardSegue)
    {
        guard let navigationViewController = segue.destination as? UINavigationController,
            let viewController = navigationViewController.viewControllers.first else {
                fatalError("Invalid navigation view controller from segue.")
        }
        self.prepareInterface(fromViewController: viewController)
    }
}
