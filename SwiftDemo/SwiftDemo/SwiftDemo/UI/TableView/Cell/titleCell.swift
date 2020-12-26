//
//  titleCell.swift
//  SwiftDemo
//
//  Created by xingkuanlin on 2020/12/26.
//

import UIKit
import SnapKit

class titleCell: UITableViewCell {
    
    var titleLabel = UILabel()
    
    var title:String? {
        didSet {
            titleLabel.text = title
        }
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.selectionStyle = .none //选中无高亮
        self.setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}



extension titleCell {
    func setupUI() {
        titleLabel.font = UIFont.systemFont(ofSize: 17)
        self.contentView.addSubview(titleLabel)
        titleLabel.snp.makeConstraints { (make) in
            make.left.equalTo(10)
            make.centerY.equalToSuperview()
        }
    }
}

