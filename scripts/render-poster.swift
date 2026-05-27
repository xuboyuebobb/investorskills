import AppKit

let width = 1600
let height = 900
let outputPath = "assets/social-poster.png"

func color(_ white: CGFloat) -> NSColor {
    NSColor(calibratedWhite: white, alpha: 1)
}

func drawText(
    _ text: String,
    x: CGFloat,
    yFromTop: CGFloat,
    width: CGFloat,
    font: NSFont,
    color: NSColor = .black,
    alignment: NSTextAlignment = .center
) {
    let paragraph = NSMutableParagraphStyle()
    paragraph.alignment = alignment
    paragraph.lineBreakMode = .byWordWrapping

    let attributes: [NSAttributedString.Key: Any] = [
        .font: font,
        .foregroundColor: color,
        .paragraphStyle: paragraph
    ]

    let attributed = NSAttributedString(string: text, attributes: attributes)
    let size = attributed.boundingRect(
        with: NSSize(width: width, height: 300),
        options: [.usesLineFragmentOrigin, .usesFontLeading]
    ).size

    let textHeight = ceil(size.height) + 8
    attributed.draw(in: NSRect(x: x, y: CGFloat(height) - yFromTop - textHeight, width: width, height: textHeight))
}

func y(_ yFromTop: CGFloat) -> CGFloat {
    CGFloat(height) - yFromTop
}

func font(name: String, size: CGFloat) -> NSFont {
    NSFont(name: name, size: size) ?? NSFont.systemFont(ofSize: size)
}

func italicSerif(size: CGFloat) -> NSFont {
    font(name: "Bodoni 72 Book Italic", size: size)
}

func serif(size: CGFloat) -> NSFont {
    font(name: "Times New Roman", size: size)
}

let image = NSImage(size: NSSize(width: width, height: height))
image.lockFocus()

color(0.968).setFill()
NSRect(x: 0, y: 0, width: width, height: height).fill()

NSColor.black.setStroke()
let outer = NSBezierPath(rect: NSRect(x: 38, y: 38, width: 1524, height: 824))
outer.lineWidth = 2
outer.stroke()

NSColor(calibratedWhite: 0, alpha: 0.35).setStroke()
let inner = NSBezierPath(rect: NSRect(x: 68, y: 68, width: 1464, height: 764))
inner.lineWidth = 1
inner.stroke()

drawText(
    "Investor Skills",
    x: 180,
    yFromTop: 132,
    width: 1240,
    font: italicSerif(size: 124)
)

NSColor.black.setFill()
for x in [645, 685, 725, 875, 915, 955] {
    NSBezierPath(ovalIn: NSRect(x: CGFloat(x) - 7, y: y(320) - 7, width: 14, height: 14)).fill()
}

drawText(
    "Mental models from history's greatest investors",
    x: 330,
    yFromTop: 338,
    width: 940,
    font: italicSerif(size: 36)
)

let divider = NSBezierPath()
divider.move(to: NSPoint(x: 270, y: y(455)))
divider.line(to: NSPoint(x: 1330, y: y(455)))
divider.lineWidth = 1
divider.stroke()

drawText(
    "From investor judgment to executable AI-agent skills",
    x: 210,
    yFromTop: 525,
    width: 1180,
    font: serif(size: 52)
)

drawText(
    "Buffett - Munger - Druckenmiller - Soros - Marks - Dalio - Lynch - Li Lu",
    x: 230,
    yFromTop: 626,
    width: 1140,
    font: serif(size: 30)
)

NSColor.black.setStroke()
for x in [375, 800, 1225] {
    let circle = NSBezierPath(ovalIn: NSRect(x: CGFloat(x) - 26, y: y(724) - 26, width: 52, height: 52))
    circle.lineWidth = 1.5
    circle.stroke()
}
let connectorA = NSBezierPath()
connectorA.move(to: NSPoint(x: 403, y: y(724)))
connectorA.line(to: NSPoint(x: 772, y: y(724)))
connectorA.lineWidth = 1.5
connectorA.stroke()
let connectorB = NSBezierPath()
connectorB.move(to: NSPoint(x: 828, y: y(724)))
connectorB.line(to: NSPoint(x: 1197, y: y(724)))
connectorB.lineWidth = 1.5
connectorB.stroke()

drawText("Source the model", x: 245, yFromTop: 762, width: 260, font: serif(size: 24))
drawText("Structure the process", x: 660, yFromTop: 762, width: 280, font: serif(size: 24))
drawText("Ship the skill", x: 1095, yFromTop: 762, width: 260, font: serif(size: 24))

image.unlockFocus()

guard
    let tiff = image.tiffRepresentation,
    let bitmap = NSBitmapImageRep(data: tiff),
    let data = bitmap.representation(using: .png, properties: [:])
else {
    fatalError("Could not render poster PNG")
}

try data.write(to: URL(fileURLWithPath: outputPath))
