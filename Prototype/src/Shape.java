/**
 * Created by friday on 16/9/2.
 */
import java.lang.Object;
import java.lang.Cloneable;
public  abstract class Shape  implements  Cloneable{
    abstract void draw();
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
    public  Object clone()
    {
        Object clone = null;
        try {
            clone = super.clone();
        }catch (CloneNotSupportedException e){
            System.out.println("13414234");
            e.printStackTrace();
        }
        return  clone;
    }

    public String id;
    public String type;

}

