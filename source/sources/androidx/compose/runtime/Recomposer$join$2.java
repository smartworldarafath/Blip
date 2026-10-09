package androidx.compose.runtime;

import androidx.compose.runtime.Recomposer;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.runtime.Recomposer$join$2", f = "Recomposer.kt", l = {}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
public final class Recomposer$join$2 extends SuspendLambda implements Function2<Recomposer.State, Continuation<? super Boolean>, Object> {
    public /* synthetic */ Object n;

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((Recomposer$join$2) s((Recomposer.State) obj, (Continuation) obj2)).v(Unit.a);
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [kotlin.coroutines.Continuation, androidx.compose.runtime.Recomposer$join$2, kotlin.coroutines.jvm.internal.SuspendLambda] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        ?? suspendLambda = new SuspendLambda(2, continuation);
        suspendLambda.n = obj;
        return suspendLambda;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        boolean z;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        ResultKt.b(obj);
        if (((Recomposer.State) this.n) == Recomposer.State.j) {
            z = true;
        } else {
            z = false;
        }
        return Boolean.valueOf(z);
    }
}
