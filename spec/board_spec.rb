require 'rspec'
require './lib/cell'
require './lib/ship'
require './lib/board'

describe Board do
  before do
    @board = Board.new
  end

  describe '#initialize' do
    it 'exists' do
      expect(@board).to be_a(Board)
    end
  end

  describe '#cells' do
    expect(@board.cells.size).to eq(16)

    @board.cells.values.each { |cell| expect(cell).to be_a(Cell)}
  end
  
end