//
//  ViewController.swift
//  DelegateExa
//
//  Created by Pushpendra Saini on 21/05/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbDes: UILabel!
    
    @IBOutlet weak var btnAct: UIButton! {
        didSet {
            self.btnAct.addTarget(self, action: #selector(onTapOfButton), for: .touchUpInside)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @objc private func onTapOfButton(){
        let controller = self.storyboard?.instantiateViewController(withIdentifier: "DummyController") as! DummyController
        controller.delegate = self
        self.present(controller, animated: true)
    }

}

extension ViewController : DummyDelegate {
    func onTapClcikMe(messgae: String) {
        self.lbDes.text = messgae
    }
}
