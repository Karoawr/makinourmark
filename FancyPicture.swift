import Scenes
import Igis

class FancyPicture : RenderableEntity{
    var static solidBackgrounds = [Color()]()
    var static gradientBackgrounds = [Gradient()]()
    var static movingGradientBackgrounds = [Gradient()]()
    var static imageBackgrounds = [Image()]()
    let rawPicture : Image()

    init(pic: Image()){
        rawPicture = pic
    }

    func addSolidBackground(color:Color()){
        solidBackground.append(color)
    }
    
    func addGradientBackground(color:Color()){
        gradientBackground.append(color)
    }
    
    func addMovingGradientBackground(color:Color()){
        movingGradientBackground.append(color)
    }
    
    func addImageBackground(color:Color()){
        imageBackground.append(color)
    }
}
