/**
 * Created by friday on 16/9/2.
 */
import sun.security.provider.SHA;

import java.util.Hashtable;
public class ShapeCache {
    private static Hashtable<String,Shape> shapeTable =
            new Hashtable<String,Shape>();
    public  static Shape getShape(String shapeId)
    {
        Shape cloneShape = shapeTable.get(shapeId);
        return (Shape)cloneShape.clone();
    }
    public  static void loadCache()
    {
        Circle circle = new Circle();
        circle.setId("1");;
        shapeTable.put(circle.getId(),circle);

        Rectangle rect = new Rectangle();
        rect.setId("2");
        shapeTable.put(rect.getId(),rect);

        Line line = new Line();
        line.setId("3");
        shapeTable.put(line.getId(),line);


    }
}
