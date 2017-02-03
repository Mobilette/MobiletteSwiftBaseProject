//
//  ModuleFactory.swift
//  MobiletteSwiftBaseProject
//
//  Mobilette template version 2.0
//
//  Created by Romain Asnar on 2/3/17.
//  Copyright © 2017 Mobilette. All rights reserved.
//

import Foundation

class ModuleFactory
{
    static func RootTabModule() -> RootTabPresenter
    {
        let presenter = RootTabPresenter()
        let wireframe = RootTabWireframe()
        presenter.wireframe = wireframe
        wireframe.presenter = presenter
        return presenter
    }
    
    /*
    static func <# Interface name #>Module() -> <# Interface name #>ViewPresenter()
    {
//        let networkPresenter = <# Interface name #>NetworkPresenter()
//        let networkController = <# Interface name #>NetworkController()
//        networkPresenter.networkController = networkController
//        networkController.presenter = networkPresenter
        
        let viewPresenter = <# Interface name #>ViewPresenter()
        
        let interactor = <# Interface name #>Interactor()
        interactor.view = viewPresenter
        viewPresenter.interactor = interactor
//        interactor.network = networkPresenter
//        networkPresenter.interactor = interactor
        
        let wireframe = <# Interface name #>Wireframe()
        wireframe.presenter = presenter
        viewPresenter.wireframe = wireframe
        return viewPresenter
    }
    */
}
