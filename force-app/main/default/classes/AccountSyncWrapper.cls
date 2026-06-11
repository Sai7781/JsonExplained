public class AccountSyncWrapper{
    /*String jsonStructure= '{ "salesforce_payload": { "account_info": [ { "account_id": "0018W00002NOnQwQAL", "account_name": "Acme Corporation", "industry": "Manufacturing", "annual_revenue": 5000000, "is_active": true } ], "address_info": [ { "street": "123 Innovation Way", "city": "Austin", "state": "TX", "zipcode": "78701", "country": "USA" } ], "phone_info": [ { "main_phone": "+1-512-555-0100", "work_phone": "+1-512-555-0144", "mobile_phone": "+1-512-555-0199" } ] } }'*/
    /* AccountSyncWrapper.salesforcePayloadParser(jsonStructure);*/
    
    public static void salesforcePayloadParser(String jsonStructure){
        
        Map<String, Object> mapPayload = (Map<String, Object>)JSON.deserializeUntyped(jsonStructure);
        Map<String, Object> salesforcePayload = (Map<String, Object>) mapPayload.get('salesforce_payload');
        
       /* List<Object> accounts= (List<Object>) salesforcePayload.get('account_info');
        for(Object account:accounts){
            Map<String,Object> accountData = (Map<String,Object>) account;
            String Account_Id =(String) accountData.get('account_id');
            Boolean Activity= (Boolean)accountData.get('is_active');
            System.debug(Activity);
        }*/
        List<Object> Phone= (List<Object>) salesforcePayload.get('phone_info');
        for(Object phn:Phone){
            Map<String,Object> PhoneData = (Map<String,Object>) phn;
            String Street =(String) PhoneData.get('main_phone');
            
            System.debug(Street);
        }
    }

    // method to understand another JSON using deserialization
    //String jsonStructure='{ "order_id": "DEL-98472-X", "created_at": "2026-06-10T18:34:12Z", "status": "In Transit", "restaurant": { "restaurant_id": "REST-402", "name": "Burger & Co. Downtown", "phone": "+1-512-555-0177" }, "customer": { "customer_id": "CUST-8831", "first_name": "Sarah", "last_name": "Jenkins", "phone": "+1-512-555-0122" }, "delivery_details": { "delivery_method": "Contactless", "estimated_delivery_time": "2026-06-10T19:05:00Z", "dropoff_address": { "street": "742 Evergreen Terrace", "apartment_suite": "Apt 4B", "city": "Austin", "state": "TX", "zipcode": "78704", "gate_code": "#4412" }, "driver": { "driver_id": "DRV-0092", "name": "Marcus L.", "vehicle_type": "Bicycle", "current_coordinates": { "latitude": 30.2672, "longitude": -97.7431 } } }, "order_items": [ { "item_id": "ITEM-041", "name": "Bacon Avocado Burger", "quantity": 1, "unit_price": 14.99, "customizations": [ { "modifier_group": "Sauces", "choice": "Extra Truffle Mayo" }, { "modifier_group": "Exclusions", "choice": "No Onions" } ] }, { "item_id": "ITEM-112", "name": "Sweet Potato Fries", "quantity": 2, "unit_price": 4.50, "customizations": [] } ], "payment": { "payment_method": "Apple Pay", "transaction_id": "TXN-7728194", "currency": "USD", "financials": { "subtotal": 23.99, "delivery_fee": 3.99, "service_fee": 2.00, "driver_tip": 5.00, "tax": 1.98, "total_charged": 36.96 } } }';
    //AccountSyncWrapper.deliveryParser(jsonStructure);
    public static void deliveryParser(String jsonStructure){
        Map<String, Object> deliveryJSON = (Map<String, Object>) JSON.deserializeUntyped(jsonStructure);
        Map<String,Object> customer_Details= (Map<String,Object>)deliveryJSON.get('customer');
        String customer_Phone=(string)customer_Details.get('phone');
        system.debug(customer_Phone);
    }

}