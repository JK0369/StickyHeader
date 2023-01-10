//
//  ViewController.swift
//  ExStickyHeader
//
//  Created by 김종권 on 2023/01/10.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    private let topView: UIView = {
        let view = UIView()
        view.backgroundColor = .gray
        return view
    }()
    private let scrollView: UIScrollView = {
        let view = UIScrollView()
        return view
    }()
    private let stackView: UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        return view
    }()
    private let headerView: UIView = {
        let view = UIView()
        view.backgroundColor = .green
        return view
    }()
    private let label1: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.text = "long text \n\n text \n\n\n text \n\n text \n text \n\n\n texttexttext"
        label.textColor = .black
        return label
    }()
    private let label2: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.text = "long text \n\n text \n\n\n text \n\n text \n text \n\n\n texttexttext \n\n\n\n text \n\n\n\n\n\n\n text \n\n\n\n\n\n\n\n\n\n text \n\n\n\n \n\n\n\n \n\n\n\n \n\n\n\n text"
        label.textColor = .black
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(topView)
        view.addSubview(scrollView)
        scrollView.addSubview(stackView)
        stackView.addArrangedSubview(label1)
        stackView.addArrangedSubview(headerView)
        stackView.addArrangedSubview(label2)
        
        topView.snp.makeConstraints {
            $0.top.left.right.equalToSuperview()
            $0.height.equalTo(120)
        }
        scrollView.snp.makeConstraints {
            $0.top.equalTo(topView.snp.bottom)
            $0.left.bottom.right.equalToSuperview()
        }
        stackView.snp.makeConstraints {
            $0.edges.width.equalToSuperview()
        }
        headerView.snp.makeConstraints {
            $0.height.equalTo(56)
        }
    }
}
