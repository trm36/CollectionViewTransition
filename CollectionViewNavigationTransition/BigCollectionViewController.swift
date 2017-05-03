//
//  BigCollectionViewController.swift
//  CollectionViewNavigationTransition
//
//  Created by Taylor Mott on 03-May-17.
//  Copyright © 2017 Mott Applications. All rights reserved.
//

import UIKit

class BigCollectionViewController: CollectionViewController {
    
    init() {
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 100, height: 100)
        
        super.init(collectionViewLayout: layout)
        
        useLayoutToLayoutNavigationTransitions = true
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
