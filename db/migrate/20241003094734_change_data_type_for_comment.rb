class ChangeDataTypeForComment < ActiveRecord::Migration[7.2]
  def change
    change_column(:reviews, :comment, :text)
  end
end
