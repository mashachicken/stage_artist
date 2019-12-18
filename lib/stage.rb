class Stage
  attr_accessor :id, :name
  @@stages = {}
  @@total_rows = 0

  def initialize(name, id)
    @name = name
    @id = id || @@total_rows += 1
  end
  def self.all()
  @@stages.values()
  end
  def save
    @@stages[self.id] = Stage.new(self.name, self.id)
  end
  def self.clear
    @@stages = {}
  end
  def self.find(id)
    @@stages[id]
  end
  def self.search_name(name)
    @@stages.values().select { |stage| /#{name}/i.match? stages.name }
  end
  def self.clear
  @@stages = {}
  @@total_rows = 0
end

end












#
# all(): returns all albums;
# find(): finds an album by its name;
# find_by_ranking(): finds an album by its ranking (if we were to add a rank attribute to our class);
# top_rated(): finds the top-rated album.
