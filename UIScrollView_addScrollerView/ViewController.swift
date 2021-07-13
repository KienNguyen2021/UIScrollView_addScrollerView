//
//  ViewController.swift
//  UIScrollView_addScrollerView
//
//  Created by Kien Nguyen on 2021-07-13.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
    }


    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
       

        let scrollView = UIScrollView(frame: CGRect(x: 10, y: 10, width: view.frame.size.width - 20, height: view.frame.size.height - 20))
        
        scrollView.backgroundColor = .green
        
        view.addSubview(scrollView)    // add 1 view instead of drag and drop
        
        let topButton = UIButton(frame: CGRect(x: 20, y: 20, width: 100, height: 100))
        topButton.backgroundColor = .blue
        scrollView.addSubview(topButton)
        
        let bottomButton = UIButton(frame: CGRect(x: 20, y: 2000, width: 100, height: 100))
        
        bottomButton.backgroundColor = .blue
        scrollView.addSubview(bottomButton)
        
        scrollView.contentSize = CGSize(width: view.frame.size.width, height: 2200)
    }
}

