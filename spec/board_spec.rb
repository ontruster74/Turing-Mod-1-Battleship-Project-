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
    it 'has a board of 16 cell objects' do
      expect(@board.cells.size).to eq(16)

      @board.cells.values.each {|cell| expect(cell).to be_a(Cell)}
    end
  end

  describe '#valid_coordinate?' do
    it 'can validate coordinates' do
      expect(@board.valid_coordinate?("A1")).to eq(true)
      expect(@board.valid_coordinate?("D4")).to eq(true)
      expect(@board.valid_coordinate?("A5")).to eq(false)
      expect(@board.valid_coordinate?("E1")).to eq(false)
      expect(@board.valid_coordinate?("A22")).to eq(false)
    end
  end

end