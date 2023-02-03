//
//  MovieCell.swift
//  FilmKu
//
//  Created by Salah Khaled on 02/02/2023.
//  Copyright © 2023 Salah Khaled. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {
    
    @IBOutlet weak var cover: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var year: UILabel!
    @IBOutlet weak var count: UILabel!
    @IBOutlet weak var rating: UILabel!
    @IBOutlet weak var yearBackground: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configure(with item: Item) {
        
        cover.loadImage(url: item.image)
        cover.setRadius(12)
        
        title.text = item.title
        year.text = item.year
        count.text = item.count
        rating.text = item.rating
        
        yearBackground.setRadius(10)
        
    }
}
