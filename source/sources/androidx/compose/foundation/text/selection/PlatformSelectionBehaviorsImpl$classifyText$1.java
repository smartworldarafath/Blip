package androidx.compose.foundation.text.selection;

import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlinx.coroutines.sync.MutexImpl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.foundation.text.selection.PlatformSelectionBehaviorsImpl", f = "PlatformSelectionBehaviors.android.kt", l = {437, 448}, m = "classifyText-M8tDOmk", v = 1)
/* loaded from: classes.dex */
public final class PlatformSelectionBehaviorsImpl$classifyText$1 extends ContinuationImpl {
    public Object m;
    public Object n;
    public MutexImpl o;
    public long p;
    public /* synthetic */ Object q;
    public final /* synthetic */ PlatformSelectionBehaviorsImpl r;
    public int s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PlatformSelectionBehaviorsImpl$classifyText$1(PlatformSelectionBehaviorsImpl platformSelectionBehaviorsImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.r = platformSelectionBehaviorsImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        this.q = obj;
        this.s |= Integer.MIN_VALUE;
        return PlatformSelectionBehaviorsImpl.a(this.r, null, 0L, null, this);
    }
}
