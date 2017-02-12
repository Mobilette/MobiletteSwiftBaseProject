//
//  Presentable.swift
//  MobiletteSwiftBaseProject
//
//  Mobilette template version 2.1
//
//  Created by Romain Asnar on 2/12/17.
//  Copyright © 2017 Mobilette. All rights reserved.
//

protocol Presentable: class {
    associatedtype Presenter
    var presenter: Presenter? { get set }
    weak var storyboardSegueDelegate: StoryboardSegueDelegate? { get set }
}

class AnyPresentable<Base: Presentable>: Presentable
{
    private var _base: Base
    weak var storyboardSegueDelegate: StoryboardSegueDelegate? {
        get {
            return _base.storyboardSegueDelegate
        }
        set {
            _base.storyboardSegueDelegate = storyboardSegueDelegate
        }
    }
    var presenter: Base.Presenter? {
        get {
            return _base.presenter
        }
        set {
            _base.presenter = presenter
        }
    }
    
    init(_ base: Base) {
        _base = base
        presenter = base.presenter
        storyboardSegueDelegate = base.storyboardSegueDelegate
    }
}
