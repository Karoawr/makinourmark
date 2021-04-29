import Scenes
import Igis

  /*
     This class is responsible for rendering the background.
   */


class Background : RenderableEntity {
    let fillStyle = FillStyle(color:Color(.blue))
    let rectangle : Rectangle
    
    init() {
        // Using a meaningful name can be helpful for debugging
        rectangle = Rectangle(rect:Rect(), fillMode: .fill)
        super.init(name:"Background")
    }
    
    override func setup(canvasSize:Size, canvas:Canvas) {
        rectangle.rect.size = canvasSize
    }

    override func render(canvas:Canvas) {
        canvas.render(fillStyle, rectangle)
    }
}
