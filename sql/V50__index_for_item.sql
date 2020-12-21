ALTER TABLE `item` 
ADD INDEX `condition` (`suitable_for_rent` ASC) VISIBLE,
ADD INDEX `season` (`season` ASC) VISIBLE,
ADD INDEX `item_name` (`item_name` ASC) VISIBLE;
;
