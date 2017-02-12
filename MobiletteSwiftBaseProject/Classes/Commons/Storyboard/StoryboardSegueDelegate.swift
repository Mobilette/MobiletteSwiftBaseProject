//
//  StoryboardSegueDelegate.swift
//  MobiletteSwiftBaseProject
//
//  Mobilette template version 2.1
//
//  Created by Romain Asnar on 2/3/17.
//  Copyright © 2017 Mobilette. All rights reserved.
//

import Foundation
import UIKit

protocol StoryboardSegueDelegate: class
{
    func prepare(for segue: UIStoryboardSegue, sender: Any?)
}
