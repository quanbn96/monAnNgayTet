//
//  ShowDataVC.swift
//  MonAnNgayTet
//
//  Created by Quan on 7/19/16.
//  Copyright © 2016 MyStudio. All rights reserved.
//

import UIKit

class ShowDataVC: UIViewController {

    @IBOutlet weak var imgViewOfMonAn: UIImageView!
    @IBOutlet weak var txtView_DefineMonAn: UITextView!
    var stringTitle : String!
    var data: MonAn!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        self.title = data.name
        self.imgViewOfMonAn.image = data.photo
        self.txtView_DefineMonAn.text = data.info
    }

}
