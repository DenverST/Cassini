//
//  ImageViewController.swift
//  Cassini
//
//  Created by Denver Stove on 30/10/18.
//  Copyright © 2018 Denver Stove. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController
{
    var imageURL: URL? {
        didSet {
            image = nil
            if view.window != nil {
                fetchImage()
            }
        }
    }
    
    private func fetchImage() {
        if  let url = imageURL, let urlContents = try? Data(contentsOf: url) {
            image = UIImage(data: urlContents)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageURL = DemoURL.uwa
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if image == nil {
            fetchImage()
        }
    }
    
    fileprivate var imageView = UIImageView()
    
    @IBOutlet weak var outletScrollView: UIScrollView! {
        didSet {
            outletScrollView.delegate = self
            outletScrollView.minimumZoomScale = 0.25
            outletScrollView.maximumZoomScale = 2.0
            outletScrollView.contentSize = imageView.frame.size
            outletScrollView.addSubview(imageView)
        }
    }
    private var image: UIImage? {
        get {
            return imageView.image
        }
        set {
            imageView.image = newValue
            imageView.sizeToFit()
            outletScrollView?.contentSize = imageView.frame.size
        }
    }
}

extension ImageViewController : UIScrollViewDelegate
{
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageView
    }
}
