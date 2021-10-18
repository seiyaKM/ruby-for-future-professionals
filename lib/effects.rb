module Effects
  def self.reverse
    ->(word) do
      word.split(' ').map(&:reverse).join(' ')
    end
  end

  def self.echo(rate)
    ->(word) do
        word.chars.map { |c| c == ' ' ? c : c * rate }.join
    end
  end

  def self.loud(level)
    ->(word) do
        word.split(' ').map { |word| word.upcase + '!' * level }.join(' ')
    end
  end
end
