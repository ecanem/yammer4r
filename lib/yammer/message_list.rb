class Yammer::MessageList < Array
  
  attr_reader :older_available, :ids, :references
  
  def initialize(a, r, oa, c)
    super(a)
    @older_available = oa
    @client = c
    @ids = a.map {|m| m.id}.sort
    @references = r
  end
  
  def first
    self[0]
  end
  
  def last
    self[self.size - 1]
  end
  
end