package ex02;

public class PersonProxy implements Person{
	private Person person;
	private Before before;
	private After after;

	public Person getPerson() {	return person;	}
	public void setPerson(Person person) {	this.person = person;	}
	public Before getBefore() {	return before;	}
	public void setBefore(Before before) {	this.before = before;	}
	public After getAfter() {	return after;	}
	public void setAfter(After after) {	this.after = after;	}
	
	@Override
	public void doSomting() {
		before.before();
		try {
			person.doSomting();
		} catch (Exception e) {
			System.out.println("화재발생:119에 신고한다.");
		} finally{
			after.after();
		}
	}
}
