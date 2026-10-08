package kotlin;

import kotlin.internal.PlatformImplementationsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ExceptionsKt extends ExceptionsKt__ExceptionsKt {
    public static void a(Throwable th, Throwable th2) {
        th.getClass();
        th2.getClass();
        if (th != th2) {
            PlatformImplementationsKt.a.a(th, th2);
        }
    }
}
