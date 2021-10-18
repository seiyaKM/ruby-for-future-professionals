class WordSynth
  def initialize
    @effects = []
  end

  def add_effect(effect)
    @effects << effect
  end

  def paly(original_words)
    @effects.inject(original_words) do |words, effect|
        effect.call(words)
    end
  end
end
