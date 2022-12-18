//
//  Graphs.swift
//  GraphTheory
//
//  Created by ワトソン・マイク on 2022/11/30.
//

import SwiftUI

import SwiftUI

struct Graphs: View {
    var title = "Graph"
    @State private var definition = """
                        \\text{A graph is an ordered pair }~ G = \\left(V,~ E\\right) ~\\text{comprising:}
                        """
    @State private var definition1_2 = """
                            \\bullet V,~ \\text{a set of vertices, or nodes;}
                            """
    @State private var definition1_3 = """
                            \\bullet E \\subseteq \\{\\{x,~y\\} ~ | ~ x,~y \\in V ~\\text{ and }~ x  \\text{ != } y\\},~ \\text{a set of edges, which are unordered pairs of vertices.}
                            """
    
    var body: some View {
        ScrollView{
            VStack{
                Definition(title: title, latex: [Math(expression: $definition), Math(expression: $definition1_2), Math(expression: $definition1_3)])
                    .frame(width: 600)
                
                Spacer(minLength: 25)
                
                Text("A graph is defined by its vertices, as well as the edges that form connections between two vertices.")
                
                Spacer(minLength: 25)
                
                Text("""
                    Graph theory can be applied to many different fields, such as:
                    ・computer science and computer networks;
                    ・the natural and social sciences;
                    ・GPS;
                    ・and many other areas.
                    """)
                
                Spacer(minLength: 25)
                
                Text("Terminology")
                    .foregroundColor(.white)
                    .font(.title)
                    .underline()
                
                Spacer(minLength: 25)
                
                DefinitionView()
                    .frame(width: 500, height: 500)

                Spacer(minLength: 25)

            }
            .padding()
            .frame(maxWidth: .infinity)
        }
    }
}

struct Graphs_Previews: PreviewProvider {
    static var previews: some View {
        Graphs()
    }
}
