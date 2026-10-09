package androidx.compose.foundation;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.foundation.MagnifierNode$onAttach$1", f = "Magnifier.android.kt", l = {382, 386}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
final class MagnifierNode$onAttach$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public int n;
    public final /* synthetic */ MagnifierNode o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MagnifierNode$onAttach$1(MagnifierNode magnifierNode, Continuation continuation) {
        super(2, continuation);
        this.o = magnifierNode;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        ((MagnifierNode$onAttach$1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
        return CoroutineSingletons.j;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new MagnifierNode$onAttach$1(this.o, continuation);
    }

    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0031  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x002f -> B:8:0x0020). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x004b -> B:6:0x004e). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final java.lang.Object v(java.lang.Object r7) {
        /*
            r6 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.j
            int r1 = r6.n
            r2 = 2
            r3 = 1
            androidx.compose.foundation.MagnifierNode r4 = r6.o
            if (r1 == 0) goto L1d
            if (r1 == r3) goto L19
            if (r1 != r2) goto L12
            kotlin.ResultKt.b(r7)
            goto L4e
        L12:
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.u2.l(r6)
            r6 = 0
            return r6
        L19:
            kotlin.ResultKt.b(r7)
            goto L2d
        L1d:
            kotlin.ResultKt.b(r7)
        L20:
            kotlinx.coroutines.channels.BufferedChannel r7 = r4.H
            if (r7 == 0) goto L2d
            r6.n = r3
            java.lang.Object r7 = r7.i(r6)
            if (r7 != r0) goto L2d
            goto L4d
        L2d:
            androidx.compose.foundation.PlatformMagnifier r7 = r4.C
            if (r7 == 0) goto L20
            la r7 = new la
            r1 = 5
            r7.<init>(r1)
            r6.n = r2
            kotlin.coroutines.CoroutineContext r1 = r6.k
            r1.getClass()
            androidx.compose.runtime.MonotonicFrameClock r1 = androidx.compose.runtime.MonotonicFrameClockKt.a(r1)
            androidx.compose.runtime.MonotonicFrameClockKt$withFrameMillis$2 r5 = new androidx.compose.runtime.MonotonicFrameClockKt$withFrameMillis$2
            r5.<init>(r7)
            java.lang.Object r7 = r1.w(r6, r5)
            if (r7 != r0) goto L4e
        L4d:
            return r0
        L4e:
            androidx.compose.foundation.PlatformMagnifier r7 = r4.C
            if (r7 == 0) goto L20
            androidx.compose.foundation.PlatformMagnifierFactoryApi28Impl$PlatformMagnifierImpl r7 = (androidx.compose.foundation.PlatformMagnifierFactoryApi28Impl.PlatformMagnifierImpl) r7
            android.widget.Magnifier r7 = r7.a
            r7.update()
            goto L20
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.MagnifierNode$onAttach$1.v(java.lang.Object):java.lang.Object");
    }
}
