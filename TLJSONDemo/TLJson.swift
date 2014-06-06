//
//  TLJson.swift
//  MyPlayground
//
//  Created by Thor Lin on 2014/6/6.
//  Copyright (c) 2014年 Thor Lin. All rights reserved.
//

import UIKit

class TLJSON: NSObject {
    
    class func ParseJSON(urlString: String!)->NSMutableArray{
        var array = NSMutableArray()
        
        var rawData =  NSURLConnection.sendSynchronousRequest(NSURLRequest(URL:NSURL(string:urlString)) , returningResponse: nil , error: nil)
        
        var dic = NSJSONSerialization.JSONObjectWithData(rawData ,options:NSJSONReadingOptions.MutableContainers ,error:nil) as NSMutableDictionary
        for o : AnyObject in dic.allKeys{
            array.addObject(dic.objectForKey(o))
        }
        return array
    }
}
