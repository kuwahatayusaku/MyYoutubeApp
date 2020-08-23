//
//  ViewController.swift
//  SwiftYoutubeApp
//
//  Created by User on 2020/05/08.
//  Copyright © 2020 Yusaku Kuwahata. All rights reserved.
//

import UIKit
import SegementSlide

class ViewController: SegementSlideViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        reloadData()
        // スライドの開始位置
        scrollToSlide(at: 0, animated: true)
    }
    
    override var headerView: UIView? {
        let headerView = UIImageView()
        headerView.isUserInteractionEnabled = true
        headerView.contentMode = .scaleAspectFill
        headerView.image = UIImage(named: "header")
        headerView.translatesAutoresizingMaskIntoConstraints = false
        let headerHeight: CGFloat
        if #available(iOS 11.0, *) {
            headerHeight = view.frame.size.height / 4 + view.safeAreaInsets.top
        } else {
            headerHeight = view.frame.size.height / 4 + topLayoutGuide.length
        }
        headerView.heightAnchor.constraint(equalToConstant: headerHeight).isActive = true
        return headerView
    }
    
    override var titlesInSwitcher: [String] {
        return ["怪談","ゲーム","猫","ニュース","都市伝説","シャドバ"]
    }
    
    override func segementSlideContentViewController(at index: Int) -> SegementSlideContentScrollViewDelegate? {
        switch index {
        case 0: return Page1ViewController()
        case 1: return Page2ViewController()
        case 2: return Page3ViewController()
        case 3: return Page4ViewController()
        case 4: return Page5ViewController()
        case 5: return Page6ViewController()
        default: return Page1ViewController()
        }
    }


}

