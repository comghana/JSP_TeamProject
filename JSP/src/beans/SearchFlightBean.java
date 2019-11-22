package beans;

public class SearchFlightBean {
	private String departure;
	private String arrive;
	private String departureDate;
	private String arriveDate;
	private String minimumTime;
	private String tripType; // INFO : 왕복, 편도, 운행편 검색 조건값
	private String flightNumber;

	public String getDeparture() {
		return departure;
	}

	public void setDeparture(String departure) {
		this.departure = departure;
	}

	public String getArrive() {
		return arrive;
	}

	public void setArrive(String arrive) {
		this.arrive = arrive;
	}

	public String getDepartureDate() {
		return departureDate;
	}

	public void setDepartureDate(String departureDate) {
		this.departureDate = departureDate;
	}

	public String getArriveDate() {
		return arriveDate;
	}

	public void setArriveDate(String arriveDate) {
		this.arriveDate = arriveDate;
	}

	public String getMinimumTime() {
		return minimumTime;
	}

	public void setMinimumTime(String minimumTime) {
		this.minimumTime = minimumTime;
	}

	public String getTripType() {
		return tripType;
	}

	public void setTripType(String tripType) {
		this.tripType = tripType;
	}

	public String getFlightNumber() {
		return flightNumber;
	}

	public void setFlightNumber(String flightNumber) {
		this.flightNumber = flightNumber;
	}

}
