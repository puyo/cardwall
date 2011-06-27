module CardsHelper
  def card_style(card)
    format('top: %dpx; left: %dpx; z-index: %d', card.y, card.x, card.z)
  end

  def card_content_style(card)
    format('background-color: %s; width: %dpx; min-height: %dpx', card.bg_color, card.w, card.h)
  end

  def card_classes(card)
    card.shadow? ? 'shadow' : nil
  end
end

