//
// Created by MIGUEL MOLDES on 31/10/15.
// Copyright (c) 2015 MIGUEL MOLDES. All rights reserved.
//

import Foundation

class REDWordsParser {

    var results : NSMutableArray;

    init(){
        results = NSMutableArray()

    }


    func parseWords (filePath : String) {
        let jsonData : NSData? = NSData(contentsOfFile: filePath)

        var jsonResult : NSDictionary = NSDictionary()

        do{
            jsonResult = try NSJSONSerialization.JSONObjectWithData(jsonData!, options: NSJSONReadingOptions.MutableContainers) as! NSDictionary
        }catch{
            print("json error: \(error)")
        }

        let list : NSArray = jsonResult["words"] as! NSArray;

        self.results = NSMutableArray(array:list);
//        if([object isKindOfClass:[NSDictionary class]]) {
//            NSDictionary *dic = object;
//            NSArray *list = [dic objectForKey:@"words"];
//            self.results = [[NSMutableArray alloc] initWithArray:list];
//        }


//        if let path = NSBundle.mainBundle().pathForResource("test", ofType: "json")
//        {
//            if let jsonData = NSData(contentsOfFile: path, options: .DataReadingMappedIfSafe, error: nil)
//            {
//                if let jsonResult: NSDictionary = NSJSONSerialization.JSONObjectWithData(jsonData, options: NSJSONReadingOptions.MutableContainers, error: nil) as? NSDictionary
//                {
//                    if let persons : NSArray = jsonResult["person"] as? NSArray
//                    {
//                         Do stuff
//                    }
//                }
//            }
//        }
    }
}
