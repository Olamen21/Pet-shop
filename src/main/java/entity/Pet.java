package entity;

public class Pet {
	
	private int PId;
	private String PName;
	private int PCat;
	private int Pqty;
	private int Pprice;
	public Pet(int pId, String pName, int pCat, int pqty, int pprice) {
		PId = pId;
		PName = pName;
		PCat = pCat;
		Pqty = pqty;
		Pprice = pprice;
	}
	public Pet() {
		
	}
	public int getPId() {
		return PId;
	}
	public void setPId(int pId) {
		PId = pId;
	}
	public String getPName() {
		return PName;
	}
	public void setPName(String pName) {
		PName = pName;
	}
	public int getPCat() {
		return PCat;
	}
	public void setPCat(int pCat) {
		PCat = pCat;
	}
	public int getPqty() {
		return Pqty;
	}
	public void setPqty(int pqty) {
		Pqty = pqty;
	}
	public int getPprice() {
		return Pprice;
	}
	public void setPprice(int pprice) {
		Pprice = pprice;
	}
	
	
	
	
	
	

}
