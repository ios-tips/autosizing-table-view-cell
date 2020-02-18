/*
 
 Some info about
 https://developer.apple.com/documentation/uikit/uitableviewcell
 */

import UIKit

class ExampleTableViewCell: UITableViewCell {
  
  var stringLabel: UILabel = {
    let label = UILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
    label.numberOfLines = 0
    return label
    }()
  
  override func draw(_ rect: CGRect) {
    self.layer.backgroundColor = UIColor.gray.cgColor
    self.layer.cornerRadius = 8
    self.addSubview(stringLabel)
    stringLabel.translatesAutoresizingMaskIntoConstraints = false
    stringLabel.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: 10).isActive = true
    stringLabel.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 10).isActive = true
    stringLabel.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: 16).isActive = true
    stringLabel.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 16).isActive = true
  }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
      self.layer.backgroundColor = UIColor.green.cgColor
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
  
  func setupCell(with info: String) {
    self.stringLabel.text = info
    self.stringLabel.sizeToFit()
  }

}
