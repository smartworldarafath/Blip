package androidx.activity.result.contract;

import android.content.Context;
import android.content.Intent;
import java.io.Serializable;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ActivityResultContract<I, O> {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class SynchronousResult<T> {
        public final Serializable a;

        public SynchronousResult(Serializable serializable) {
            this.a = serializable;
        }
    }

    public abstract Intent a(Context context, Object obj);

    public abstract SynchronousResult b(Context context, Object obj);

    public abstract Object c(Intent intent, int i);
}
