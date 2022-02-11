import SwiftUI

struct ContentView: View {
    @State var menu:[MenuItem]
    @State var selected:MenuItem = testMenuItem
    var body: some View {
        VStack {
            Image("\(selected.id)_100w@3x")
            Text(selected.name).font(.title)
            Text(selected.description).font(.caption2)
            List($menu){ $menuItem in
                DetailView(menuItem: $menuItem)
                    .frame(height:150)
                    .onTapGesture{
                        selected = menuItem
                    }
                
            }
        }
    }
}
