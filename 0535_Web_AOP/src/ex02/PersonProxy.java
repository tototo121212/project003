package ex02;

public class PersonProxy implements Person{
	private Person person;
	private Before before;
	private After after;
	public Person getPerson() {
		return person;
	}
	public void setPerson(Person person) {
		this.person = person;
	}
	public Before getBefore() {
		return before;
	}
	public void setBefore(Before before) {
		this.before = before;
	}
	public After getAfter() {
		return after;
	}
	public void setAfter(After after) {
		this.after = after;
	}
	
	@Override
	public void dossometing() {
		before.before();
		try {
			person.dossometing();
		} catch (Exception e) {
			System.out.println("119에 신고한다.");
		}finally {
			after.after();
		}
	}
}
