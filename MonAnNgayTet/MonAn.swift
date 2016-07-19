//
//  MonAn.swift
//  MonAnNgayTet
//
//  Created by Quan on 7/19/16.
//  Copyright © 2016 MyStudio. All rights reserved.
//

import Foundation
import UIKit

class MonAn {
    var name: String?
    var photo : UIImage?
    var info : String?
    init(name: String, photo: String, info : String){
        self.name = name
        self.photo = UIImage(named: "\(photo).jpg")
        self.info = info
    }
    
}
