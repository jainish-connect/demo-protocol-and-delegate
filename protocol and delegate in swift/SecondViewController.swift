//
//  SecondViewController.swift
//  protocol and delegate in swift
//
//  Created by Jainish Patel on 13/11/17.
//  Copyright © 2017 Jainish Patel. All rights reserved.
//

import UIKit
protocol selecteditem
{
    func selected(image: UIImage, name:String, color:UIColor)
}
class SecondViewController: UIViewController {

    var selecteddelegate:selecteditem!
    
    @IBAction func firstbtn(_ sender: UIButton)
    {
        selecteddelegate.selected(image: UIImage(named: "vader")!, name: "Darth vader", color: UIColor.red)
        dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func secondbtn(_ sender: UIButton)
    {
        selecteddelegate.selected(image: UIImage(named: "luke")!, name: "luke skywalker", color: UIColor.cyan)
        dismiss(animated: true, completion: nil)
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
