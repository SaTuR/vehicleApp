//
//  FastoViewController.swift
//  vehicleApp
//
//  Created by Jose Cordova on 30/3/18.
//  Copyright © 2018 Jose Cordova. All rights reserved.
//

import UIKit

class FastoViewController: UIViewController {

    @IBOutlet weak var imageScroll: UIScrollView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionText: UITextView!
    
    let imageView0 = UIView()
    let imageView1 = UIImageView()
    let imageView2 = UIImageView()
    let imageView3 = UIImageView()
    let imageView4 = UIImageView()

    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        disableResizing()
        titleLabel.text="FASTO"
        
        imageView1.image = UIImage(named: "fasto1")
        imageView2.image = UIImage(named: "fasto2")
        imageView3.image = UIImage(named: "fasto3")
        imageView4.image = UIImage(named: "fasto4")
        
        imageView1.image = #imageLiteral(resourceName: "fasto1")
        imageView2.image = #imageLiteral(resourceName: "fasto2")
        imageView3.image = #imageLiteral(resourceName: "fasto3")
        imageView4.image = #imageLiteral(resourceName: "fasto4")

        imageScroll.contentSize.width = imageScroll.frame.size.height * 4
        imageView0.addSubview(imageView1)
        imageView0.addSubview(imageView2)
        imageView0.addSubview(imageView3)
        imageView0.addSubview(imageView4)
        imageScroll.addSubview(imageView0)
        
        addImage1Constraints()
        addImage2Constraints()
        addImage3Constraints()
        addImage4Constraints()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func disableResizing(){
        self.imageView1.translatesAutoresizingMaskIntoConstraints = false
        self.imageView2.translatesAutoresizingMaskIntoConstraints = false
        self.imageView3.translatesAutoresizingMaskIntoConstraints = false
        self.imageView4.translatesAutoresizingMaskIntoConstraints = false
        self.imageView0.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func addImageConstraints(){
        let topConstraint = NSLayoutConstraint(item: imageView0, attribute: .top, relatedBy: .equal, toItem: imageScroll, attribute: .top, multiplier: 1.0, constant: 0.0)
        let leftConstraint = NSLayoutConstraint(item: imageView0, attribute: .left, relatedBy: .equal, toItem: imageScroll, attribute: .left, multiplier: 1.0, constant: 1.0)
        let rightConstraint = NSLayoutConstraint(item: imageView0, attribute: .right, relatedBy: .equal, toItem: imageScroll, attribute: .right, multiplier: 1.0, constant: 0.0)
        let bottomConstraint = NSLayoutConstraint(item: imageView0, attribute: .bottom, relatedBy: .equal, toItem: imageScroll, attribute: .bottom, multiplier: 1.0, constant: 1.0)

        self.view.addConstraint(topConstraint)
        self.view.addConstraint(leftConstraint)
        self.view.addConstraint(rightConstraint)
        self.view.addConstraint(bottomConstraint)
    }

    
    func addImage1Constraints(){
        let topConstraint = NSLayoutConstraint(item: self.imageView1, attribute: .top, relatedBy: .equal, toItem: imageScroll, attribute: .top, multiplier: 1.0, constant: 0.0)
        let leftConstraint = NSLayoutConstraint(item: self.imageView1, attribute: .left, relatedBy: .equal, toItem: imageScroll, attribute: .left, multiplier: 1.0, constant: 1.0)
        let heightConstraint = NSLayoutConstraint(item: self.imageView1, attribute: .height, relatedBy: .equal, toItem: imageScroll, attribute: .height, multiplier: 1.0, constant: 0.0)
        let widthConstraint = NSLayoutConstraint(item: self.imageView1, attribute: .width, relatedBy: .equal, toItem: imageScroll, attribute: .height, multiplier: 1.0, constant: 0.0)
        
        self.view.addConstraint(topConstraint)
        self.view.addConstraint(leftConstraint)
        self.view.addConstraint(widthConstraint)
        self.view.addConstraint(heightConstraint)
    }
    
    func addImage2Constraints() {
        let topConstraint = NSLayoutConstraint(item: imageView2, attribute: .top, relatedBy: .equal, toItem: self.imageScroll, attribute: .top, multiplier: 1.0, constant: 0.0)
        let leftConstraint = NSLayoutConstraint(item: imageView2, attribute: .left, relatedBy: .equal, toItem: imageView1, attribute: .right, multiplier: 1.0, constant: 1.0)
        let heightConstraint = NSLayoutConstraint(item: self.imageView2, attribute: .height, relatedBy: .equal, toItem: imageScroll, attribute: .height, multiplier: 1.0, constant: 0.0)
        let widthConstraint = NSLayoutConstraint(item: self.imageView2, attribute: .width, relatedBy: .equal, toItem: imageScroll, attribute: .height, multiplier: 1.0, constant: 0.0)
        
        self.view.addConstraint(topConstraint)
        self.view.addConstraint(leftConstraint)
        self.view.addConstraint(heightConstraint)
        self.view.addConstraint(widthConstraint)
    }
    
    func addImage3Constraints() {
        let topConstraint = NSLayoutConstraint(item: imageView3, attribute: .top, relatedBy: .equal, toItem: imageScroll, attribute: .top, multiplier: 1.0, constant: 0.0)
        let leftConstraint = NSLayoutConstraint(item: imageView3, attribute: .left, relatedBy: .equal, toItem: imageView2, attribute: .right, multiplier: 1.0, constant: 1.0)
        let heightConstraint = NSLayoutConstraint(item: imageView3, attribute: .height, relatedBy: .equal, toItem: imageScroll, attribute: .height, multiplier: 1.0, constant: 0.0)
        let widthConstraint = NSLayoutConstraint(item: imageView3, attribute: .width, relatedBy: .equal, toItem: imageScroll, attribute: .height, multiplier: 1.0, constant: 0.0)
        
        self.view.addConstraint(topConstraint)
        self.view.addConstraint(leftConstraint)
        self.view.addConstraint(heightConstraint)
        self.view.addConstraint(widthConstraint)
    }
    
    func addImage4Constraints() {
        let topConstraint = NSLayoutConstraint(item: imageView4, attribute: .top, relatedBy: .equal, toItem: imageScroll, attribute: .top, multiplier: 1.0, constant: 0.0)
        let leftConstraint = NSLayoutConstraint(item: imageView4, attribute: .left, relatedBy: .equal, toItem: imageView3, attribute: .right, multiplier: 1.0, constant: 1.0)
        let heightConstraint = NSLayoutConstraint(item: imageView4, attribute: .height, relatedBy: .equal, toItem: imageScroll, attribute: .height, multiplier: 1.0, constant: 0.0)
        let widthConstraint = NSLayoutConstraint(item: imageView4, attribute: .width, relatedBy: .equal, toItem: imageScroll, attribute: .height, multiplier: 1.0, constant: 0.0)
        
        self.view.addConstraint(topConstraint)
        self.view.addConstraint(leftConstraint)
        self.view.addConstraint(heightConstraint)
        self.view.addConstraint(widthConstraint)
    }
}
