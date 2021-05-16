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
    var all = [Image]()
    var buffer = 0
    var curFill = FillStyle(color:Color(.white))
    var temp : Image? = nil

    init(){
        brian = Image(sourceURL:URL(string:"https://raw.githubusercontent.com/Karoawr/makinourmark/main/Images/No_Background/brain_NB.png")!)
        christina = Image(sourceURL:URL(string:"https://raw.githubusercontent.com/Karoawr/makinourmark/main/Images/No_Background/christina_NB.png")!)
        friends = Image(sourceURL:URL(string:"https://raw.githubusercontent.com/Karoawr/makinourmark/main/Images/No_Background/friends_NB.png")!)
        group = Image(sourceURL:URL(string:"https://raw.githubusercontent.com/Karoawr/makinourmark/main/Images/No_Background/group_NB.png")!)
        hiba = Image(sourceURL:URL(string:"https://raw.githubusercontent.com/Karoawr/makinourmark/main/Images/No_Background/hiba_NB.png")!)
        mark = Image(sourceURL:URL(string:"https://raw.githubusercontent.com/Karoawr/makinourmark/main/Images/No_Background/mark_NB.png")!)
        nahyan = Image(sourceURL:URL(string:"https://raw.githubusercontent.com/Karoawr/makinourmark/main/Images/No_Background/nahyan_NB.png")!)
        naisha = Image(sourceURL:URL(string:"https://raw.githubusercontent.com/Karoawr/makinourmark/main/Images/No_Background/naisha_NB.png")!)
        riley = Image(sourceURL:URL(string:"https://raw.githubusercontent.com/Karoawr/makinourmark/main/Images/No_Background/riley_NB.png")!)
        younger = Image(sourceURL:URL(string:"https://raw.githubusercontent.com/Karoawr/makinourmark/main/Images/No_Background/younger_NB.png")!)
    }

    override func setup(canvasSize:Size, canvas:Canvas) {
        canvas.setup(brian)
        brian.renderMode = .destinationPoint(Point(x:(canvasSize.width/2)-(532/2), y:(canvasSize.height/2)-(1017/2)))
        all.append(brian)
                
        canvas.setup(christina)
        christina.renderMode = .destinationPoint(Point(x:(canvasSize.width/2)-(1234/2), y:(canvasSize.height/2)-(1932/2)))
        all.append(christina)
        
        canvas.setup(friends)
        friends.renderMode = .destinationPoint(Point(x:(canvasSize.width/2)-(1239/2), y:(canvasSize.height/2)-(831/2)))
        all.append(friends)
                        
        canvas.setup(group)
        group.renderMode = .destinationPoint(Point(x:(canvasSize.width/2)-(5816/2), y:(canvasSize.height/2)-(1922/2)))
        all.append(group)
        
        canvas.setup(hiba)
        hiba.renderMode = .destinationPoint(Point(x:(canvasSize.width/2)-(301/2), y:(canvasSize.height/2)-(466/2)))
        all.append(hiba)
        
        canvas.setup(mark)
        mark.renderMode = .destinationPoint(Point(x:(canvasSize.width/2)-(2096/2), y:(canvasSize.height/2)-(2797/2)))
        all.append(mark)
        
        canvas.setup(nahyan)
        nahyan.renderMode = .destinationPoint(Point(x:(canvasSize.width/2)-(752/2), y:(canvasSize.height/2)-(1015/2)))
        all.append(nahyan)
        
        canvas.setup(naisha)
        naisha.renderMode = .destinationPoint(Point(x:(canvasSize.width/2)-(828/2), y:(canvasSize.height/2)-(1328/2)))
        all.append(naisha)
        
        canvas.setup(riley)
        riley.renderMode = .destinationPoint(Point(x:(canvasSize.width/2)-(1194/2), y:(canvasSize.height/2)-(1792/2)))
        all.append(riley)
        
        canvas.setup(younger)
        younger.renderMode = .destinationPoint(Point(x:(canvasSize.width/2)-(616/2), y:(canvasSize.height/2)-(526/2)))
        all.append(younger)

        
        if canvasSize.height < 1017 {
            let changeRatio = Double(canvasSize.height)/(1017.0)
            let nw = Int(changeRatio*532.0)
            let nh = Int(changeRatio*1017.0)
            brian.renderMode = .destinationRect(Rect(topLeft:Point(x:(canvasSize.width/2)-(nw/2), y:(canvasSize.height/2)-(nh/2)), size:Size(width:Int(changeRatio*532.0), height:canvasSize.height)))
        }
        else if canvasSize.width < 532 {
            let changeRatio = Double(canvasSize.width)/(532.0)
            let nw = Int(changeRatio*532.0)
            let nh = Int(changeRatio*1017.0)
            brian.renderMode = .destinationRect(Rect(topLeft:Point(x:(canvasSize.width/2)-(nw/2), y:(canvasSize.height/2)-(nh/2)), size:Size(width:nw, height:nh)))
        }

        if canvasSize.height < 1932 {
            let changeRatio = Double(canvasSize.height)/(1932.0)
            let nw = Int(changeRatio*1234.0)
            let nh = Int(changeRatio*1932.0)
            christina.renderMode = .destinationRect(Rect(topLeft:Point(x:(canvasSize.width/2)-(nw/2), y:(canvasSize.height/2)-(nh/2)), size:Size(width:Int(changeRatio*1234.0), height:canvasSize.height)))
        }
        else if canvasSize.width < 1234 {
            let changeRatio = Double(canvasSize.width)/(1234.0)
            let nw = Int(changeRatio*1234.0)
            let nh = Int(changeRatio*1932.0)
            christina.renderMode = .destinationRect(Rect(topLeft:Point(x:(canvasSize.width/2)-(nw/2), y:(canvasSize.height/2)-(nh/2)), size:Size(width:canvasSize.width, height:Int(changeRatio*1932.0))))
        }

        if canvasSize.width < 1239 {
            let changeRatio = Double(canvasSize.width)/(1239.0)
            let nw = Int(changeRatio*1239.0)
            let nh = Int(changeRatio*831.0)
            friends.renderMode = .destinationRect(Rect(topLeft:Point(x:(canvasSize.width/2)-(nw/2), y:(canvasSize.height/2)-(nh/2)), size:Size(width:canvasSize.width, height:Int(changeRatio*831.0))))
        }
        else if canvasSize.height < 831 {
            let changeRatio = Double(canvasSize.height)/(831.0)
            let nw = Int(changeRatio*1239.0)
            let nh = Int(changeRatio*831.0)
            friends.renderMode = .destinationRect(Rect(topLeft:Point(x:(canvasSize.width/2)-(nw/2), y:(canvasSize.height/2)-(nh/2)), size:Size(width:Int(changeRatio*1239.0), height:canvasSize.height)))
        }
        if canvasSize.width < 5816 {
            let changeRatio = Double(canvasSize.width)/(5816.0)
            let nw = Int(changeRatio*5816.0)
            let nh = Int(changeRatio*1922.0)
            group.renderMode = .destinationRect(Rect(topLeft:Point(x:(canvasSize.width/2)-(nw/2), y:(canvasSize.height/2)-(nh/2)), size:Size(width:canvasSize.width, height:Int(changeRatio*1922.0))))
        }
        else if canvasSize.height < 1922 {
            let changeRatio = Double(canvasSize.height)/(1922.0)
            let nw = Int(changeRatio*5816.0)
            let nh = Int(changeRatio*1922.0)
            group.renderMode = .destinationRect(Rect(topLeft:Point(x:(canvasSize.width/2)-(nw/2), y:(canvasSize.height/2)-(nh/2)), size:Size(width:Int(changeRatio*5816.0), height:canvasSize.height)))
        }
        
        if canvasSize.height < 466 {
            let changeRatio = Double(canvasSize.height)/(466.0)
            let nw = Int(changeRatio*301.0)
            let nh = Int(changeRatio*466.0)
            hiba.renderMode = .destinationRect(Rect(topLeft:Point(x:(canvasSize.width/2)-(nw/2), y:(canvasSize.height/2)-(nh/2)), size:Size(width:Int(changeRatio*301.0), height:canvasSize.height)))
        }
        else if canvasSize.width < 301 {
            let changeRatio = Double(canvasSize.width)/(301.0)
            let nw = Int(changeRatio*301.0)
            let nh = Int(changeRatio*466.0)
            hiba.renderMode = .destinationRect(Rect(topLeft:Point(x:(canvasSize.width/2)-(nw/2), y:(canvasSize.height/2)-(nh/2)), size:Size(width:canvasSize.width, height:Int(changeRatio*466.0))))
        }
        
        if canvasSize.height < 2797 {
            let changeRatio = Double(canvasSize.height)/(2797.0)
            let nw = Int(changeRatio*2096.0)
            let nh = Int(changeRatio*2797.0)
            mark.renderMode = .destinationRect(Rect(topLeft:Point(x:(canvasSize.width/2)-(nw/2), y:(canvasSize.height/2)-(nh/2)), size:Size(width:Int(changeRatio*2096.0), height:canvasSize.height)))
        }
        else if canvasSize.width < 2096 {
            let changeRatio = Double(canvasSize.width)/(2096.0)
            let nw = Int(changeRatio*2096.0)
            let nh = Int(changeRatio*2797.0)
            mark.renderMode = .destinationRect(Rect(topLeft:Point(x:(canvasSize.width/2)-(nw/2), y:(canvasSize.height/2)-(nh/2)), size:Size(width:canvasSize.width, height:Int(changeRatio*2797.0))))
        }
        
        if canvasSize.height <  1015{
            let changeRatio = Double(canvasSize.height)/(1015.0)
            let nw = Int(changeRatio*752.0)
            let nh = Int(changeRatio*1015.0)
            nahyan.renderMode = .destinationRect(Rect(topLeft:Point(x:(canvasSize.width/2)-(nw/2), y:(canvasSize.height/2)-(nh/2)), size:Size(width:Int(changeRatio*752.0), height:canvasSize.height)))
        }
        else if canvasSize.width < 752 {
            let changeRatio = Double(canvasSize.width)/(752.0)
            let nw = Int(changeRatio*752.0)
            let nh = Int(changeRatio*1015.0)
            nahyan.renderMode = .destinationRect(Rect(topLeft:Point(x:(canvasSize.width/2)-(nw/2), y:(canvasSize.height/2)-(nh/2)), size:Size(width:canvasSize.width, height:Int(changeRatio*1015.0))))
        }
        
        if canvasSize.height < 1328 {
            let changeRatio = Double(canvasSize.height)/(1328.0)
            let nw = Int(changeRatio*828.0)
            let nh = Int(changeRatio*1328.0)
            naisha.renderMode = .destinationRect(Rect(topLeft:Point(x:(canvasSize.width/2)-(nw/2), y:(canvasSize.height/2)-(nh/2)), size:Size(width:Int(changeRatio*828.0), height:canvasSize.height)))
        }
        else if canvasSize.width < 828 {
            let changeRatio = Double(canvasSize.width)/(828.0)
            let nw = Int(changeRatio*828.0)
            let nh = Int(changeRatio*1328.0)
            naisha.renderMode = .destinationRect(Rect(topLeft:Point(x:(canvasSize.width/2)-(nw/2), y:(canvasSize.height/2)-(nh/2)), size:Size(width:canvasSize.width, height:Int(changeRatio*1328.0))))
        }
        
        if canvasSize.height < 1792 {
            let changeRatio = Double(canvasSize.height)/(1792.0)
            let nw = Int(changeRatio*1194.0)
            let nh = Int(changeRatio*17962.0)
            riley.renderMode = .destinationRect(Rect(topLeft:Point(x:(canvasSize.width/2)-(nw/2), y:(canvasSize.height/2)-(nh/2)), size:Size(width:Int(changeRatio*1194.0), height:canvasSize.height)))
        }
        else if canvasSize.width < 1194 {
            let changeRatio = Double(canvasSize.width)/(1194.0)
            let nw = Int(changeRatio*1194.0)
            let nh = Int(changeRatio*1792.0)
            riley.renderMode = .destinationRect(Rect(topLeft:Point(x:(canvasSize.width/2)-(nw/2), y:(canvasSize.height/2)-(nh/2)), size:Size(width:canvasSize.width, height:Int(changeRatio*1792.0))))
        }
        if canvasSize.width < 616 {
            let changeRatio = Double(canvasSize.width)/(616.0)
            let nw = Int(changeRatio*616.0)
            let nh = Int(changeRatio*526.0)
            younger.renderMode = .destinationRect(Rect(topLeft:Point(x:(canvasSize.width/2)-(nw/2), y:(canvasSize.height/2)-(nh/2)), size:Size(width:canvasSize.width, height:Int(changeRatio*526.0))))
        }
        else if canvasSize.height < 526 {
            let changeRatio = Double(canvasSize.height)/(526.0)
            let nw = Int(changeRatio*616.0)
            let nh = Int(changeRatio*526.0)
            younger.renderMode = .destinationRect(Rect(topLeft:Point(x:(canvasSize.width/2)-(nw/2), y:(canvasSize.height/2)-(nh/2)), size:Size(width:Int(changeRatio*616.0), height:canvasSize.height)))
        }
                
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
            temp = all.randomElement()!
        }
        canvas.render(curFill)
        canvas.render(Rectangle(rect:Rect(topLeft:Point(x:0, y:0), size:canvas.canvasSize!), fillMode:.fill))
    
        if temp != nil{
            dump(temp)
            if temp!.isReady{
                canvas.render(temp!)
            }
        }

        
        let canvasSize = canvas.canvasSize!
             
    }
    
}
