import SwiftUI

struct DetailView: View {
    @Binding var menuItem:MenuItem
    var body: some View {
        HStack{
            Image("\(menuItem.id)_100w@3x")
                .resizable()
                .scaledToFit()
            Text(menuItem.name)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(menuItem: .constant(testMenuItem))
    }
}
