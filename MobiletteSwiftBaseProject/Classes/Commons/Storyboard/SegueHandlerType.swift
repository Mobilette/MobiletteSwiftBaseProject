//
//  SegueHandlerType.swift
//  MobiletteSwiftBaseProject
//
//  Mobilette template version 2.0
//
//  Created by Romain ASNAR on 25/04/16.
//  Copyright © 2016 Mobilette. All rights reserved.
//

import UIKit

public protocol SegueHandlerType
{
    associatedtype SegueIdentifier: RawRepresentable
}

extension SegueHandlerType where Self: UIViewController, SegueIdentifier.RawValue == String {
    
    public func performSegueWithIdentifier(segueIdentifier: SegueIdentifier, sender: AnyObject?)
    {
        performSegue(withIdentifier: segueIdentifier.rawValue, sender: sender)
    }
    
    public func segueIdentifierForSegue(segue: UIStoryboardSegue) -> SegueIdentifier
    {
        guard let identifier = segue.identifier,
            let segueIdentifier = SegueIdentifier(rawValue: identifier)
            else {
                fatalError("Invalid segue identifier.")
        }
        return segueIdentifier
    }
}
