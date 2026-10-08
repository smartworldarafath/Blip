package kotlin.internal.jdk8;

import kotlin.internal.jdk7.JDK7PlatformImplementations;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class JDK8PlatformImplementations extends JDK7PlatformImplementations {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class ReflectSdkVersion {
        public static final Integer a;

        static {
            Integer num;
            Object obj;
            Integer num2 = null;
            try {
                obj = Class.forName("android.os.Build$VERSION").getField("SDK_INT").get(null);
            } catch (Throwable unused) {
            }
            if (obj instanceof Integer) {
                num = (Integer) obj;
                if (num != null && num.intValue() > 0) {
                    num2 = num;
                }
                a = num2;
            }
            num = null;
            if (num != null) {
                num2 = num;
            }
            a = num2;
        }
    }

    public static boolean c(int i) {
        Integer num = ReflectSdkVersion.a;
        if (num != null && num.intValue() < i) {
            return false;
        }
        return true;
    }
}
