import Scenes

  /*
     This class is responsible for the interaction Layer.
     Internally, it maintains the RenderableEntities for this layer.
   */


class InteractionLayer : Layer {
    let pics : Pics
      init() {
          // Using a meaningful name can be helpful for debugging
          pics = Pics()
          super.init(name:"Interaction")
          
          // We insert our RenderableEntities in the constructor
          insert(entity:pics, at:.front)
      }
  }
