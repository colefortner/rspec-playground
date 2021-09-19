require_relative '../sandwich.rb'

describe Sandwich do
  context 'when the sandwich should be vegan' do
    let(:sandwich) { Sandwich.new(false, false, ['lettuce', 'tomato', 'mustard']) }

    it 'should not have meat' do
      # first we need to create a sandwich 
      # sandwich = Sandwich.new(false, false, ['lettuce', 'tomato', 'mustard'])
      # we created the sandwich and how we should expect certain things about the sandwich
      expect(sandwich.meat).to eq(false)
    end

    it 'should not have cheese' do
      # sandwich = Sandwich.new(false, false, ['lettuce', 'tomato', 'mustard'])
      expect(sandwich.cheese).to eq(false)
    end

    it 'should not have mayonaise' do
      # sandwich = Sandwich.new(false, false, ['lettuce', 'tomato', 'mustard'])
      expect(sandwich.condiments).to_not include('mayonaise')
    end
  end

  context 'when the sandwich should not be vegan' do
    before(:each) do
      # variables defined here that are to be used later must be made an instance variable
      @sandwich = Sandwich.new(true, true, ['lettuce', 'tomato', 'mayonaise'])
    end

    it 'should have meat' do
      # sandwich = Sandwich.new(true, true, ['lettuce', 'tomato', 'mayonaise'])
      expect(@sandwich.meat).to be(true)
    end

    it 'should have cheese' do
      # sandwich = Sandwich.new(true, true, ['lettuce', 'tomato', 'mayonaise'])
      expect(@sandwich.cheese).to be(true)
    end

    it 'should have mayonaise' do
      # sandwich = Sandwich.new(true, true, ['lettuce', 'tomato', 'mayonaise'])
      expect(@sandwich.condiments).to include('mayonaise')
    end
  end
end

# https://www.youtube.com/watch?v=4uMMUyjb2UM