class Tree 
  attr_accessor :children, :node_name
  
  def initialize(definition={})
    # Dumb implementation doesn't handle un-rooted trees.
    @node_name = definition.keys()[ 0 ]
    @children= []
    definition[ @node_name ].each{ |key, value|
      @children.push( Tree.new( { key => value } ) )
    }
  end


  def visit_all(&block)
    visit &block
    children.each {|c| c.visit_all &block}
  end
  
  def visit(&block)
    block.call self
  end
end

treeHash= {'grandpa' => {'dad' => {'child 1'=> {}, 'child2' => {}}, 
                         'uncle' => {'child 3'=> {}, 'child 4'=>{}}}}

puts( Tree.new( treeHash ) )
Tree.new( treeHash ).visit_all {|node| puts node.node_name}

