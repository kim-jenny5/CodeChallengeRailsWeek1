class CreateJoinTablePartySupply < ActiveRecord::Migration[6.1]
  def change
    create_join_table :party, :supplies do |t|
      t.index [:party_id, :supply_id]
      t.index [:supply_id, :party_id]
    end
  end
end
