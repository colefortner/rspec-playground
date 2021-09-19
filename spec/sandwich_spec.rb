require_relative '../sandwich.rb'

describe Sandwich do
  context 'when the sandwich should be vegan' do
    it 'should not have meat' do
      # first we need to create a sandwich 
      sandwich = Sandwich.new(false, false, ['lettuce', 'tomato', 'mustard'])
      # we created the sandwich and how we should expect certain things about the sandwich
      expect(sandwich.meat).to eq(false)
    end

    it 'should not have cheese' do
      sandwich = Sandwich.new(false, false, ['lettuce', 'tomato', 'mustard'])
      expect(sandwich.cheese).to eq(false)
    end

    it 'should not have mayonaise' do
      sandwich = Sandwich.new(false, false, ['lettuce', 'tomato', 'mustard'])
      expect(sandwich.condiments).to_not include('mayonaise')
    end
  end

  # context 'when the sandwich should not be vegan' do
  #   it 'should have meat'

  #   it 'should have cheese'

  #   it 'should have mayonaise'
  # end
end