/**
 * Created by friday on 16/9/2.
 */
public class Line extends  Shape{

    public Line()
    {
        type = "Line";
    }
    @Override
    void draw() {
        System.out.println(getType()+"Draw()");
    }
}
