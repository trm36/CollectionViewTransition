//
//  ViewController.swift
//  CollectionViewNavigationTransition
//
//  Created by Taylor Mott on 03-May-17.
//  Copyright © 2017 Mott Applications. All rights reserved.
//

import UIKit

class CollectionViewController: UICollectionViewController, UINavigationControllerDelegate {
    
    var items = [Item]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        collectionView?.register(UICollectionViewCell.classForCoder(), forCellWithReuseIdentifier: "ItemCell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func collectionView(_ collectionView: UICollectionView,numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ItemCell", for: indexPath)
        
        cell.backgroundColor = items[indexPath.item].color
        
        return cell
    }
    
//    func navigationController(_ navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool) {
//        guard let destinationViewController = viewController as? CollectionViewController else { return }
//        
//        destinationViewController.collectionView?.delegate = destinationViewController
//        destinationViewController.collectionView?.dataSource = destinationViewController
//    }
}

