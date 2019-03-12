package wcx.Pojo;

/**
 * @author lzw
 *
 */
public class Data {
	private int id;
	private String temperature;
	private String humidity;
	private String time;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTemperature() {
		return temperature;
	}
	public void setTemperature(String temperature) {
		this.temperature = temperature;
	}
	public String getHumidity() {
		return humidity;
	}
	public void setHumidity(String humidity) {
		this.humidity = humidity;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	@Override
	public String toString() {
		return "Data [id=" + id + ", temperature=" + temperature + ", humidity=" + humidity + ", time=" + time + "]";
	}
	public Data(int id, String temperature, String humidity, String time) {
		super();
		this.id = id;
		this.temperature = temperature;
		this.humidity = humidity;
		this.time = time;
	}
	public Data() {
		super();
		// TODO Auto-generated constructor stub
	}

}
