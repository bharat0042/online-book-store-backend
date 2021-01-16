package com.bharat.services;

import com.bharat.dto.Purchase;
import com.bharat.dto.PurchaseResponse;

public interface CheckoutService {
    PurchaseResponse placeOrder(Purchase purchase);
}
