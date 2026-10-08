package androidx.room;

import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.room.TriggerBasedInvalidationTracker", f = "InvalidationTracker.kt", l = {342}, m = "stopTrackingTable")
/* loaded from: classes.dex */
public final class TriggerBasedInvalidationTracker$stopTrackingTable$1 extends ContinuationImpl {
    public PooledConnection m;
    public String n;
    public String[] o;
    public int p;
    public int q;
    public /* synthetic */ Object r;
    public final /* synthetic */ TriggerBasedInvalidationTracker s;
    public int t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TriggerBasedInvalidationTracker$stopTrackingTable$1(TriggerBasedInvalidationTracker triggerBasedInvalidationTracker, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.s = triggerBasedInvalidationTracker;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        this.r = obj;
        this.t |= Integer.MIN_VALUE;
        return TriggerBasedInvalidationTracker.d(this.s, null, 0, this);
    }
}
