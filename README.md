API Documentation
=================

[]: # Language: markdown
[]: # Path: README.md

1. https://koreaihacker.herokuapp.com/add
   method: POST
   Body type: JSON
   {
    "quantity": 6,
    "price": 150
   }

2. https://koreaihacker.herokuapp.com/update/4
   method: PATCH
    Body type: JSON
    {
    "quantity": 1,
    "price": 25
    }

3. https://koreaihacker.herokuapp.com/updateStatus/1
    method: PATCH
    Body type: JSON
    {
     "status": "delivered"
    }

4. https://koreaihacker.herokuapp.com/delete/1
    method: DELETE

5. https://koreaihacker.herokuapp.com/checkCapacity/2022-08-10
    method: GET

