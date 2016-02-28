class CombineItemsInCart < ActiveRecord::Migration
  def up
    #replace several items in cart by one
    Cart.all.each do |cart|
      #count every product in cart
      sums = cart.line_items.group(:product_id).sum(:quantity)
      sums.each do |product_id, quantity|
        if quantity > 1
          # delete all several products in cart
          cart.line_items.where(product_id: product_id).delete_all
          # replace them by one record
          cart.line_items.create(product_id: product_id, quantity: quantity)
        end
      end
    end
  end

  def down
    # разбиение записей с quantity > 1 на несколько записей
    LineItem.where("quantity > 1").each do |line_item|
    # add individual items
      line_item.quantity.times do
        LineItem.create cart_id: line_item.cart_id, product_id: line_item.product_id, quantity: 1
      end
      # удаление исходной записи
      line_item.destroy
    end
  end
end
