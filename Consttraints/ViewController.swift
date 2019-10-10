//
//  ViewController.swift
//  Consttraints
//
//  Created by erumaru on 10/9/19.
//  Copyright © 2019 KBTU. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    lazy var firstLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .blue
        label.text = "sdfhjklkhgfdfghjkjh\nsdfhjklkhgfdfghjkjh\nsdfhjklkhgfdfghjkjh\nsdfhjklkhgfdfghjkjh\nsdfhjklkhgfdfghjkjh\nsdfhjklkhgfdfghjkjh\nsdfhjklkhgfdfghjkjh\nsdfhjklkhgfdfghjkjh\nsdfhjklkhgfdfghjkjh\nsdfhjklkhgfdfghjkjh\nsdfhjklkhgfdfghjkjh\nsdfhjklkhgfdfghjkjh\nsdfhjklkhgfdfghjkjh\nsdfhjklkhgfdfghjkjh\nsdfhjklkhgfdfghjkjh\nsdfhjklkhgfdfghjkjh\nsdfhjklkhgfdfghjkjh\nsdfhjklkhgfdfghjkjh\nsdfhjklkhgfdfghjkjh\nsdfhjklkhgfdfghjkjh\nsdfhjklkhgfdfghjkjh\nsdfhjklkhgfdfghjkjh\nsdfhjklkhgfdfghjkjh\nsdfhjklkhgfdfghjkjh\nsdfhjklkhgfdfghjkjh\nsdfhjklkhgfdfghjkjh\nsdfhjklkhgfdfghjkjh\nsdfhjklkhgfdfghjkjh\nsdfhjklkhgfdfghjkjh\nsdfhjklkhgfdfghjkjh\nsdfhjklkhgfdfghjkjh\nsdfhjklkhgfdfghjkjh\nsdfhjklkhgfdfghjkjh\nsdfhjklkhgfdfghjkjh\nsdfhjklkhgfdfghjkjh\nsdfhjklkhgfdfghjkjh\nsdfhjklkhgfdfghjkjh\nsdfhjklkhgfdfghjkjh\nsdfhjklkhgfdfghjkjh\n"
        label.textAlignment = .center
        label.numberOfLines = 0
        label.setContentHuggingPriority(.defaultHigh, for: .vertical)
        label.setContentCompressionResistancePriority(.defaultLow, for: .vertical)
        
        return label
    }()
    
    lazy var secondLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .blue
        label.text = "sdfhjklkhgfdfghjkjh\nsdfhjklkhgfdfghjkjh\nsdfhjklkhgfdfghjkjh\nsdfhjklkhgfdfghjkjh\nsdfhjklkhgfdfghjkjh\nsdfhjklkhgfdfghjkjh\nsdfhjklkhgfdfghjkjh\nsdfhjklkhgfdfghjkjh\nsdfhjklkhgfdfghjkjh\nsdfhjklkhgfdfghjkjh\nsdfhjklkhgfdfghjkjh\nsdfhjklkhgfdfghjkjh\nsdfhjklkhgfdfghjkjh\nsdfhjklkhgfdfghjkjh\nsdfhjklkhgfdfghjkjh\nsdfhjklkhgfdfghjkjh\nsdfhjklkhgfdfghjkjh\nsdfhjklkhgfdfghjkjh\nsdfhjklkhgfdfghjkjh\nsdfhjklkhgfdfghjkjh\nsdfhjklkhgfdfghjkjh\nsdfhjklkhgfdfghjkjh\nsdfhjklkhgfdfghjkjh\nsdfhjklkhgfdfghjkjh\nsdfhjklkhgfdfghjkjh\nsdfhjklkhgfdfghjkjh\nsdfhjklkhgfdfghjkjh\nsdfhjklkhgfdfghjkjh\nsdfhjklkhgfdfghjkjh\nsdfhjklkhgfdfghjkjh\nsdfhjklkhgfdfghjkjh\nsdfhjklkhgfdfghjkjh\nsdfhjklkhgfdfghjkjh\nsdfhjklkhgfdfghjkjh\nsdfhjklkhgfdfghjkjh\nsdfhjklkhgfdfghjkjh\nsdfhjklkhgfdfghjkjh\nsdfhjklkhgfdfghjkjh\nsdfhjklkhgfdfghjkjh\n"
        label.textAlignment = .center
        label.numberOfLines = 0
        label.setContentHuggingPriority(.defaultLow, for: .vertical)
        label.setContentCompressionResistancePriority(.required, for: .vertical)
        
        return label
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        markup()
    }
    
    private func markup() {
        view.backgroundColor = .red
        [firstLabel, secondLabel].forEach { element in
            view.addSubview(element)
        }
        
        firstLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(16)
            make.left.equalToSuperview().offset(16)
            make.right.equalToSuperview().offset(-16)
        }
        
        secondLabel.snp.makeConstraints() {
            $0.top.equalTo(firstLabel.snp.bottom).offset(16)
            $0.left.equalToSuperview().offset(16)
            $0.right.equalToSuperview().offset(-16)
            $0.bottom.equalToSuperview().offset(-16)
        }
    }
}

