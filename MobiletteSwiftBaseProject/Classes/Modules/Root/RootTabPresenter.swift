//
//  RootTabPresenter.swift
//  MobiletteSwiftBaseProject
//
//  Mobilette template version 2.1
//
//  Created by Romain ASNAR on 25/04/16.
//  Copyright © 2016 Mobilette. All rights reserved.
//

import Foundation

class RootTabPresenter:
    RootTabModuleInterface
{
	// MARK: - Property

    var wireframe: RootTabWireframe? = nil

    // MARK: - Root module interface

    func updateView()
    {
    	self.selectItem1Tab(tabIndex: 0)
    }
    
    func selectItem1Tab(tabIndex: Int)
    {
        self.wireframe?.presentItem1Interface(tabBarIndex: tabIndex)
    }
    
    func selectItem2Tab(tabIndex: Int)
    {
        self.wireframe?.presentItem2Interface(tabBarIndex: tabIndex)
    }
    
    func selectItem3Tab(tabIndex: Int)
    {
        self.wireframe?.presentItem3Interface(tabBarIndex: tabIndex)
    }
}
