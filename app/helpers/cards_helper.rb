module CardsHelper
  def card_style(card)
    if card.prototype?
      nil
    else
      "top: #{card.y}px; left: #{card.x}px; z-index: #{card.z}"
    end
  end

  def card_classes(card)
    card.shadow? ? 'shadow' : nil
  end
end

