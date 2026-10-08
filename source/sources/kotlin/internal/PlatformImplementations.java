package kotlin.internal;

import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.List;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class PlatformImplementations {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class ReflectThrowable {
        public static final Method a;
        public static final Method b;

        static {
            Method method;
            Method method2;
            Class<?> cls;
            Method[] methods = Throwable.class.getMethods();
            methods.getClass();
            int length = methods.length;
            int i = 0;
            int i2 = 0;
            while (true) {
                method = null;
                if (i2 < length) {
                    method2 = methods[i2];
                    if (Intrinsics.a(method2.getName(), "addSuppressed")) {
                        Class<?>[] parameterTypes = method2.getParameterTypes();
                        parameterTypes.getClass();
                        if (parameterTypes.length == 1) {
                            cls = parameterTypes[0];
                        } else {
                            cls = null;
                        }
                        if (Intrinsics.a(cls, Throwable.class)) {
                            break;
                        }
                    }
                    i2++;
                } else {
                    method2 = null;
                    break;
                }
            }
            a = method2;
            int length2 = methods.length;
            while (true) {
                if (i >= length2) {
                    break;
                }
                Method method3 = methods[i];
                if (Intrinsics.a(method3.getName(), "getSuppressed")) {
                    method = method3;
                    break;
                }
                i++;
            }
            b = method;
        }
    }

    public void a(Throwable th, Throwable th2) {
        th.getClass();
        th2.getClass();
        Method method = ReflectThrowable.a;
        if (method != null) {
            method.invoke(th, th2);
        }
    }

    public List b(Throwable th) {
        Object invoke;
        th.getClass();
        Method method = ReflectThrowable.b;
        if (method != null && (invoke = method.invoke(th, null)) != null) {
            List asList = Arrays.asList((Throwable[]) invoke);
            asList.getClass();
            return asList;
        }
        return EmptyList.j;
    }
}
