public with sharing class JSONtoAPEX {
    
    public salesforce_payload salesforce_payload;

    public class account_info {
        public String account_id;
        public String account_name;
        public String industry;
        public Integer annual_revenue;
        public Boolean is_active;
    }

    public class address_info {
        public String street;
        public String city;
        public String state;
        public String zipcode;
        public String country;
    }

    public class phone_info {
        public String main_phone;
        public String work_phone;
        public String mobile_phone;
    }

    public class salesforce_payload {
        public List<account_info> account_info;
        public List<address_info> address_info;
        public List<phone_info> phone_info;
    }
    public static JSONtoAPEX parse(String json) {
        return (JSONtoAPEX) System.JSON.deserialize(json, JSONtoAPEX.class);

    }


    public static void processPayload(JSONtoAPEX json){
        //system.debug(json);
        for(account_info acc: json.salesforce_payload.account_info){
            system.debug('Account ID: ' + acc.account_id);
            system.debug('Account Name: ' + acc.account_name);
            system.debug('Industry: ' + acc.industry);
            system.debug('Annual Revenue: ' + acc.annual_revenue);
            system.debug('Is Active: ' + acc.is_active);
        }
        for(address_info addr: json.salesforce_payload.address_info){
            system.debug('Street: ' + addr.street);
            system.debug('City: ' + addr.city);
            system.debug('State: ' + addr.state);
            system.debug('Zipcode: ' + addr.zipcode);
            system.debug('Country: ' + addr.country);
        }
        for(phone_info phone: json.salesforce_payload.phone_info){
            system.debug('Main Phone: ' + phone.main_phone);
            system.debug('Work Phone: ' + phone.work_phone);
            system.debug('Mobile Phone: ' + phone.mobile_phone);
        }
    }

}