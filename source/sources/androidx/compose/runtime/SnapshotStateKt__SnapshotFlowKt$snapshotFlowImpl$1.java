package androidx.compose.runtime;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.flow.FlowCollector;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.runtime.SnapshotStateKt__SnapshotFlowKt$snapshotFlowImpl$1", f = "SnapshotFlow.kt", l = {479, 482, 487}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
public final class SnapshotStateKt__SnapshotFlowKt$snapshotFlowImpl$1 extends SuspendLambda implements Function2<FlowCollector<Object>, Continuation<? super Unit>, Object> {
    public SnapshotFlowManager n;
    public Channel o;
    public Object p;
    public int q;
    public /* synthetic */ Object r;
    public final /* synthetic */ Function0 s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SnapshotStateKt__SnapshotFlowKt$snapshotFlowImpl$1(Function0 function0, Continuation continuation) {
        super(2, continuation);
        this.s = function0;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        ((SnapshotStateKt__SnapshotFlowKt$snapshotFlowImpl$1) s((FlowCollector) obj, (Continuation) obj2)).v(Unit.a);
        return CoroutineSingletons.j;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        SnapshotStateKt__SnapshotFlowKt$snapshotFlowImpl$1 snapshotStateKt__SnapshotFlowKt$snapshotFlowImpl$1 = new SnapshotStateKt__SnapshotFlowKt$snapshotFlowImpl$1(this.s, continuation);
        snapshotStateKt__SnapshotFlowKt$snapshotFlowImpl$1.r = obj;
        return snapshotStateKt__SnapshotFlowKt$snapshotFlowImpl$1;
    }

    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0081 A[Catch: all -> 0x0020, TRY_LEAVE, TryCatch #0 {all -> 0x0020, blocks: (B:11:0x0033, B:12:0x0077, B:14:0x0066, B:18:0x0081, B:23:0x001c), top: B:2:0x000a }] */
    /* JADX WARN: Type inference failed for: r11v1, types: [androidx.compose.runtime.SnapshotFlowManagerImpl] */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v2, types: [kotlinx.coroutines.channels.Channel] */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v7, types: [kotlinx.coroutines.channels.Channel] */
    /* JADX WARN: Type inference failed for: r5v8, types: [kotlinx.coroutines.channels.Channel] */
    /* JADX WARN: Type inference failed for: r7v1, types: [androidx.compose.runtime.SnapshotFlowManager] */
    /* JADX WARN: Type inference failed for: r7v2, types: [java.lang.Object, androidx.compose.runtime.SnapshotFlowManager] */
    /* JADX WARN: Type inference failed for: r7v4, types: [androidx.compose.runtime.SnapshotFlowManager] */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r7v8 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x007f -> B:14:0x0066). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0092 -> B:14:0x0066). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final java.lang.Object v(java.lang.Object r11) {
        /*
            r10 = this;
            kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.j
            int r1 = r10.q
            kotlin.jvm.functions.Function0 r2 = r10.s
            r3 = 3
            r4 = 2
            r5 = 1
            r6 = 0
            if (r1 == 0) goto L37
            if (r1 == r5) goto L12
            if (r1 == r4) goto L29
            if (r1 != r3) goto L23
        L12:
            java.lang.Object r1 = r10.p
            kotlinx.coroutines.channels.Channel r5 = r10.o
            androidx.compose.runtime.SnapshotFlowManager r7 = r10.n
            java.lang.Object r8 = r10.r
            kotlinx.coroutines.flow.FlowCollector r8 = (kotlinx.coroutines.flow.FlowCollector) r8
            kotlin.ResultKt.b(r11)     // Catch: java.lang.Throwable -> L20
            goto L66
        L20:
            r10 = move-exception
            goto L96
        L23:
            java.lang.String r10 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.u2.l(r10)
            return r6
        L29:
            java.lang.Object r1 = r10.p
            kotlinx.coroutines.channels.Channel r5 = r10.o
            androidx.compose.runtime.SnapshotFlowManager r7 = r10.n
            java.lang.Object r8 = r10.r
            kotlinx.coroutines.flow.FlowCollector r8 = (kotlinx.coroutines.flow.FlowCollector) r8
            kotlin.ResultKt.b(r11)     // Catch: java.lang.Throwable -> L20
            goto L77
        L37:
            kotlin.ResultKt.b(r11)
            java.lang.Object r11 = r10.r
            r8 = r11
            kotlinx.coroutines.flow.FlowCollector r8 = (kotlinx.coroutines.flow.FlowCollector) r8
            androidx.compose.runtime.SnapshotFlowManager r7 = new androidx.compose.runtime.SnapshotFlowManager
            r7.<init>()
            androidx.compose.runtime.SingleSubscriptionSnapshotFlowManager r11 = new androidx.compose.runtime.SingleSubscriptionSnapshotFlowManager
            r11.<init>()
            r7.a = r11
            r11 = 6
            kotlinx.coroutines.channels.BufferedChannel r11 = kotlinx.coroutines.channels.ChannelKt.a(r5, r11, r6)
            java.lang.Object r1 = r7.a(r11, r2)     // Catch: java.lang.Throwable -> L94
            r10.r = r8     // Catch: java.lang.Throwable -> L94
            r10.n = r7     // Catch: java.lang.Throwable -> L94
            r10.o = r11     // Catch: java.lang.Throwable -> L94
            r10.p = r1     // Catch: java.lang.Throwable -> L94
            r10.q = r5     // Catch: java.lang.Throwable -> L94
            java.lang.Object r5 = r8.r(r1, r10)     // Catch: java.lang.Throwable -> L94
            if (r5 != r0) goto L65
            goto L91
        L65:
            r5 = r11
        L66:
            r10.r = r8     // Catch: java.lang.Throwable -> L20
            r10.n = r7     // Catch: java.lang.Throwable -> L20
            r10.o = r5     // Catch: java.lang.Throwable -> L20
            r10.p = r1     // Catch: java.lang.Throwable -> L20
            r10.q = r4     // Catch: java.lang.Throwable -> L20
            java.lang.Object r11 = r5.i(r10)     // Catch: java.lang.Throwable -> L20
            if (r11 != r0) goto L77
            goto L91
        L77:
            java.lang.Object r11 = r7.a(r5, r2)     // Catch: java.lang.Throwable -> L20
            boolean r9 = kotlin.jvm.internal.Intrinsics.a(r11, r1)     // Catch: java.lang.Throwable -> L20
            if (r9 != 0) goto L66
            r10.r = r8     // Catch: java.lang.Throwable -> L20
            r10.n = r7     // Catch: java.lang.Throwable -> L20
            r10.o = r5     // Catch: java.lang.Throwable -> L20
            r10.p = r11     // Catch: java.lang.Throwable -> L20
            r10.q = r3     // Catch: java.lang.Throwable -> L20
            java.lang.Object r1 = r8.r(r11, r10)     // Catch: java.lang.Throwable -> L20
            if (r1 != r0) goto L92
        L91:
            return r0
        L92:
            r1 = r11
            goto L66
        L94:
            r10 = move-exception
            r5 = r11
        L96:
            androidx.compose.runtime.SnapshotFlowManagerImpl r11 = r7.a
            if (r11 == 0) goto L9d
            r11.e(r5)
        L9d:
            androidx.compose.runtime.SnapshotFlowManagerImpl r11 = r7.a
            if (r11 == 0) goto La2
            goto La7
        La2:
            java.lang.String r0 = "Called dispose on a manager that has been disposed of"
            androidx.compose.runtime.PreconditionsKt.b(r0)
        La7:
            r11.c()
            r7.a = r6
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.SnapshotStateKt__SnapshotFlowKt$snapshotFlowImpl$1.v(java.lang.Object):java.lang.Object");
    }
}
