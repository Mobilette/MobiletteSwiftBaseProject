//
//  MBLogger.swift
//  Linkydog
//
//  Created by Romain ASNAR on 02/08/15.
//  Copuikityright (c) 2015 Linkydog. All rights reserved.
//

import UIKit
import NSLogger

public final class MBLog
{
    // MARK: - Type
    
    public enum Level: Int {
        case high = 0
        case medium = 1
        case low = 2
        case veryLow = 3
    }
    
    // MARK: - Ad and Stat
    
    public final class func adStat<T>(_ level: MBLog.Level, object: T, fileName: String = #file, line: Int32 = #line, functionName: String = #function)
    {
        MBLog.logger(domain: "Ad and Stat", level: level.rawValue, object: "\(object)", fileName: fileName, line: line, functionName: functionName)
    }
    
    public final class func adStat(_ level: MBLog.Level, object: Data, fileName: String = #file, line: Int32 = #line, functionName: String = #function)
    {
        MBLog.logger(domain: "Ad and Stat", level: level.rawValue, object: object, fileName: fileName, line: line, functionName: functionName)
    }
    
    public final class func adStat(_ level: MBLog.Level, object: UIImage, fileName: String = #file, line: Int32 = #line, functionName: String = #function)
    {
        MBLog.logger(domain: "Ad and Stat", level: level.rawValue, object: object, fileName: fileName, line: line, functionName: functionName)
    }
    
    // MARK: - Sharing
    
    public final class func sharing<T>(_ level: MBLog.Level, object: T, fileName: String = #file, line: Int32 = #line, functionName: String = #function)
    {
        MBLog.logger(domain: "Sharing", level: level.rawValue, object: "\(object)", fileName: fileName, line: line, functionName: functionName)
    }
    
    public final class func sharing(_ level: MBLog.Level, object: Data, fileName: String = #file, line: Int32 = #line, functionName: String = #function)
    {
        MBLog.logger(domain: "Sharing", level: level.rawValue, object: object, fileName: fileName, line: line, functionName: functionName)
    }
    
    public final class func sharing(_ level: MBLog.Level, object: UIImage, fileName: String = #file, line: Int32 = #line, functionName: String = #function)
    {
        MBLog.logger(domain: "Sharing", level: level.rawValue, object: object, fileName: fileName, line: line, functionName: functionName)
    }
    
    // MARK: - File
    
    public final class func file<T>(_ level: MBLog.Level, object: T, fileName: String = #file, line: Int32 = #line, functionName: String = #function)
    {
        MBLog.logger(domain: "File", level: level.rawValue, object: "\(object)", fileName: fileName, line: line, functionName: functionName)
    }
    
    public final class func file(_ level: MBLog.Level, object: Data, fileName: String = #file, line: Int32 = #line, functionName: String = #function)
    {
        MBLog.logger(domain: "File", level: level.rawValue, object: object, fileName: fileName, line: line, functionName: functionName)
    }
    
    public final class func file(_ level: MBLog.Level, object: UIImage, fileName: String = #file, line: Int32 = #line, functionName: String = #function)
    {
        MBLog.logger(domain: "File", level: level.rawValue, object: object, fileName: fileName, line: line, functionName: functionName)
    }
    
    // MARK: - Push
    
    public final class func push<T>(_ level: MBLog.Level, object: T, fileName: String = #file, line: Int32 = #line, functionName: String = #function)
    {
        MBLog.logger(domain: "Push", level: level.rawValue, object: "\(object)", fileName: fileName, line: line, functionName: functionName)
    }
    
    public final class func push(_ level: MBLog.Level, object: Data, fileName: String = #file, line: Int32 = #line, functionName: String = #function)
    {
        MBLog.logger(domain: "Push", level: level.rawValue, object: object, fileName: fileName, line: line, functionName: functionName)
    }
    
    public final class func push(_ level: MBLog.Level, object: UIImage, fileName: String = #file, line: Int32 = #line, functionName: String = #function)
    {
        MBLog.logger(domain: "Push", level: level.rawValue, object: object, fileName: fileName, line: line, functionName: functionName)
    }
    
    // MARK: - Location
    
    public final class func location<T>(_ level: MBLog.Level, object: T, fileName: String = #file, line: Int32 = #line, functionName: String = #function)
    {
        MBLog.logger(domain: "Location", level: level.rawValue, object: "\(object)", fileName: fileName, line: line, functionName: functionName)
    }
    
    public final class func location(_ level: MBLog.Level, object: Data, fileName: String = #file, line: Int32 = #line, functionName: String = #function)
    {
        MBLog.logger(domain: "Location", level: level.rawValue, object: object, fileName: fileName, line: line, functionName: functionName)
    }
    
    public final class func location(_ level: MBLog.Level, object: UIImage, fileName: String = #file, line: Int32 = #line, functionName: String = #function)
    {
        MBLog.logger(domain: "Location", level: level.rawValue, object: object, fileName: fileName, line: line, functionName: functionName)
    }
    
    // MARK: - Network
    
    public final class func network<T>(_ level: MBLog.Level, object: T, fileName: String = #file, line: Int32 = #line, functionName: String = #function)
    {
        MBLog.logger(domain: "Network", level: level.rawValue, object: "\(object)", fileName: fileName, line: line, functionName: functionName)
    }
    
    public final class func network(_ level: MBLog.Level, object: Data, fileName: String = #file, line: Int32 = #line, functionName: String = #function)
    {
        MBLog.logger(domain: "Network", level: level.rawValue, object: object, fileName: fileName, line: line, functionName: functionName)
    }
    
    public final class func network(_ level: MBLog.Level, object: UIImage, fileName: String = #file, line: Int32 = #line, functionName: String = #function)
    {
        MBLog.logger(domain: "Network", level: level.rawValue, object: object, fileName: fileName, line: line, functionName: functionName)
    }
    
    // MARK: - Data
    
    public final class func data<T>(_ level: MBLog.Level, object: T, fileName: String = #file, line: Int32 = #line, functionName: String = #function)
    {
        MBLog.logger(domain: "Data", level: level.rawValue, object: "\(object)", fileName: fileName, line: line, functionName: functionName)
    }
    
    public final class func data(_ level: MBLog.Level, object: Data, fileName: String = #file, line: Int32 = #line, functionName: String = #function)
    {
        MBLog.logger(domain: "Data", level: level.rawValue, object: object, fileName: fileName, line: line, functionName: functionName)
    }
    
    public final class func data(_ level: MBLog.Level, object: UIImage, fileName: String = #file, line: Int32 = #line, functionName: String = #function)
    {
        MBLog.logger(domain: "Data", level: level.rawValue, object: object, fileName: fileName, line: line, functionName: functionName)
    }
    
    // MARK: - Model
    
    public final class func model<T>(_ level: MBLog.Level, object: T, fileName: String = #file, line: Int32 = #line, functionName: String = #function)
    {
        MBLog.logger(domain: "Model", level: level.rawValue, object: "\(object)", fileName: fileName, line: line, functionName: functionName)
    }
    
    public final class func model(_ level: MBLog.Level, object: Data, fileName: String = #file, line: Int32 = #line, functionName: String = #function)
    {
        MBLog.logger(domain: "Model", level: level.rawValue, object: object, fileName: fileName, line: line, functionName: functionName)
    }
    
    public final class func model(_ level: MBLog.Level, object: UIImage, fileName: String = #file, line: Int32 = #line, functionName: String = #function)
    {
        MBLog.logger(domain: "Model", level: level.rawValue, object: object, fileName: fileName, line: line, functionName: functionName)
    }
    
    // MARK: - Service
    
    public final class func service<T>(_ level: MBLog.Level, object: T, fileName: String = #file, line: Int32 = #line, functionName: String = #function)
    {
        MBLog.logger(domain: "Service", level: level.rawValue, object: "\(object)", fileName: fileName, line: line, functionName: functionName)
    }
    
    public final class func service(_ level: MBLog.Level, object: Data, fileName: String = #file, line: Int32 = #line, functionName: String = #function)
    {
        MBLog.logger(domain: "Service", level: level.rawValue, object: object, fileName: fileName, line: line, functionName: functionName)
    }
    
    public final class func service(_ level: MBLog.Level, object: UIImage, fileName: String = #file, line: Int32 = #line, functionName: String = #function)
    {
        MBLog.logger(domain: "Service", level: level.rawValue, object: object, fileName: fileName, line: line, functionName: functionName)
    }
    
    // MARK: - View
    
    public final class func view<T>(_ level: MBLog.Level, object: T, fileName: String = #file, line: Int32 = #line, functionName: String = #function)
    {
        MBLog.logger(domain: "View", level: level.rawValue, object: "\(object)", fileName: fileName, line: line, functionName: functionName)
    }
    
    public final class func view(_ level: MBLog.Level, object: Data, fileName: String = #file, line: Int32 = #line, functionName: String = #function)
    {
        MBLog.logger(domain: "View", level: level.rawValue, object: object, fileName: fileName, line: line, functionName: functionName)
    }
    
    public final class func view(_ level: MBLog.Level, object: UIImage, fileName: String = #file, line: Int32 = #line, functionName: String = #function)
    {
        MBLog.logger(domain: "View", level: level.rawValue, object: object, fileName: fileName, line: line, functionName: functionName)
    }

    // MARK: - App
    
    public final class func app<T>(_ level: MBLog.Level, object: T, fileName: String = #file, line: Int32 = #line, functionName: String = #function)
    {
        MBLog.logger(domain: "App", level: level.rawValue, object: object, fileName: fileName, line: line, functionName: functionName)
    }
    
    public final class func app(_ level: MBLog.Level, object: Data, fileName: String = #file, line: Int32 = #line, functionName: String = #function)
    {
        MBLog.logger(domain: "App", level: level.rawValue, object: object, fileName: fileName, line: line, functionName: functionName)
    }
    
    public final class func app(_ level: MBLog.Level, object: UIImage, fileName: String = #file, line: Int32 = #line, functionName: String = #function)
    {
        MBLog.logger(domain: "App", level: level.rawValue, object: object, fileName: fileName, line: line, functionName: functionName)
    }

    // MARK: - Error

    public final class func error<T>(_ level: MBLog.Level, object: T, fileName: String = #file, line: Int32 = #line, functionName: String = #function)
    {
        MBLog.logger(domain: "Error", level: level.rawValue, object: object, fileName: fileName, line: line, functionName: functionName)
    }
    
    public final class func error(_ level: MBLog.Level, object: Data, fileName: String = #file, line: Int32 = #line, functionName: String = #function)
    {
        MBLog.logger(domain: "Error", level: level.rawValue, object: object, fileName: fileName, line: line, functionName: functionName)
    }
    
    public final class func error(_ level: MBLog.Level, object: UIImage, fileName: String = #file, line: Int32 = #line, functionName: String = #function)
    {
        MBLog.logger(domain: "Error", level: level.rawValue, object: object, fileName: fileName, line: line, functionName: functionName)
    }

    // MARK: - Logger
    
    fileprivate class func logger(
        domain: String,
        level: Int,
        object: Data,
        fileName: String = #file,
        line: Int32 = #line,
        functionName: String = #function
        )
    {
        LogDataF(fileName, line, functionName, domain, Int32(level), object)
    }
    
    fileprivate class func logger(
        domain: String,
        level: Int,
        object: UIImage,
        fileName: String = #file,
        line: Int32 = #line,
        functionName: String = #function
        )
    {
        let width = Int32(object.size.width)
        let height = Int32(object.size.height)
        let data = UIImagePNGRepresentation(object)
        LogImageDataF(fileName, line, functionName, domain, Int32(level), width, height, data)
    }
    
    fileprivate class func logger<T>(
        domain: String,
        level: Int,
        object: T,
        fileName: String = #file,
        line: Int32 = #line,
        functionName: String = #function
        )
    {
        LogMessageF_va(fileName, line, functionName, domain, Int32(level), "%@", getVaList(["\(object)"]))
    }
}
