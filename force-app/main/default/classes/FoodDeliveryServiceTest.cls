@isTest
private class FoodDeliveryServiceTest {

    @isTest
    static void testOrder() {
        String result = FoodDeliveryService.placeOrder('John','Pizza');
        System.assert(result.contains('Order placed'));
    }

}