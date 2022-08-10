const express = require('express');
const app = express.Router();
const api = require('../controller/api');

app.get('/', api.index);
app.get('/checkCapacity/:date', api.checkCapacity);

app.post('/add', api.addorder);

app.patch('/update/:id', api.updateorder);
app.patch('/updateStatus/:id', api.updateOderStatus);

app.delete('/delete/:id', api.deleteorder);


module.exports = app