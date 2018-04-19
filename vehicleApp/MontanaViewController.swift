//
//  MontanaViewController.swift
//  vehicleApp
//
//  Created by Jose Cordova on 3/4/18.
//  Copyright © 2018 Jose Cordova. All rights reserved.
//

import UIKit

class MontanaViewController: UIViewController {

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
        titleLabel.text="MONTANA"
        descriptionText.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce eu mauris nec est volutpat volutpat. Suspendisse vitae aliquet augue, vel varius lacus. Donec purus elit, tincidunt sit amet nibh nec, laoreet dapibus urna. Donec nec purus porta, faucibus lacus nec, accumsan elit. Vivamus eget metus eget est placerat ultricies sed sed lectus. Mauris scelerisque orci lacus, eget condimentum turpis molestie sed. Aliquam tincidunt ultrices ante, vel dignissim elit fermentum in. Duis dapibus magna quis lorem vehicula, sit amet pellentesque arcu viverra. Praesent in dolor ut neque dictum tempor ut ut nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc fermentum lorem at imperdiet porta. Mauris vestibulum leo quis ante lobortis, ut sagittis arcu ornare. Vestibulum at feugiat purus. Donec convallis finibus mi, ac egestas lacus hendrerit vel."
        
        imageView1.image = UIImage(named: "montana1")
        imageView2.image = UIImage(named: "montana2")
        imageView3.image = UIImage(named: "montana3")
        imageView4.image = UIImage(named: "montana4")
        
        imageView1.image = #imageLiteral(resourceName: "montana1")
        imageView2.image = #imageLiteral(resourceName: "montana2")
        imageView3.image = #imageLiteral(resourceName: "montana3")
        imageView4.image = #imageLiteral(resourceName: "montana4")
        
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
