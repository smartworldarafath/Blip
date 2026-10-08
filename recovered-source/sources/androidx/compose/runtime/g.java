package androidx.compose.runtime;

import androidx.compose.runtime.NextFrameEndCallbackQueue;
import defpackage.r1;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class g implements Function1 {
    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        r1 r1Var = ((NextFrameEndCallbackQueue.NextFrameEndAwaiter) obj).a;
        if (r1Var != null) {
            r1Var.a();
        }
        return Unit.a;
    }
}
