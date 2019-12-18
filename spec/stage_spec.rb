require 'rspec'
require('stage.rb')



describe '#Stage' do

  before(:each) do
    Stage.clear()
  end
  describe('.all') do
    it("returns an empty array when there are no stages") do
      expect(Stage.all).to(eq([]))
    end
    describe('.search_name') do
      it("finds a stage by name") do
        stage = Stage.new("Stage 1", nil)
        stage.save()
        stage2 = Stage.new("Stage 2", nil)
        stage2.save()
        expect(Stage.search_name(stage.name)).to(eq([stage]))
      end
    end























  end
end
