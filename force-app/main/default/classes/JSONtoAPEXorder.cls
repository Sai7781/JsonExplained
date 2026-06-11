public with sharing class JSONtoAPEXorder {

/* String jsonPayload= '{ "orderId": "12345", "customerName": "John Doe", "items": [ { "itemName": "Margherita Pizza", "quantity": 2, "price": 12.99 }, { "itemName": "Caesar Salad", "quantity": 1, "price": 8.99 }, { "itemName": "Lemonade", "quantity": 3, "price": 2.50 } ], "totalPrice": 39.97, "orderStatus": "Pending" }'*/
/*JSONtoAPEXorder.parseOrder(jsonPayload);*/

    public class Order{
        public String orderId;
        public String customerName;
        public List<Item> items;
        public Decimal totalPrice;
        public String orderStatus;
    }
    public class Item{
        public String itemName;
        public Integer quantity;
        public Decimal price;
    }
    public static void parseOrder(String json){
        Order orderInfo= (Order) system.JSON.deserialize(json, Order.class);
        //system.debug('Order Id: '+orderInfo.orderId);
        for(Item i: orderInfo.items){
            system.debug('Item Name: '+i.itemName);
            system.debug('Quantity: '+i.quantity);
            system.debug('Price: '+i.price);
        }

    }
        
}