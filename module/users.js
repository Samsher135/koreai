const mysqli = require('./mysqli');
const mysqliClass = new mysqli();

class Users {
    constructor() {}

    async random_client() {
        let mysql = {};
        let escape_data = [];
        let strQuery = await mysqliClass.mysqli(mysql, 'random_client');
        return await global.mysql.query(strQuery, escape_data);
    }

    async random_shipper() {
        let mysql = {};
        let escape_data = [];
        let strQuery = await mysqliClass.mysqli(mysql, 'random_shipper');
        return await global.mysql.query(strQuery, escape_data);
    }

    async addneworder(idClient, quantity, price, idShipper) {
        let mysql = {};
        let escape_data = [idClient, quantity, price, idShipper];
        let strQuery = await mysqliClass.mysqli(mysql, 'add_new_order');
        return await global.mysql.query(strQuery, escape_data);
    }
    async updateorder(req) {
        let mysql = {};
        let escape_data = [req.body.quantity, req.body.price, req.params.id];
        let strQuery = await mysqliClass.mysqli(mysql, 'update_order');
        return await global.mysql.query(strQuery, escape_data);
    }
    async updateorderstatus(req) {
        let mysql = {};
        let escape_data = [req.body.status, req.params.id];
        let strQuery = await mysqliClass.mysqli(mysql, 'update_order_status');
        return await global.mysql.query(strQuery, escape_data);
    }
    async deleteorder(req) {
        let mysql = {};
        let escape_data = [req.params.id];
        let strQuery = await mysqliClass.mysqli(mysql, 'delete_order');
        return await global.mysql.query(strQuery, escape_data);
    }
    async checkCapacity(req) {
        let mysql = {};
        let escape_data = [req.params.date];
        let strQuery = await mysqliClass.mysqli(mysql, 'sum_of_quantity');
        return await global.mysql.query(strQuery, escape_data);
    }
    async getUser(req) {
        let mysql = {};
        let escape_data = [req.body.id];
        let strQuery = await mysqliClass.mysqli(mysql, 'single_user');
        return await global.mysql.query(strQuery, escape_data);
    }
}

module.exports = Users;