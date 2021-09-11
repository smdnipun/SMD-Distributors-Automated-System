package com.smd.model;

public class Supply {
	private int SupplierID;
	private int StockID;
	private int ProductID;


public Supply(int stockID, int SupplierID,int ProductID) {
	this.StockID=stockID;
	this.ProductID=ProductID;
	this.SupplierID=SupplierID;

}


public int getSupplierID() {
	return SupplierID;
}


public int getStockID() {
	return StockID;
}


public int getProductID() {
	return ProductID;
}


public void setSupplierID(int supplierID) {
	SupplierID = supplierID;
}


public void setStockID(int stockID) {
	StockID = stockID;
}


public void setProductID(int productID) {
	ProductID = productID;
}


}
