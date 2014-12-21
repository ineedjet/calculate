class AddUserRefToCalculations < ActiveRecord::Migration
  def change
    add_reference :calculations, :user, index: true
  end
end
