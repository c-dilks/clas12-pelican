public class Proto {

  static {
    System.loadLibrary("ProtoNative");
  }

  private native void cppMethod();

  public static void main(String[] args) {
    Proto p = new Proto();
    p.cppMethod();
  }
}
