package androidx.arch.core.executor;

import defpackage.z2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class ArchTaskExecutor extends TaskExecutor {
    public static volatile ArchTaskExecutor b;
    public static final z2 c = new z2(0);
    public final DefaultTaskExecutor a = new DefaultTaskExecutor();

    public static ArchTaskExecutor a() {
        if (b != null) {
            return b;
        }
        synchronized (ArchTaskExecutor.class) {
            try {
                if (b == null) {
                    b = new ArchTaskExecutor();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return b;
    }
}
