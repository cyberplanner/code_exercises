#!/usr/bin/env ruby
class Decimalzip

  def decimal_zip(int1, int2)
    @int1 = int1.to_s.chars
    @int2 = int2.to_s.chars
    @result = []
    @counter = @int1.count < @int2.count ? @int1.count : @int2.count
    @counter.times do
      @result << @int1.shift
      @result << @int2.shift
    end
    @result += @int1
    @result += @int2
    @result.join.to_i
  end
end
first_num = ARGV[0]
second_num = ARGV[1]

program = Decimalzip.new
puts program.decimal_zip(first_num, second_num)
