//
//  DummyController.swift
//  DelegateExa
//
//  Created by Pushpendra Saini on 21/05/22.
//

import UIKit

protocol DummyDelegate {
    func onTapClcikMe(messgae : String)
}

class DummyController: UIViewController {

    @IBOutlet weak var btnClickMe: UIButton! {
        didSet {
            self.btnClickMe.addTarget(self, action: #selector(onTapOfClickMe), for: .touchUpInside)
        }
    }
    
    var delegate : DummyDelegate? = nil
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @objc private func onTapOfClickMe(){
        print("Something.....")
        delegate?.onTapClcikMe(messgae: "Hi I've been clicked from Dummy Controller")
        self.dismiss(animated: true)
    }

}
