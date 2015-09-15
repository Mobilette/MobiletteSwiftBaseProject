//
//  RouterProtocol.swift
//  MobiletteSwiftBaseProject
//
//  Created by Romain ASNAR on 9/15/15.
//  Copyright (c) 2015 Mobilette. All rights reserved.
//

import Alamofire

protocol RouterProtocol
{
    var method: Alamofire.Method { get }
    var path: String { get }
    var baseURLString: String { get }
    var OAuthToken: String? { get }
}