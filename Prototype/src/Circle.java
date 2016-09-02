/**
 * Created by friday on 16/9/2.
 */
public class Circle extends Shape {
    public  Circle()
    {
        type = "Circle";

    }

    @Override
    void  draw() {
        System.out.println(getType()+"draw()");
    }
}
