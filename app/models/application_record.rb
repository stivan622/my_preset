# frozen_string_literal: true

class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def self.page(page_id)
    return all if page_id.nil?
    default_per_page = 25
    page_id = page_id.to_i
    offset_size = default_per_page * (page_id - 1)
    offset(offset_size).limit(default_per_page)
  end
end
