package androidx.compose.material;

import androidx.compose.foundation.MutatePriority;
import java.util.concurrent.atomic.AtomicReference;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.sync.MutexImpl;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class InternalMutatorMutex {
    public final AtomicReference a = new AtomicReference(null);
    public final MutexImpl b = new MutexImpl();

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Mutator {
        public final MutatePriority a;
        public final Job b;

        public Mutator(MutatePriority mutatePriority, Job job) {
            this.a = mutatePriority;
            this.b = job;
        }
    }
}
