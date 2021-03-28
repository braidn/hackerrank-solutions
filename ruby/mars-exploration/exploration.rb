# frozen_string_literal: true

# Translations from the explorers above...
class Explorer
  def initialize(transmission)
    @count = 0
    @start = 0
    @stop = 3
    @transmission = transmission
  end

  def translate_me
    until @stop > @transmission.length
      @transmission.slice(@start, @stop).chars.each_with_index do |message, idx|
        full_transmission_check(message, idx)
      end
      @start += 3 and @stop += 3
    end

    @count
  end

  private

  def full_transmission_check(message, idx)
    @count += 1 if idx.zero? && !message.downcase.eql?('s')
    @count += 1 if idx == 1 && !message.downcase.eql?('o')
    @count += 1 if idx == 2 && !message.downcase.eql?('s')
  end
end
