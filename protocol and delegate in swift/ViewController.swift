//
//  ViewController.swift
//  protocol and delegate in swift
//
//  Created by Jainish Patel on 13/11/17.
//  Copyright © 2017 Jainish Patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var img: UIImageView!
    
    @IBOutlet var lbl: UILabel!
    
    @IBOutlet var btnout: UIButton!
    
    @IBAction func btnbtn(_ sender: UIButton)
    {
        let sec:SecondViewController = self.storyboard?.instantiateViewController(withIdentifier: "sec") as! SecondViewController
        sec.selecteddelegate = self
        self.navigationController?.present(sec, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btnout.layer.cornerRadius = btnout.frame.size.height/2
    }

  
}
extension ViewController:selecteditem{
    
    func selected(image: UIImage, name: String, color: UIColor) {
        img.image = image
        lbl.text  = name
        view.backgroundColor = color
    }
    
    
    
}
