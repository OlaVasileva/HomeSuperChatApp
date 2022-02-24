//
//  LogManager.swift
//  HomeSuperChatApp
//
//  Created by Васильева Ольга on 24.02.2022.
//

import Foundation

class LogManager {
    //Свойство loggingOn включаем в файле Properies.plist, по умолчанию false
    var loggingOn = false
    
    static let shared = LogManager()
    
    private init() {
        if let path = Bundle.main.path(forResource: "Properties", ofType: "plist") {
            if let dic = NSDictionary(contentsOfFile: path) as? [String: Any] {
                if let value = dic["loggingOn"] as! Bool? {
                    self.loggingOn = value
                }
            }
        }
    }
    
}
