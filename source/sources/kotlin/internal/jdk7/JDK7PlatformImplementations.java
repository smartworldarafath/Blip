package kotlin.internal.jdk7;

import java.util.Arrays;
import java.util.List;
import kotlin.internal.PlatformImplementations;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class JDK7PlatformImplementations extends PlatformImplementations {

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

    @Override // kotlin.internal.PlatformImplementations
    public final void a(Throwable th, Throwable th2) {
        th.getClass();
        th2.getClass();
        Integer num = ReflectSdkVersion.a;
        if (num != null && num.intValue() < 19) {
            super.a(th, th2);
        } else {
            th.addSuppressed(th2);
        }
    }

    @Override // kotlin.internal.PlatformImplementations
    public final List b(Throwable th) {
        th.getClass();
        Integer num = ReflectSdkVersion.a;
        if (num != null && num.intValue() < 19) {
            return super.b(th);
        }
        Throwable[] suppressed = th.getSuppressed();
        suppressed.getClass();
        List asList = Arrays.asList(suppressed);
        asList.getClass();
        return asList;
    }
}
