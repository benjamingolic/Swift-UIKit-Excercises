//
//  DetailViewController.swift
//  golic_Adressformular
//
//  Created by Benjamin Golic on 14.10.20.
//

import UIKit

class DetailViewController: UIViewController {
    var model : Model!

    @IBOutlet weak var strasseLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        strasseLabel.text = ("\(model.strasse), \(model.ort)")
        //detailLabel.text = ("\(model.ort)")
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
