-- creates a trigger that decreses quNTITY OF ITEMS

DELIMETER //

CREATE TRIGGER decrease_items
AFTER INSERT ON orders
FOR EACH ROW
BEGIN
	UPDATE items
	set quantity = quantity - NEW.number
	WHERE name = NEW.item_name;
END //

DELIMETER ;
