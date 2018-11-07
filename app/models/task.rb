class Task < ApplicationRecord

  def complete
    @completed = true
  end
end
