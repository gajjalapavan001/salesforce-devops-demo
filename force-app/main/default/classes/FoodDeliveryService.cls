public with sharing class FoodDeliveryService {

    public static void processPaymentOrder() {
        System.debug('Payment flow updated');
    }

    public static void processCancelOrder() {
        System.debug('Cancel flow updated');
    }

    public static void paymentBugFix() {
        System.debug('Critical payment fix deployed');
    }
}