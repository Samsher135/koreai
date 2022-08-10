const {
    jsonResponse
} = require("./commonController");
const usersModule = require('../module/users');
const users = new usersModule();


module.exports = {
    index: (req, res) => {
        jsonResponse(res, 'success', 'Welcome to milk distributer api');
    },


    addorder: async (req, res) => {
        try {
            //get random client id
            let [client] = await Promise.all([users.random_client()]);
            //get random shipper id
            let [shipper] = await Promise.all([users.random_shipper()]);
            //get quantity and price from request body
            let {quantity, price} = req.body;
            //insert order into database
            let [results] = await Promise.all([users.addneworder(client[0].id, quantity, price, shipper[0].id)]);
            jsonResponse(res, 'Order added successfully', results);
        } catch (error) {
            console.log(error);
            jsonResponse(res, "error", error);
        };
    },

    updateorder: async (req, res) => {
        try {
            //update order in database
            let [results] = await Promise.all([users.updateorder(req)]);
            jsonResponse(res, 'Order updated successfully', results);
        } catch (error) {
            console.log(error);
            jsonResponse(res, "error", error);
        };
    },

    updateOderStatus: async (req, res) => {
        try {
            //update order status in database
            let [results] = await Promise.all([users.updateorderstatus(req)]);
            jsonResponse(res, 'Order status updated successfully', results);
        } catch (error) {
            console.log(error);
            jsonResponse(res, "error", error);
        };
    },

    deleteorder: async (req, res) => {
        try {
            //delete order from database
            let [results] = await Promise.all([users.deleteorder(req)]);
            jsonResponse(res, 'Order deleted successfully', results);
        } catch (error) {
            console.log(error);
            jsonResponse(res, "error", error);
        };
    },

    checkCapacity: async (req, res) => {
        try {
            //check capacity of date in database
            let [results] = await Promise.all([users.checkCapacity(req)]);
            const maximumCapacity = 300;
            jsonResponse(res, "Today's remaining milk is", maximumCapacity - results[0].sum);
        } catch (error) {
            console.log(error);
            jsonResponse(res, "error", error);
        };
    }
}