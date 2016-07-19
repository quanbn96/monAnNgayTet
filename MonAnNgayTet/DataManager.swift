//
//  DataManager.swift
//  MonAnNgayTet
//
//  Created by Quan on 7/19/16.
//  Copyright © 2016 MyStudio. All rights reserved.
//

import Foundation

class DataManager {
    var data = NSMutableArray()
    class var shareInstance: DataManager {
        struct Static {
            static var OneToken : dispatch_once_t = 0
            static var Instance : DataManager? = nil
        }
        dispatch_once(&Static.OneToken){
            Static.Instance = DataManager()
            let filePath = NSBundle.mainBundle().pathForResource("CacMonAn", ofType: "plist")
            let raw = NSDictionary(contentsOfFile: filePath!)
            let temp = NSMutableArray(capacity: raw!.count)
            for item in raw! {
                let monAn = MonAn(name: item.value.valueForKey("name") as! String, photo: item.value.valueForKey("photo") as! String, info: item.value.valueForKey("info") as! String)
                temp.addObject(monAn)
            }
            
            Static.Instance?.data = NSMutableArray(array: temp)
            
        }
        
        return Static.Instance!
    }
    
}