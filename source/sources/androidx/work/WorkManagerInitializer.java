package androidx.work;

import android.content.Context;
import androidx.startup.Initializer;
import androidx.work.impl.WorkManagerImpl;
import java.util.Collections;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class WorkManagerInitializer implements Initializer<WorkManager> {
    public static final String a = Logger.f("WrkMgrInitializer");

    @Override // androidx.startup.Initializer
    public final List a() {
        return Collections.EMPTY_LIST;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0030, code lost:
    
        r1 = r4.getApplicationContext();
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0036, code lost:
    
        if (androidx.work.impl.WorkManagerImpl.l != null) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0038, code lost:
    
        androidx.work.impl.WorkManagerImpl.l = androidx.work.impl.WorkManagerImplExtKt.a(r1, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x003e, code lost:
    
        androidx.work.impl.WorkManagerImpl.k = androidx.work.impl.WorkManagerImpl.l;
     */
    /* JADX WARN: Type inference failed for: r3v2, types: [androidx.work.Configuration$Builder, java.lang.Object] */
    @Override // androidx.startup.Initializer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object b(Context context) {
        Logger.d().a(a, "Initializing WorkManager with default configuration.");
        Configuration configuration = new Configuration(new Object());
        context.getClass();
        synchronized (WorkManagerImpl.m) {
            try {
                WorkManagerImpl workManagerImpl = WorkManagerImpl.k;
                if (workManagerImpl != null && WorkManagerImpl.l != null) {
                    throw new IllegalStateException("WorkManager is already initialized.  Did you try to initialize it manually without disabling WorkManagerInitializer? See WorkManager#initialize(Context, Configuration) or the class level Javadoc for more information.");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return WorkManagerImpl.a(context);
    }
}
