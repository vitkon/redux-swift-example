//
//  CircularImageView.swift
//  gumdrop
//
//  Created by Kondratiev, Vitaly (UK - London) on 13/03/2016.
//  Copyright © 2016 Gumdrop Media. All rights reserved.
//

@IBDesignable
class CircularImageView: UIImageView {
    var defaultImage: String =
    var userImage: String?
    
    @IBInspectable var backgroundLayerColor: UIColor = UIColor.grayColor()
    @IBInspectable var lineWidth: CGFloat = 1.0
    @IBInspectable var image: UIImage?
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setupImage()
    }
    
    func setupImage() {
        let avatar = UIImage(named: "navbar_profile_icon")
        self.

        self.contentMode = .ScaleAspectFit
        
        //self.backgroundColor = ColorPalette.Grey.Dark
        
        self.frame = CGRect(x: 0, y: 0, width: self.bounds.width, height: self.bounds.height)
        
        let photo = GlobalState.sharedInstance.referrerPhoto
        self.clipsToBounds = true
        self.layer.cornerRadius = self.frame.size.width / 2;
        
        self.load(photo)
    }
}
