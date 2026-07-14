import AppKit
import ImageIO

let width = 1600
let height = 900
let outputPath = CommandLine.arguments.count > 1
    ? CommandLine.arguments[1]
    : "assets/github-poster.png"
let logoPath = CommandLine.arguments.count > 2
    ? CommandLine.arguments[2]
    : "assets/questflow-wordmark-light-background.png"

let ink = NSColor(calibratedRed: 19 / 255, green: 19 / 255, blue: 19 / 255, alpha: 1)
let charcoal = NSColor(calibratedRed: 40 / 255, green: 41 / 255, blue: 45 / 255, alpha: 1)
let teal = NSColor(calibratedRed: 35 / 255, green: 116 / 255, blue: 125 / 255, alpha: 1)
let paper = NSColor.white

func y(_ yFromTop: CGFloat) -> CGFloat {
    CGFloat(height) - yFromTop
}

func font(name: String, size: CGFloat) -> NSFont {
    NSFont(name: name, size: size) ?? NSFont.systemFont(ofSize: size)
}

func drawText(
    _ text: String,
    x: CGFloat,
    yFromTop: CGFloat,
    width: CGFloat,
    font: NSFont,
    color: NSColor = ink,
    alignment: NSTextAlignment = .center,
    kern: CGFloat = 0
) {
    let paragraph = NSMutableParagraphStyle()
    paragraph.alignment = alignment
    paragraph.lineBreakMode = .byWordWrapping

    let attributes: [NSAttributedString.Key: Any] = [
        .font: font,
        .foregroundColor: color,
        .paragraphStyle: paragraph,
        .kern: kern
    ]

    let attributed = NSAttributedString(string: text, attributes: attributes)
    let bounds = attributed.boundingRect(
        with: NSSize(width: width, height: 220),
        options: [.usesLineFragmentOrigin, .usesFontLeading]
    )
    let textHeight = ceil(bounds.height) + 12
    attributed.draw(in: NSRect(
        x: x,
        y: CGFloat(height) - yFromTop - textHeight,
        width: width,
        height: textHeight
    ))
}

let scale: CGFloat = 2
let colorSpace = CGColorSpaceCreateDeviceRGB()
guard let bitmapContext = CGContext(
    data: nil,
    width: width * Int(scale),
    height: height * Int(scale),
    bitsPerComponent: 8,
    bytesPerRow: 0,
    space: colorSpace,
    bitmapInfo: CGImageAlphaInfo.premultipliedLast.rawValue
) else {
    fatalError("Could not create poster bitmap")
}

bitmapContext.setFillColor(CGColor(gray: 1, alpha: 1))
bitmapContext.fill(CGRect(x: 0, y: 0, width: width * Int(scale), height: height * Int(scale)))
bitmapContext.scaleBy(x: scale, y: scale)
let graphicsContext = NSGraphicsContext(cgContext: bitmapContext, flipped: false)
NSGraphicsContext.saveGraphicsState()
NSGraphicsContext.current = graphicsContext

paper.setFill()
NSRect(x: 0, y: 0, width: width, height: height).fill()

charcoal.setStroke()
let border = NSBezierPath(rect: NSRect(x: 38, y: 38, width: 1524, height: 824))
border.lineWidth = 2
border.stroke()

drawText(
    "Investor Skills",
    x: 170,
    yFromTop: 130,
    width: 1260,
    font: font(name: "Bodoni 72 Book Italic", size: 132),
    color: ink,
    kern: -3
)

drawText(
    "Mental models from history's greatest investors",
    x: 300,
    yFromTop: 312,
    width: 1000,
    font: font(name: "Baskerville Italic", size: 34),
    color: charcoal
)

teal.setStroke()
let accent = NSBezierPath()
accent.move(to: NSPoint(x: 730, y: y(404)))
accent.line(to: NSPoint(x: 870, y: y(404)))
accent.lineWidth = 4
accent.stroke()

drawText(
    "From investor judgment to executable AI-agent skills",
    x: 230,
    yFromTop: 474,
    width: 1140,
    font: font(name: "Baskerville", size: 40),
    color: ink
)

drawText(
    "POWERED BY",
    x: 465,
    yFromTop: 674,
    width: 250,
    font: font(name: "Helvetica Neue Medium", size: 17),
    color: charcoal,
    alignment: .right,
    kern: 5
)

guard
    let logoSource = CGImageSourceCreateWithURL(URL(fileURLWithPath: logoPath) as CFURL, nil),
    let logo = CGImageSourceCreateImageAtIndex(logoSource, 0, nil),
    let context = NSGraphicsContext.current?.cgContext
else {
    fatalError("Could not load Questflow wordmark")
}

context.interpolationQuality = .high
context.draw(logo, in: CGRect(x: 750, y: y(735), width: 330, height: 121))

NSGraphicsContext.restoreGraphicsState()

guard
    let renderedImage = bitmapContext.makeImage(),
    let data = NSBitmapImageRep(cgImage: renderedImage).representation(using: .png, properties: [:])
else {
    fatalError("Could not render poster PNG")
}

try data.write(to: URL(fileURLWithPath: outputPath))
