//
//  ProfileView.swift
//  Navigator
//
//  Created by Эля Корельская on 20/08/22.
//

import UIKit

class ProfileView: UIView {
    
    @IBOutlet weak var Text: UITextView!
    @IBOutlet weak var City: UILabel!
    @IBOutlet weak var Image: UIImageView!
    @IBOutlet weak var Birthday: UILabel!
    @IBOutlet var Name: UIView!
    
    
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.setup()
    
    }
    
    private func setup() {
        let view = self.loadViewXib()
        self.addSubview(view)
        view.frame = self.bounds
    }
    
    private func loadViewXib() -> UIView {
        guard let view = Bundle.main.loadNibNamed("ProfileView", owner: self)?.first as? UIView else {
            return UIView()
        }
        return view
    }
    
    
}
