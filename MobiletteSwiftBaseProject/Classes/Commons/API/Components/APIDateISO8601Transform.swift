//
//  APIDateISO8601Transform.swift
//  MobiletteSwiftBaseProject
//
//  Mobilette template version 2.0
//
//  Created by Romain ASNAR on 9/15/15.
//  Copyright (c) 2015 Mobilette. All rights reserved.
//

import Foundation
import ObjectMapper

open class APIDateISO8601Transform: TransformType
{
    public typealias Object = Date
    public typealias JSON = String
    fileprivate static var dateFormat = "yyyy-MM-dd'T'HH:mm:ssZZZZZ"
    
     public init() {}
    
    open func transformFromJSON(_ value: Any?) -> Date?
    {
        if let time = value as? String {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = APIDateISO8601Transform.dateFormat
            return dateFormatter.date(from: time)
        }
        return nil
    }
    
    open func transformToJSON(_ value: Date?) -> JSON?
    {
        if let date = value {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = APIDateISO8601Transform.dateFormat
            return dateFormatter.string(from: date)
        }
        return nil
    }
}
