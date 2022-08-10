module.exports = class mysqli {
    async mysqli(data, row) {
        let k = mysqliq[row];
        for (var i in data) {
            k = k.replace(new RegExp('{{' + i + '}}', 'g'), data[i]);
        }
        return k;
    }

    async sfqli(data, row) {
        let k = mysqliq[row];
        for (var i in data) {
            k = k.replace(new RegExp('{{' + i + '}}', 'g'), data[i]);
        }
        return k;
    }
};


var mysqliq = []

mysqliq['random_client'] = "SELECT * FROM client ORDER BY RAND() LIMIT 1";
mysqliq['random_shipper'] = "SELECT * FROM shipper ORDER BY RAND() LIMIT 1";
mysqliq['add_new_order'] = 'INSERT INTO `orders`(`idClient`, `quantity`, `price`, `idShipper`) VALUES (?,?,?,?)';
mysqliq['update_order'] = 'UPDATE `orders` SET `quantity`=?,`price`=? WHERE `id`=?';
mysqliq['update_order_status'] = 'UPDATE `orders` SET `status`=? WHERE `id`=?';
mysqliq['delete_order'] = 'DELETE FROM `orders` WHERE `id`=?';
//sum of all quantity of orders on a specific date
mysqliq['sum_of_quantity'] = 'SELECT SUM(quantity) as sum FROM `orders` WHERE `orderDate`=?';