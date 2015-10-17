//
//  ViewController.swift
//  ios-dialog-viewer
//
//  Created by Xiao Lu on 10/17/15.
//  Copyright © 2015 Xiao Lu. All rights reserved.
//

import UIKit

class ViewController: UICollectionViewController {
    
    private var sections: [[String: String]]!

    override func viewDidLoad() {
        super.viewDidLoad()

        sections = [
            ["header": "First Witch", "content": "Hey, when will the three of us meet up later?"],
            ["header": "Second Witch", "content": "When, everything's straightened out."],
            ["header": "Third Witch", "content": "That'll be just before sunset."],
            ["header": "First Witch", "content": "Where?"],
            ["header": "Second Witch", "content": "The dirt patch."],
            ["header": "Third Witch", "content": "I guess we'll see Mac there."]
        ]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

