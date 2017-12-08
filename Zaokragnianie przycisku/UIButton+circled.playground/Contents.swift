import UIKit

extension UIButton {
    func circled(borderWidth: CGFloat?, borderColor: UIColor?){
        
        // Set radius
        self.layer.cornerRadius = 0.5 * self.bounds.size.width
        self.clipsToBounds = true
        
        // Check if there should be border and color
        if let width = borderWidth{
            self.layer.borderWidth = width
            
            if let color = borderColor{
                self.layer.borderColor = color.cgColor
            }else {
                self.layer.borderColor = UIColor.white.cgColor
            }
        }
    }
}




