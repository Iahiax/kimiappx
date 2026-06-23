import UIKit
import WebKit

class ViewController: UIViewController {

    var webView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()

        let config = WKWebViewConfiguration()
        config.preferences.javaScriptEnabled = true

        webView = WKWebView(frame: self.view.bounds, configuration: config)
        webView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.view.addSubview(webView)

        if let htmlPath = Bundle.main.path(forResource: "index", ofType: "html") {
            let html = try! String(contentsOfFile: htmlPath, encoding: .utf8)
            webView.loadHTMLString(html, baseURL: nil)
        }
    }
}
