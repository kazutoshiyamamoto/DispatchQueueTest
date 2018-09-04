//
//  ViewController.swift
//  DispatchQueueTest
//
//  Created by home on 2018/09/05.
//  Copyright © 2018年 Swift-beginners. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // 並列、サブスレッド
        let queue = DispatchQueue.global(qos: .default)
        for i in 0..<10 {
            queue.async {
                print("start: \(i)")
                sleep(1)
                print("end: \(i)")
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

