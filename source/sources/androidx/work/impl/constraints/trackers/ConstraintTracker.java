package androidx.work.impl.constraints.trackers;

import android.content.Context;
import androidx.work.impl.utils.taskexecutor.WorkManagerTaskExecutor;
import defpackage.f3;
import java.util.LinkedHashSet;
import kotlin.collections.CollectionsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ConstraintTracker<T> {
    public final WorkManagerTaskExecutor a;
    public final Context b;
    public final Object c;
    public final LinkedHashSet d;
    public Object e;

    public ConstraintTracker(Context context, WorkManagerTaskExecutor workManagerTaskExecutor) {
        this.a = workManagerTaskExecutor;
        Context applicationContext = context.getApplicationContext();
        applicationContext.getClass();
        this.b = applicationContext;
        this.c = new Object();
        this.d = new LinkedHashSet();
    }

    public abstract Boolean a();

    public final void b(Boolean bool) {
        synchronized (this.c) {
            Object obj = this.e;
            if (obj != null && obj.equals(bool)) {
                return;
            }
            this.e = bool;
            this.a.d.execute(new f3(4, CollectionsKt.X(this.d), this));
        }
    }
}
