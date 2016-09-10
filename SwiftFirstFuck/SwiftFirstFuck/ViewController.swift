//
//  ViewController.swift
//  SwiftFirstFuck
//
//  Created by xmesm on 16/9/9.
//  Copyright © 2016年 Louis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("Hello World!!!")
        let 你好 = UILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        你好.text = "你好"
        self.view.addSubview(你好)
        
        let intoButton = UIButton(frame: CGRect(x: 150, y: 150, width: 200, height: 200))
        intoButton.backgroundColor = UIColor.red
        intoButton.setTitle("点我", for: UIControlState.normal)
        intoButton.addTarget(self, action: #selector(ViewController.intoButtonClick), for: UIControlEvents.touchUpInside)
        self.view.addSubview(intoButton);
    }

    func intoButtonClick(){
        print("into")
        self.present(WebViewController(), animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
}

