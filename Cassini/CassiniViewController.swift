//
//  CassiniViewController.swift
//  Cassini
//
//  Created by Denver Stove on 31/10/18.
//  Copyright © 2018 Denver Stove. All rights reserved.
//

import UIKit

class CassiniViewController: UIViewController {
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let url = DemoURL.NASA[segue.identifier ?? ""] {
            if let imageVC = (segue.destination.contents as? ImageViewController) {
                imageVC.imageURL = url
                imageVC.title = (sender as? UIButton)?.currentTitle
            }
        }
    }

}

extension UIViewController
{
    var contents: UIViewController {
        if let navCon = self as? UINavigationController {
        return navCon.visibleViewController ?? self
        } else {
            return self
        }
    }
}
