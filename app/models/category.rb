class Category < ApplicationRecord
  has_many :pulse_categories
  has_many :pulses, through: :pulse_categories

  # CATEGORIES = ["écologie", "culture", "transports", "urbanisme"]

  # def pico_category
  #   case CATEGORIES
  #   when "écologie"
  #     "<i class='fas fa-leaf'></i>"
  #   when "culture"
  #     "<i class='fas fa-theater-masks'></i>"
  #   when "transports"
  #     "<i class='fas fa-bus-school'></i>"
  #   when "urbanisme"
  #     "<i class='fas fa-city'></i>"
  #   # else
  #   # "<i class='fas fa-question-circle'></i>"
  #   end
  # end

  # def picto(category)
  #   if category == "écologie"
  #     return "coucou"
  #   end
  # end
end
