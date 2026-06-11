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
        
        
        /*Just adding this line to commit only this part of the code. */
        
        
        
        
        
        
    }
}