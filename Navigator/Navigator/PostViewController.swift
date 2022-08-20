//
//  PostViewController.swift
//  Navigator
//
//  Created by Эля Корельская on 20/08/22.
//

import UIKit

class PostViewController: UIViewController {

    
    var titlePost: String = "Anonymous"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        self.view.addSubview(textPost)
        
        
        

        // Do any additional setup after loading the view.
    }
    private func setupView() {
        
        self.view.backgroundColor = UIColor(red: 0.74,green: 0.38,blue:0.23, alpha: 1)
        self.navigationItem.title = titlePost
        
        
        

        
        //self.navigationItem.rightBarButtonItem = button
        
    }
    //в окне пишет текст (я просто попробовала для себя)
    private lazy var textPost: UITextView = {
        let textView = UITextView(frame: CGRect(x: 90, y:200, width: 310, height: 310))
        textView.backgroundColor = .yellow
        textView.contentInsetAdjustmentBehavior = .automatic
        textView.center = self.view.center
        textView.textAlignment = NSTextAlignment.justified
        textView.font = UIFont.systemFont(ofSize: 20)
        
        return textView
    }()
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

