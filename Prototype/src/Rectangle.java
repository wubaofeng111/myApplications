/**
 * Created by friday on 16/9/2.
 */

public class Rectangle extends  Shape{
    public Rectangle()
    {
        type = "Rectangle";
    }
    @Override
     void draw()
    {
    System.out.println(this.getType()+"draw()");
    }
}
