package encapsulation;

import java.util.Date;
import java.util.List;

public class Person {
	
	// Må forhindre direkte tilgang for å verifisere inputs.
	// Kan lagre name som firstname og surname, og når det kjøres getName() så kan man konkatinere verdiene
	// epost kan da også lagres som flere deler, f.eks. en domenedel og en navndel.
	// Kan hente navn fra epost, eller hente epost fra navn. 
	
	private String email;
	private String name;
	private char gender;
	private Date birthday;
	private String SSN;
	
	public Person() {
	}
	
	public void setEmail(String s) {
		// burde trolig vært splittet opp i hjelpefunksjoner
		List<String> domainList = List.of("ad", "ae", "af", "ag", "ai", "al", "am", "ao", "aq", "ar", "as", "at", "au", "aw", "ax", "az", "ba", "bb", "bd", "be", "bf", "bg", "bh", "bi", "bj", "bl", "bm", "bn", "bo", "bq", "br", "bs", "bt", "bv", "bw", "by", "bz", "ca", "cc", "cd", "cf", "cg", "ch", "ci", "ck", "cl", "cm", "cn", "co", "cr", "cu", "cv", "cw", "cx", "cy", "cz", "de", "dj", "dk", "dm", "do", "dz", "ec", "ee", "eg", "eh", "er", "es", "et", "fi", "fj", "fk", "fm", "fo", "fr", "ga", "gb", "gd", "ge", "gf", "gg", "gh", "gi", "gl", "gm", "gn", "gp", "gq", "gr", "gs", "gt", "gu", "gw", "gy", "hk", "hm", "hn", "hr", "ht", "hu", "id", "ie", "il", "im", "in", "io", "iq", "ir", "is", "it", "je", "jm", "jo", "jp", "ke", "kg", "kh", "ki", "km", "kn", "kp", "kr", "kw", "ky", "kz", "la", "lb", "lc", "li", "lk", "lr", "ls", "lt", "lu", "lv", "ly", "ma", "mc", "md", "me", "mf", "mg", "mh", "mk", "ml", "mm", "mn", "mo", "mp", "mq", "mr", "ms", "mt", "mu", "mv", "mw", "mx", "my", "mz", "na", "nc", "ne", "nf", "ng", "ni", "nl", "no", "np", "nr", "nu", "nz", "om", "pa", "pe", "pf", "pg", "ph", "pk", "pl", "pm", "pn", "pr", "ps", "pt", "pw", "py", "qa", "re", "ro", "rs", "ru", "rw", "sa", "sb", "sc", "sd", "se", "sg", "sh", "si", "sj", "sk", "sl", "sm", "sn", "so", "sr", "ss", "st", "sv", "sx", "sy", "sz", "tc", "td", "tf", "tg", "th", "tj", "tk", "tl", "tm", "tn", "to", "tr", "tt", "tv", "tw", "tz", "ua", "ug", "um", "us", "uy", "uz", "va", "vc", "ve", "vg", "vi", "vn", "vu", "wf", "ws", "ye", "yt", "za", "zm", "zw"
);				
		String[] emailSplit = s.toLowerCase().split("@");
		
		if (emailSplit.length != 2) {
			throw new IllegalArgumentException();
		}
		
		String[] nameSplit = emailSplit[0].split("\\.");
		String[] domainSplit = emailSplit[1].split("\\.");
		
		String testName = String.join(" ", nameSplit);
		
		if (domainSplit.length != 2) {
			// verifisere at domene-delen inneholder et .
			throw new IllegalArgumentException("firstname.lastname@domain.countrycode");
		} else if (nameSplit.length != 2) {
			// verifisere at navn-delen inneholder et .
			throw new IllegalArgumentException("firstname.lastname@domain.countrycode");
		} else if (! domainList.contains(domainSplit[1])) {
			// sjekke at domenet er i lovlige domener
			throw new IllegalArgumentException("Not a legal country code");
		} else if (! testName.equals(this.name.toLowerCase())) {
			// sjekke at navnet i eposten er det samme som det oppgitte navnet.
			throw new IllegalArgumentException("The e-mail must be of the syntax: firstname.lastname@domain.countrycode");
		} else {
			this.email = s;
			System.out.println("Email set as " + email);
		}
	}
	
	public void setName(String name) {
		// burde trolig vært splittet opp i hjelpefunksjoner
		String[] splitName = name.split(" ");
		
		if (splitName.length != 2) {
			// sjekke at det er to navn
			throw new IllegalArgumentException("Format: Firstname Surname");
		} else if (splitName[0].length() < 2 || splitName[1].length() < 2) {
			// sjekke at både for- og ettternavn er lengre enn 1
			throw new IllegalArgumentException();
		} else {
			String combinedName = String.join("", splitName);
			char[] chars = combinedName.toCharArray();
			
			for (char c : chars) {
				if (!Character.isLetter(c)) {
					// sjekke at det bare er bokstaver i navnene
					throw new IllegalArgumentException("The name must only be letters.");
				}
			}
		}
		
		this.name = name;
		System.out.println("Name set as " + name);
	}
	
	public void setBirthday(Date d) {
		Date testDate = new Date();
		if (! d.before(testDate)) {
			// sjekke at fødselsdatoen ikke er før dagens dato.
			throw new IllegalArgumentException("1");
		} else {
			this.birthday = d;
		}
	}
	
	public void setGender (char gender) {
		// sjekk at et lovlig kjønn er valgt
		if (gender != 'M' && gender != 'F' && gender != '\0') {
			throw new IllegalArgumentException("2");
		} else {
			this.gender = gender;
			System.out.println("Gender set as " + gender);
		}
	}
	
	public String getEmail() {
		return email;
	}

	public String getName() {
		return name;
	}

	public char getGender() {
		return gender;
	}

	public Date getBirthday() {
		return birthday;
	}
	
	
	@SuppressWarnings("deprecation")
	public void setSSN(String s) {
		// .split(".")
		int d1 = Integer.parseInt(s.substring(0, 1));
		int d2 = Integer.parseInt(s.substring(1, 2));
		int m1 = Integer.parseInt(s.substring(2, 3));
		int m2 = Integer.parseInt(s.substring(3, 4));
		int y1 = Integer.parseInt(s.substring(4, 5));
		int y2 = Integer.parseInt(s.substring(5, 6));
		int n1 = Integer.parseInt(s.substring(6, 7));
		int n2 = Integer.parseInt(s.substring(7, 8));
		int n3 = Integer.parseInt(s.substring(8, 9));
		int k1 = Integer.parseInt(s.substring(9, 10));
		int k2 = Integer.parseInt(s.substring(10, 11));
		
		String ddString = s.substring(0, 2);
		String mmString = s.substring(2, 4);
		String yyString = s.substring(4, 6);
		
		int ddInt = Integer.parseInt(ddString);
		int mmInt = Integer.parseInt(mmString);
		int yyInt = Integer.parseInt(yyString);
		int dd = birthday.getDate();
		int mm = birthday.getMonth();
		int yy = birthday.getYear();
		
		int k1VsCheck = 11 - (d1*3 + d2*7 + m1*6 + m2*1 + y1*8 + y2*9 + n1*4 + n2*5 + n3*2) % 11;
		int k2VsCheck = 11 - (d1*5 + d2*4 + m1*3 + m2*2 + y1*7 + y2*6 + n1*5 + n2*4 + n3*3 + k1*2) % 11;
		
		if (k1VsCheck == 11) {
			k1VsCheck = 0;
		}
		
		if (k2VsCheck == 11) {
			k2VsCheck = 0;
		}
		
		System.out.println(ddInt + " " + dd);
		System.out.println(mmInt + " " + mm);
		System.out.println(yyInt + " " + yy);
		
		if (ddInt != dd || mmInt != mm + 1 || yyInt != yy) {
			// sjekk at fødselsdatoen stemmer overens, merk at måned for date() er 0-indeksert
			throw new IllegalArgumentException("1");
		} else if ((this.gender == 'F' && n3 % 2 != 0) || this.gender == 'M' && n3 % 2 != 1) {
			// sjekk at det er partall for kvinner og oddetall for menn
			throw new IllegalArgumentException("2");
		} else if (k1 != k1VsCheck || k2 != k2VsCheck) {
			// sjekk at sjekksummen stemmer
			throw new IllegalArgumentException("3");
		} else {
			this.SSN = s;
		}
	}
	
	public String getSSN() {
		return this.SSN;
	}
	
	public static void main(String[] args) {
		Person p1 = new Person();
		p1.setBirthday(new Date(94, 0, 1));
		p1.setGender('M');
		p1.setSSN("01019411156");
		System.out.println(p1.getSSN());
		
		
	}
	
}
