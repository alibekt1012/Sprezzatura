//
//  ViewController.swift
//  Sprezzaturra
//
//  Created by Almat Alibekov on 22.07.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var subTitleLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    @IBOutlet var imageLabel: UIImageView!
    
    var styleGuide = Styleguide()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        subTitleLabel.text = styleGuide.subTitle
        descriptionLabel.text = styleGuide.description
        imageLabel.image = UIImage(named: styleGuide.image)
    }


}

