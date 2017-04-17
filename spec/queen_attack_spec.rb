require('rspec')
require('queen_attack')

describe('Array#queen_attack?') do
  it('is false if the coordinates are not horizontally, vertically, or diagonally in line with each other') do
    expect([1,1].queen_attack?([2, 3])).to(eq(false))
  end
  it('is false if the coordinates are out of chess board boundaries') do
    expect([1,8].queen_attack?([1, 3])).to(eq(nil))
  end
  it('is true if the coordinates are horizontally in line with each other') do
    expect([1,1].queen_attack?([1, 3])).to(eq(true))
  end
  it('is true if the coordinates are vertically in line with each other') do
    expect([1,4].queen_attack?([3, 4])).to(eq(true))
  end
  it('is true if the coordinates are diagnally in line with each other') do
    expect([2,1].queen_attack?([5, 4])).to(eq(true))
  end
end
