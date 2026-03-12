public with sharing class FoodDeliveryService {

    public static String placeOrder(String customerName, String foodItem) {
        String message = 'Order placed successfully for ' + customerName + 
                         ' for item: ' + foodItem;
        return message;
    }

}