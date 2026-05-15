public with sharing class FoodDeliveryService {

    public static String placeOrder(String customerName, String foodItem) {

        return 'Order placed successfully for ' + customerName + ' for item: ' + foodItem;

    }
}

public static void processOrder() {
    System.debug('Payment flow updated');
}
public static void processOrder() {
    System.debug('Cancel flow updated');
}