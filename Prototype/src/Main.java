public class Main {

    public static void main(String[] args) {
        ShapeCache.loadCache();
        Shape cloneShape = ShapeCache.getShape("1");
        cloneShape.draw();
        Shape cloneShape1 = ShapeCache.getShape("2");
        cloneShape1.draw();
        Shape cloneShape2 = ShapeCache.getShape("3");
        cloneShape2.draw();
    }

}
