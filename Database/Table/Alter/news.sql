ALTER TABLE News 
ADD FOREIGN KEY (category_id) REFERENCES category(category_id);
