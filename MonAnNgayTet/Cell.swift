//
//  Cell.swift
//  MonAnNgayTet
//
//  Created by Quan on 7/19/16.
//  Copyright © 2016 MyStudio. All rights reserved.
//

import UIKit

class Cell: UITableViewCell {

    var nameLabel : UILabel!
    var imageViewCell : UIImageView!
    var kCellWidth : CGFloat = 400
    var kCelllHeight : CGFloat = 200
    var kLabelHeight : CGFloat = 50
    
    func addSubviews() {
        if imageViewCell == nil {
            imageViewCell = UIImageView(frame: CGRect(x: 0, y: 0, width: kCellWidth, height: kCelllHeight))
            contentView.addSubview(imageViewCell)
        }
        
        if nameLabel == nil {
            nameLabel = UILabel(frame: CGRect(x: 0, y: 0, width: kCellWidth, height: kLabelHeight))
            nameLabel.textAlignment = .Left
            nameLabel.textColor = UIColor.redColor()
            nameLabel.font = UIFont.boldSystemFontOfSize(16)
            contentView.addSubview(nameLabel)
        }
    }

}
