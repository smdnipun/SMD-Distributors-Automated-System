package com.smd.model;


public class Order {

	private int OID;
	private int CID;
	private String ODATE;
	private String OSTATE;
	private double TPRICE;
	private double PAMOUNT;
	private double RAMOUNT;
	private int QTY;
	private int PID;
	
	
	public Order() {
		
	}
	
	public Order(int oID, int cID, String oDATE, String oSTATE, double tPRICE, double pAMOUNT, double rAMOUNT, int qTY,
			int pID) {
		super();
		OID = oID;
		CID = cID;
		ODATE = oDATE;
		OSTATE = oSTATE;
		TPRICE = tPRICE;
		PAMOUNT = pAMOUNT;
		RAMOUNT = rAMOUNT;
		QTY = qTY;
		PID = pID;
	}
	public int getOID() {
		return OID;
	}
	public int getCID() {
		return CID;
	}
	public String getODATE() {
		return ODATE;
	}
	public String getOSTATE() {
		return OSTATE;
	}
	public double getTPRICE() {
		return TPRICE;
	}
	public double getPAMOUNT() {
		return PAMOUNT;
	}
	public double getRAMOUNT() {
		return RAMOUNT;
	}
	public int getQTY() {
		return QTY;
	}
	public int getPID() {
		return PID;
	}
	public void setOID(int oID) {
		OID = oID;
	}
	public void setCID(int cID) {
		CID = cID;
	}
	public void setODATE(String oDATE) {
		ODATE = oDATE;
	}
	public void setOSTATE(String oSTATE) {
		OSTATE = oSTATE;
	}
	public void setTPRICE(double tPRICE) {
		TPRICE = tPRICE;
	}
	public void setPAMOUNT(double pAMOUNT) {
		PAMOUNT = pAMOUNT;
	}
	public void setRAMOUNT(double rAMOUNT) {
		RAMOUNT = rAMOUNT;
	}
	public void setQTY(int qTY) {
		QTY = qTY;
	}
	public void setPID(int pID) {
		PID = pID;
	}
	
}
