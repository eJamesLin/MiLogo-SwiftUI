import SwiftUI
import PlaygroundSupport

let fontURL = Bundle.main.url(forResource: "BabylonIndustrial", withExtension: "ttf")! as CFURL
CTFontManagerRegisterFontsForURL(fontURL, .process, nil)

struct ContentView: View {
    var body: some View {
        MiLogo(n: 3).padding(10).background(Color.black)
        MiLogoGrid()
    }
}

PlaygroundPage.current.setLiveView(ContentView())
