//
//  RootTabViewController.swift
//  MobiletteSwiftBaseProject
//
//  Mobilette template version 2.1
//
//  Created by Romain ASNAR on 25/04/16.
//  Copyright © 2016 Mobilette. All rights reserved.
//

import Foundation
import UIKit

class RootTabViewController:
    UITabBarController,
    Presentable
{
    // MARK: - Type
    
    enum TabBarIdentifier: Int {
        case item1
        case item2
        case item3
    }
    
	// MARK: - Property

    var presenter: RootTabModuleInterface? = nil
    weak var storyboardSegueDelegate: StoryboardSegueDelegate? = nil

	// MARK: - Life cycle

    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.presenter?.updateView()
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Tab bar controller delegate
    
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem)
    {
        guard let index = tabBar.items?.index(of: item),
            let tabBarIdentifier = TabBarIdentifier(rawValue: index) else {
            return
        }
        switch tabBarIdentifier {
        case .item1:
            self.presenter?.selectItem1Tab(tabIndex: index)
        case .item2:
            self.presenter?.selectItem2Tab(tabIndex: index)
        case .item3:
            self.presenter?.selectItem3Tab(tabIndex: index)
        }
    }
}
