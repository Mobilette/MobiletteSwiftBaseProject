//
//  ModuleFactory.swift
//  MobiletteSwiftBaseProject
//
//  Mobilette template version 2.1
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
    static func <# Module Name #>Module() -> <# Module Name #>ViewPresenter
    {
        let networkPresenter = <# Module Name #>NetworkPresenter()
        let networkController = <# Module Name #>NetworkController()
        networkPresenter.networkController = networkController
        networkController.presenter = networkPresenter
    
        let viewPresenter = <# Module Name #>ViewPresenter()
        
        let interactor = <# Module Name #>Interactor()
        interactor.view = viewPresenter
        viewPresenter.interactor = interactor
        interactor.network = networkPresenter
        networkPresenter.interactor = interactor
    
        let wireframe = <# Module Name #>Wireframe()
        wireframe.presenter = viewPresenter
        viewPresenter.wireframe = wireframe
        return viewPresenter
    }
    */
}
