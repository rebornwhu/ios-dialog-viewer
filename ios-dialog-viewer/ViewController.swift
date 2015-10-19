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
        
        collectionView?.registerClass(ContentCell.self, forCellWithReuseIdentifier: "CONTENT")
        var contentInset = collectionView?.contentInset
        contentInset?.top = 20
        collectionView?.contentInset = contentInset!
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func wordsInSection(section: Int) -> [String] {
        let content = sections[section]["content"]
        let spaces = NSCharacterSet.whitespaceAndNewlineCharacterSet()
        let words = content?.componentsSeparatedByCharactersInSet(spaces)
        return words!
    }
    
    
    // MARK: UICollectionView data source
    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return sections.count
    }
    
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        let words = wordsInSection(section)
        return words.count
    }
    
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let words = wordsInSection(indexPath.section)
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("CONTENT", forIndexPath: indexPath) as! ContentCell;
        cell.maxWidth = collectionView.bounds.size.width
        cell.text = words[indexPath.row]
        return cell
    }
    
}
