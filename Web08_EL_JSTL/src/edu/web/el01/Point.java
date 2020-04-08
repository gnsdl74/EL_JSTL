package edu.web.el01;

public class Point {
	private double x;
	private double y;
	
	// 생성자
	public Point() {}
	public Point(double x, double y) {
		super();
		this.x = x;
		this.y = y;
	}
	// end 생성자
	
	// getter, setter
	public double getX() {
		return x;
	}
	public void setX(double x) {
		this.x = x;
	}
	public double getY() {
		return y;
	}
	public void setY(double y) {
		this.y = y;
	}
	// end getter, setter
	
	// 메소드 이름 : distance
	// 리턴 타입 : double
	// 매개변수 : double x, double y
	// 기능 : 임의의 두 좌표값 (x1, y1), (x2, y2) 두 좌표사이의 거리를 리턴
	// 예시)
	// disX = this.x - x;
	// disY = this.y - y;
	public double distance(double x, double y) {
		double disX = this.x - x;
		double disY = this.y - y;
		return Math.sqrt((Math.pow(disX, 2)+Math.pow(disY, 2)));
	} // end distance()
	
	@Override
	public String toString() {
		String str = "(" + x + ", " + y + ")";
		return str;
	} // end toString()
	
} // end Point