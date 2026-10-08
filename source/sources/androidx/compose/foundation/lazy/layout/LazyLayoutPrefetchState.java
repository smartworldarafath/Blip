package androidx.compose.foundation.lazy.layout;

import androidx.compose.foundation.lazy.layout.PrefetchHandleProvider;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.util.AndroidTrace_androidKt;
import java.util.ArrayList;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class LazyLayoutPrefetchState {
    public final Function1 a;
    public PrefetchHandleProvider c;
    public int f;
    public final PrefetchMetrics b = new PrefetchMetrics();
    public int d = -1;
    public int e = -1;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class NestedPrefetchScopeImpl implements NestedPrefetchScope {
        public final int a;
        public final ArrayList b = new ArrayList();

        public NestedPrefetchScopeImpl(int i) {
            this.a = i;
        }

        @Override // androidx.compose.foundation.lazy.layout.NestedPrefetchScope
        public final void a(int i) {
            LazyLayoutPrefetchState lazyLayoutPrefetchState = LazyLayoutPrefetchState.this;
            PrefetchHandleProvider prefetchHandleProvider = lazyLayoutPrefetchState.c;
            if (prefetchHandleProvider == null) {
                return;
            }
            this.b.add(new PrefetchHandleProvider.HandleAndRequestImpl(i, lazyLayoutPrefetchState.b, null));
        }

        @Override // androidx.compose.foundation.lazy.layout.NestedPrefetchScope
        public final int b() {
            return this.a;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface PrefetchHandle {
        void a();

        void cancel();
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface PrefetchResultScope {
        long b(int i);

        int c();

        int getIndex();
    }

    public LazyLayoutPrefetchState(Function1 function1) {
        this.a = function1;
    }

    public final PrefetchHandle a(int i, long j, boolean z, Function1 function1) {
        PrefetchHandleProvider prefetchHandleProvider = this.c;
        if (prefetchHandleProvider != null) {
            PrefetchScheduler prefetchScheduler = prefetchHandleProvider.c;
            boolean z2 = prefetchScheduler instanceof PriorityPrefetchScheduler;
            PrefetchHandleProvider.HandleAndRequestImpl handleAndRequestImpl = new PrefetchHandleProvider.HandleAndRequestImpl(i, this.b, function1);
            handleAndRequestImpl.d = new Constraints(j);
            if (z2) {
                if (z) {
                    AndroidPrefetchScheduler androidPrefetchScheduler = (AndroidPrefetchScheduler) ((PriorityPrefetchScheduler) prefetchScheduler);
                    androidPrefetchScheduler.k.add(new PriorityTask(1, handleAndRequestImpl));
                    if (!androidPrefetchScheduler.l) {
                        androidPrefetchScheduler.l = true;
                        androidPrefetchScheduler.j.post(androidPrefetchScheduler);
                    }
                } else {
                    AndroidPrefetchScheduler androidPrefetchScheduler2 = (AndroidPrefetchScheduler) ((PriorityPrefetchScheduler) prefetchScheduler);
                    androidPrefetchScheduler2.k.add(new PriorityTask(0, handleAndRequestImpl));
                    if (!androidPrefetchScheduler2.l) {
                        androidPrefetchScheduler2.l = true;
                        androidPrefetchScheduler2.j.post(androidPrefetchScheduler2);
                    }
                }
            } else {
                prefetchScheduler.a(handleAndRequestImpl);
            }
            AndroidTrace_androidKt.a(i, "compose:lazy:schedule_prefetch:index");
            return handleAndRequestImpl;
        }
        return DummyHandle.a;
    }
}
