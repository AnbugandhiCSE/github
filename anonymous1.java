package inner_class;

//Changed backend 2nd time
class A{
	void m1() {
		System.out.println("Anbugandhi");
	}
	void m2() {
		A obj3=new A() {
		void m1() {
		System.out.println("overloaded by anonymous");
		}
		};
		obj3.m1();
		m1();
	}	
}
public class anonymous {
	public static void main(String[] args) {
		A obj0=new A();
		A obj=new A() {
		void m1() {
				System.out.println("Overrided by anonymous class");
			}
		void m3() {
			System.out.println("Overrided by anonymous class m3");
		}
		static void m4() {
			System.out.println("Static method inside anonymous");
		}
		};
//		m4();	// error thrown
//		obj.m3();// not possible as anonymous class can only override 
				//from the original class or interface
//		obj0.m1();
//		obj.m1();
		obj.m2();
	}
}
