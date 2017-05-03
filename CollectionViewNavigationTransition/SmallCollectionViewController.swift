//
//  SmallCollectionViewController.swift
//  CollectionViewNavigationTransition
//
//  Created by Taylor Mott on 03-May-17.
//  Copyright © 2017 Mott Applications. All rights reserved.
//

import UIKit

class SmallCollectionViewController: CollectionViewController {
    
    init() {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 50, height: 50)
        
        super.init(collectionViewLayout: layout)
        
        self.items = (0...50).map({ (_: Int) -> Item in
            return Item(with: .random)
        })
        
        useLayoutToLayoutNavigationTransitions = false
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let bigCollectionViewController = BigCollectionViewController()
        bigCollectionViewController.items = self.items
        
        navigationController?.pushViewController(bigCollectionViewController, animated: true)
    }

}
