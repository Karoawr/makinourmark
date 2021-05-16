import Scenes
import Igis
import Foundation

class Pics : RenderableEntity {
    let brian : Image
    let christina : Image
    let friends : Image
    let group : Image
    let hiba : Image
    let mark : Image
    let nahyan : Image
    let naisha : Image
    let riley : Image
    let younger : Image
    var all = [FancyPicture]()
    var buffer = 0
    var curFill = FillStyle(color:Color(.white))

    init(){
        brian = Image(sourceURL:URL(string:"https://raw.githubusercontent.com/Karoawr/makinourmark/main/Images/No_Background/brain_NB.png?token=AKKRVYEGB7YERYEY35R5ELTAS6YTE")!)
        christina = Image(sourceURL:URL(string:"https://raw.githubusercontent.com/Karoawr/makinourmark/main/Images/No_Background/christina_NB.png?token=AKKRVYD4BLNBUAXJGGN4RLLAS6YVI")!)
        friends = Image(sourceURL:URL(string:"https://raw.githubusercontent.com/Karoawr/makinourmark/main/Images/No_Background/friends_NB.png?token=AKKRVYBQ4EDLVQVXV6CIC7DAS6YVM")!)
        group = Image(sourceURL:URL(string:"https://raw.githubusercontent.com/Karoawr/makinourmark/main/Images/No_Background/group_NB.png?token=AKKRVYEYLPPMNU7YWG2FSBLAS6YVS")!)
        hiba = Image(sourceURL:URL(string:"https://raw.githubusercontent.com/Karoawr/makinourmark/main/Images/No_Background/hiba_NB.png?token=AKKRVYEMQVP2OKK6X3KYTFTAS6YVY")!)
        mark = Image(sourceURL:URL(string:"https://raw.githubusercontent.com/Karoawr/makinourmark/main/Images/No_Background/mark_NB.png?token=AKKRVYEA5REXZC2JNWXY3F3AS6YV4")!)
        nahyan = Image(sourceURL:URL(string:"https://raw.githubusercontent.com/Karoawr/makinourmark/main/Images/No_Background/nahyan_NB.png?token=AKKRVYHZ35J6AY2LAOAIX73AS6YWE")!)
        naisha = Image(sourceURL:URL(string:"https://raw.githubusercontent.com/Karoawr/makinourmark/main/Images/No_Background/naisha_NB.png?token=AKKRVYH7HXFGRVO4FHJP3BLAS6YWI")!)
        riley = Image(sourceURL:URL(string:"https://raw.githubusercontent.com/Karoawr/makinourmark/main/Images/No_Background/riley_NB.png?token=AKKRVYBHULVRYQHICF22QNDAS6YWO")!)
        younger = Image(sourceURL:URL(string:"https://raw.githubusercontent.com/Karoawr/makinourmark/main/Images/No_Background/younger_NB.png?token=AKKRVYFACV4W7KIBAHUPORLAS6YWS")!)
    }

    override func setup(canvasSize:Size, canvas:Canvas) {
        canvas.setup(brian);
  /*      if canvasSize.width < 532 {
            let changeRatio = Double(canvasSize.width)/(532.0)
            brian.renderMode = .destinationRect(Rect(topLeft:Point(), size:Size(width:canvasSize.width, height:Int(changeRatio*1017.0))))
            }
        if canvasSize.height < 1017 {
            let changeRatio = Double(canvasSize.height)/(1017.0)
            brian.renderMode = .destinationRect(Rect(topLeft:Point(), size:Size(width:Int(changeRatio*532.0), height:canvasSize.height)))
        }
        
   */
        var brianFP = FancyPicture(pic:brian);
        all.append(brianFP)
        
        canvas.setup(christina);
        var christinaFP = FancyPicture(pic:christina);
        all.append(christinaFP)
        
        canvas.setup(friends);
        var friendsFP = FancyPicture(pic:friends);
        all.append(friendsFP)
                
        canvas.setup(group);
        var groupFP = FancyPicture(pic:group);
        all.append(groupFP)
                
        canvas.setup(hiba);
        var hibaFP = FancyPicture(pic:hiba);
        all.append(hibaFP)
        
        canvas.setup(mark);
        var markFP = FancyPicture(pic:mark);
        all.append(markFP)
        
        canvas.setup(nahyan);
        var nahyanFP = FancyPicture(pic:nahyan);
        all.append(nahyanFP)
        
        canvas.setup(naisha);
        var naishaFP = FancyPicture(pic:naisha);
        all.append(naishaFP)
                
        canvas.setup(riley);
        var rileyFP = FancyPicture(pic:riley);
        all.append(rileyFP)
        
        canvas.setup(younger);
        var youngerFP = FancyPicture(pic:younger);
        all.append(youngerFP)
                
        addSolids()
        addGradients()
        for gradient in FancyPicture.gradientBackgrounds{
            canvas.setup(gradient)
        }
    }

    func randomColor() -> Color{
        return Color(red:UInt8(Int.random(in:0...255)), green:UInt8(Int.random(in:0...255)), blue:UInt8(Int.random(in:0...255)))
    }
    
    func addSolids(){
        for _ in 0 ..< 10{
            FancyPicture.addSolidBackground(color:randomColor())
        }
    }

    func addGradients(){
        for _ in 0 ..< 10{
            let gradient = Gradient(mode:Gradient.Mode.linear(start:Point(), end:Point(x:2000,y:3000)))
            gradient.addColorStop(ColorStop(position:0.0, color:randomColor()))
            gradient.addColorStop(ColorStop(position:1.0, color:randomColor()))
            FancyPicture.addGradientBackground(gradient:gradient)
        }
    }

    override func render(canvas:Canvas){
        buffer += 1
        if buffer == 50{
            buffer = 0
            switch Int.random(in:0...1){
            case 0: curFill = FillStyle(color:FancyPicture.solidBackgrounds.randomElement()!)
            case 1: curFill = FillStyle(gradient:FancyPicture.gradientBackgrounds.randomElement()!)
            default: let _ = 0
            }
        }
        canvas.render(curFill)
        canvas.render(Rectangle(rect:Rect(topLeft:Point(x:0, y:0), size:canvas.canvasSize!), fillMode:.fill))
    
        let temp = all.randomElement()!
        let canvasSize = canvas.canvasSize!

/*        
        if brian.isReady {
            if canvasSize.width < 532 {
                let changeRatio = Double(canvasSize.width)/(532.0)
                brian.renderMode = .destinationRect(Rect(topLeft:Point(), size:Size(width:canvasSize.width, height:Int(changeRatio*1017.0))))
            }
            if canvasSize.height < 1017 {
                let changeRatio = Double(canvasSize.height)/(1017.0)
                brian.renderMode = .destinationRect(Rect(topLeft:Point(), size:Size(width:Int(changeRatio*532.0), height:canvasSize.height)))
            }
        }
  
        if canvasSize.width < 1234 {
            let changeRatio = Double(canvasSize.width)/(1234.0)
            christina.renderMode = .destinationRect(Rect(topLeft:Point(), size:Size(width:canvasSize.width, height:Int(changeRatio*1932.0))))
        }
        if canvasSize.height < 1932 {
            let changeRatio = Double(canvasSize.height)/(1932.0)
            christina.renderMode = .destinationRect(Rect(topLeft:Point(), size:Size(width:Int(changeRatio*1234.0), height:canvasSize.height)))
        }
        if canvasSize.width < 1239 {
            let changeRatio = Double(canvasSize.width)/(1239.0)
            friends.renderMode = .destinationRect(Rect(topLeft:Point(), size:Size(width:canvasSize.width, height:Int(changeRatio*831.0))))
        }
        if canvasSize.height < 831 {
            let changeRatio = Double(canvasSize.height)/(831.0)
            friends.renderMode = .destinationRect(Rect(topLeft:Point(), size:Size(width:Int(changeRatio*1239.0), height:canvasSize.height)))
        }
        if canvasSize.width < 5816 {
            let changeRatio = Double(canvasSize.width)/(5816.0)
            group.renderMode = .destinationRect(Rect(topLeft:Point(), size:Size(width:canvasSize.width, height:Int(changeRatio*1922.0))))
        }
        if canvasSize.height < 1922 {
            let changeRatio = Double(canvasSize.height)/(1922.0)
            group.renderMode = .destinationRect(Rect(topLeft:Point(), size:Size(width:Int(changeRatio*5816.0), height:canvasSize.height)))
        }
        if canvasSize.width < 301 {
            let changeRatio = Double(canvasSize.width)/(301.0)
            hiba.renderMode = .destinationRect(Rect(topLeft:Point(), size:Size(width:canvasSize.width, height:Int(changeRatio*466.0))))
        }
        if canvasSize.height < 466 {
            let changeRatio = Double(canvasSize.height)/(466.0)
            hiba.renderMode = .destinationRect(Rect(topLeft:Point(), size:Size(width:Int(changeRatio*301.0), height:canvasSize.height)))
        }
        if canvasSize.width < 2096 {
            let changeRatio = Double(canvasSize.width)/(2096.0)
            mark.renderMode = .destinationRect(Rect(topLeft:Point(), size:Size(width:canvasSize.width, height:Int(changeRatio*2797.0))))
        }
        if canvasSize.height < 2797 {
            let changeRatio = Double(canvasSize.height)/(2797.0)
            mark.renderMode = .destinationRect(Rect(topLeft:Point(), size:Size(width:Int(changeRatio*2096.0), height:canvasSize.height)))
        }
        if canvasSize.width < 752 {
            let changeRatio = Double(canvasSize.width)/(752.0)
            nahyan.renderMode = .destinationRect(Rect(topLeft:Point(), size:Size(width:canvasSize.width, height:Int(changeRatio*1017.0))))
        }
        if canvasSize.height < 1017 {
            let changeRatio = Double(canvasSize.height)/(1017.0)
            nahyan.renderMode = .destinationRect(Rect(topLeft:Point(), size:Size(width:Int(changeRatio*752.0), height:canvasSize.height)))
        }
        if canvasSize.width < 828 {
            let changeRatio = Double(canvasSize.width)/(828.0)
            naisha.renderMode = .destinationRect(Rect(topLeft:Point(), size:Size(width:canvasSize.width, height:Int(changeRatio*1328.0))))
        }
        if canvasSize.height < 1328 {
            let changeRatio = Double(canvasSize.height)/(1328.0)
            naisha.renderMode = .destinationRect(Rect(topLeft:Point(), size:Size(width:Int(changeRatio*828.0), height:canvasSize.height)))
        }
        if canvasSize.width < 1194 {
            let changeRatio = Double(canvasSize.width)/(1194.0)
            riley.renderMode = .destinationRect(Rect(topLeft:Point(), size:Size(width:canvasSize.width, height:Int(changeRatio*1792.0))))
        }
        if canvasSize.height < 1792 {
            let changeRatio = Double(canvasSize.height)/(1792.0)
            riley.renderMode = .destinationRect(Rect(topLeft:Point(), size:Size(width:Int(changeRatio*1194.0), height:canvasSize.height)))
        }
        if canvasSize.width < 616 {
            let changeRatio = Double(canvasSize.width)/(616.0)
            younger.renderMode = .destinationRect(Rect(topLeft:Point(), size:Size(width:canvasSize.width, height:Int(changeRatio*526.0))))
        }
        if canvasSize.height < 526 {
            let changeRatio = Double(canvasSize.height)/(526.0)
            younger.renderMode = .destinationRect(Rect(topLeft:Point(), size:Size(width:Int(changeRatio*616.0), height:canvasSize.height)))
        }

      
         */

        
        
        if temp.rawPicture.isReady {canvas.render(temp.rawPicture)}
        
    }
    
}
