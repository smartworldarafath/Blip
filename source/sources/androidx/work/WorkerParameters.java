package androidx.work;

import androidx.work.impl.utils.WorkForegroundUpdater;
import java.util.Collections;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.ExecutorService;
import kotlin.coroutines.CoroutineContext;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class WorkerParameters {
    public UUID a;
    public Data b;
    public ExecutorService c;
    public CoroutineContext d;
    public WorkForegroundUpdater e;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class RuntimeExtras {
        public RuntimeExtras() {
            List list = Collections.EMPTY_LIST;
        }
    }
}
