package androidx.datastore.core;

import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlinx.coroutines.sync.MutexImpl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.datastore.core.SingleProcessCoordinator", f = "SingleProcessCoordinator.kt", l = {50}, m = "tryLock")
/* loaded from: classes.dex */
public final class SingleProcessCoordinator$tryLock$1<T> extends ContinuationImpl {
    public MutexImpl m;
    public boolean n;
    public /* synthetic */ Object o;
    public final /* synthetic */ SingleProcessCoordinator p;
    public int q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SingleProcessCoordinator$tryLock$1(SingleProcessCoordinator singleProcessCoordinator, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.p = singleProcessCoordinator;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        this.o = obj;
        this.q |= Integer.MIN_VALUE;
        return this.p.c(null, this);
    }
}
