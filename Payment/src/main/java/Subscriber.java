

	public class Subscriber {
	private String firstname,lastname,email,dd,mm,yyyy,CdNum,CvcNum;

	public Subscriber(String firstname, String lastname, String email, String dd, String mm, String yyyy, String cdNum,
			String cvcNum) {
		super();
		this.firstname = firstname;
		this.lastname = lastname;
		this.email = email;
		this.dd = dd;
		this.mm = mm;
		this.yyyy = yyyy;
		CdNum = cdNum;
		CvcNum = cvcNum;
	}

	public Subscriber() {
		super();
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getDd() {
		return dd;
	}

	public void setDd(String dd) {
		this.dd = dd;
	}

	public String getMm() {
		return mm;
	}

	public void setMm(String mm) {
		this.mm = mm;
	}

	public String getYyyy() {
		return yyyy;
	}

	public void setYyyy(String yyyy) {
		this.yyyy = yyyy;
	}

	public String getCdNum() {
		return CdNum;
	}

	public void setCdNum(String cdNum) {
		CdNum = cdNum;
	}

	public String getCvcNum() {
		return CvcNum;
	}

	public void setCvcNum(String cvcNum) {
		CvcNum = cvcNum;
	}

	}


