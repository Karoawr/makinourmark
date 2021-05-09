import Foundation
import Scenes
import Igis

class FancyPicture : RenderableEntity {
    static var solidBackgrounds = [Color]()
    static var gradientBackgrounds = [Gradient]()
    static var movingGradientBackgrounds = [Gradient]()
    static var imageBackgrounds = [Image]()
    let rawPicture : Image

    init(pic:Image){
        rawPicture = pic
    }

    static func addSolidBackground(color:Color){
        FancyPicture.solidBackgrounds.append(color)
    }

    static func addGradientBackground(gradient:Gradient){
        FancyPicture.gradientBackgrounds.append(gradient)
    }

    static func addMovingGradientBackground(gradient:Gradient){
         FancyPicture.movingGradientBackgrounds.append(gradient)
    }
    
    static func addImageBackground(image:Image){
         FancyPicture.imageBackgrounds.append(image)
    }
    
}
