class CreatePolyNonInteger < ActiveRecord::Migration

  def up
    create_table :employees do |t|
      t.string :name
    end

    create_table :companies do |t|
      t.string :name
    end

    create_table :addresses do |t|
      t.references :addressable, :polymorphic => true
      t.string :street
      t.string :town
      t.integer :order
    end
  end

  def down
    drop_table :employees
    drop_table :companies
    drop_table :addresses

  end

end
