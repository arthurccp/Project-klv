
import SwiftUI

struct AddPagView: View {
     
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        
        NavigationView{
            List{
                Section(header: Text("Title")){
                   
                }
                
                Section(header: Text("Detail")){
                   
                }
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Update")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
            
            ToolbarItem(placement: .navigationBarTrailing){
                
                Button(action:{
                    print("você selecionou")
                    
                    
                }){
                    Text("DONE")
                        .foregroundColor(.blue)
                        .font(.body)

                }
                    
            }
            ToolbarItem(placement: .navigationBarLeading){
                
                Button(action:{presentation.wrappedValue.dismiss()}, label: {
                    Text("Cancel")
                })
                    
            }
        }
          
        }
    }
}
struct AddPagView_Previews: PreviewProvider {
    static var previews: some View {
        AddPagView()
    }
}

