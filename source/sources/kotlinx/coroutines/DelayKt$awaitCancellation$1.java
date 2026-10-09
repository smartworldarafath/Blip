package kotlinx.coroutines;

import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "kotlinx.coroutines.DelayKt", f = "Delay.kt", l = {160}, m = "awaitCancellation", v = 1)
/* loaded from: classes.dex */
public final class DelayKt$awaitCancellation$1 extends ContinuationImpl {
    public /* synthetic */ Object m;
    public int n;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        this.m = obj;
        this.n |= Integer.MIN_VALUE;
        DelayKt.a(this);
        return CoroutineSingletons.j;
    }
}
