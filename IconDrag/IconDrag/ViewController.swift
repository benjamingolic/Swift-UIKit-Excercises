//
//  ViewController.swift
//  IconDrag
//
//  Created by Benjamin Golic on 21.01.21.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var kangaroo: UIImageView!
    var initialCenter = CGPoint()
    @IBAction func panPiece(_ gestureRecognizer : UIPanGestureRecognizer) {
       guard gestureRecognizer.view != nil else {return}
       let kangarooView = kangaroo!
       let translation = gestureRecognizer.translation(in: kangarooView.superview)
      
       if gestureRecognizer.state == .began {
          self.initialCenter = kangarooView.center
       }
      
       if gestureRecognizer.state != .cancelled {
          let newCenter = CGPoint(x: initialCenter.x + translation.x, y: initialCenter.y + translation.y)
          kangarooView.center = newCenter
       }
       else {
          kangarooView.center = initialCenter
       }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

