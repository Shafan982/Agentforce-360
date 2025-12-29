@JsonAccess(serializable='always' deserializable='always')
global class c_ComplianceMetrics {
    @AuraEnabled global Decimal targetPrice = null;
    @AuraEnabled global Decimal observedPrice = null;
    @AuraEnabled global Decimal priceGap = null;
    @AuraEnabled global String statusMessage = null;
    @AuraEnabled global String statusColor = null;
    @AuraEnabled global Boolean isSuccess = false;
    @AuraEnabled global String errorMessage = null;
    @AuraEnabled global Decimal penalty = null;
    @AuraEnabled global String storeType = null;
    @AuraEnabled global String storeName = null;
    @AuraEnabled global String productName = null;

    // Constructor 1: Basic compliance check
    global c_ComplianceMetrics(Decimal targetPrice, Decimal observedPrice, Decimal priceGap, 
                              String statusMessage, String statusColor, Boolean isSuccess, String errorMessage) {
        this.targetPrice = targetPrice;
        this.observedPrice = observedPrice;
        this.priceGap = priceGap;
        this.statusMessage = statusMessage;
        this.statusColor = statusColor;
        this.isSuccess = isSuccess;
        this.errorMessage = errorMessage;
        this.penalty = null;
        this.storeType = null;
        this.storeName = null;
        this.productName = null;
    }

    // Constructor 2: With penalty and store type
    global c_ComplianceMetrics(Decimal targetPrice, Decimal observedPrice, Decimal priceGap, 
                              String statusMessage, String statusColor, Boolean isSuccess, 
                              String errorMessage, Decimal penalty, String storeType) {
        this.targetPrice = targetPrice;
        this.observedPrice = observedPrice;
        this.priceGap = priceGap;
        this.statusMessage = statusMessage;
        this.statusColor = statusColor;
        this.isSuccess = isSuccess;
        this.errorMessage = errorMessage;
        this.penalty = penalty;
        this.storeType = storeType;
        this.storeName = null;
        this.productName = null;
    }

    // Constructor 3: Full details with store and product
    global c_ComplianceMetrics(Decimal targetPrice, Decimal observedPrice, Decimal priceGap, 
                              String statusMessage, String statusColor, Boolean isSuccess, 
                              String errorMessage, Decimal penalty, String storeType, 
                              String storeName, String productName) {
        this.targetPrice = targetPrice;
        this.observedPrice = observedPrice;
        this.priceGap = priceGap;
        this.statusMessage = statusMessage;
        this.statusColor = statusColor;
        this.isSuccess = isSuccess;
        this.errorMessage = errorMessage;
        this.penalty = penalty;
        this.storeType = storeType;
        this.storeName = storeName;
        this.productName = productName;
    }
}
