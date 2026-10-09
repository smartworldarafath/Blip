package androidx.compose.foundation.gestures;

import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerEventPass;
import defpackage.u2;
import java.util.concurrent.CancellationException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.JobKt;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.foundation.gestures.ForEachGestureKt$awaitEachGesture$2", f = "ForEachGesture.kt", l = {102, 105, 110}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
public final class ForEachGestureKt$awaitEachGesture$2 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, Continuation<? super Unit>, Object> {
    public int l;
    public /* synthetic */ Object m;
    public final /* synthetic */ CoroutineContext n;
    public final /* synthetic */ Function2 o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ForEachGestureKt$awaitEachGesture$2(CoroutineContext coroutineContext, Function2 function2, Continuation continuation) {
        super(2, continuation);
        this.n = coroutineContext;
        this.o = function2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((ForEachGestureKt$awaitEachGesture$2) s((AwaitPointerEventScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        ForEachGestureKt$awaitEachGesture$2 forEachGestureKt$awaitEachGesture$2 = new ForEachGestureKt$awaitEachGesture$2(this.n, this.o, continuation);
        forEachGestureKt$awaitEachGesture$2.m = obj;
        return forEachGestureKt$awaitEachGesture$2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0058, code lost:
    
        if (r9 != r0) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x006f, code lost:
    
        if (r9 == r0) goto L34;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0040 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0072  */
    /* JADX WARN: Type inference failed for: r1v0, types: [int] */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v2, types: [androidx.compose.ui.input.pointer.AwaitPointerEventScope, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v21 */
    /* JADX WARN: Type inference failed for: r1v3, types: [androidx.compose.ui.input.pointer.AwaitPointerEventScope, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0058 -> B:8:0x0027). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x006f -> B:8:0x0027). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object v(Object obj) {
        AwaitPointerEventScope awaitPointerEventScope;
        AwaitPointerEventScope awaitPointerEventScope2;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        ?? r1 = this.l;
        CoroutineContext coroutineContext = this.n;
        try {
        } catch (CancellationException e) {
            e = e;
            if (!JobKt.f(coroutineContext)) {
            }
        }
        if (r1 != 0) {
            if (r1 != 1) {
                if (r1 != 2) {
                    if (r1 == 3) {
                        AwaitPointerEventScope awaitPointerEventScope3 = (AwaitPointerEventScope) this.m;
                        ResultKt.b(obj);
                        awaitPointerEventScope2 = awaitPointerEventScope3;
                    } else {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                } else {
                    AwaitPointerEventScope awaitPointerEventScope4 = (AwaitPointerEventScope) this.m;
                    ResultKt.b(obj);
                    awaitPointerEventScope2 = awaitPointerEventScope4;
                }
                awaitPointerEventScope = awaitPointerEventScope2;
                if (!JobKt.f(coroutineContext)) {
                    try {
                    } catch (CancellationException e2) {
                        r1 = awaitPointerEventScope;
                        e = e2;
                        if (!JobKt.f(coroutineContext)) {
                            this.m = r1;
                            this.l = 3;
                            Object a = ForEachGestureKt.a(r1, PointerEventPass.l, this);
                            awaitPointerEventScope2 = r1;
                        } else {
                            throw e;
                        }
                    }
                    Function2 function2 = this.o;
                    this.m = awaitPointerEventScope;
                    this.l = 1;
                    if (function2.n(awaitPointerEventScope, this) != coroutineSingletons) {
                        r1 = awaitPointerEventScope;
                        this.m = r1;
                        this.l = 2;
                        Object a2 = ForEachGestureKt.a(r1, PointerEventPass.l, this);
                        awaitPointerEventScope2 = r1;
                    }
                    return coroutineSingletons;
                }
                return Unit.a;
            }
            AwaitPointerEventScope awaitPointerEventScope5 = (AwaitPointerEventScope) this.m;
            ResultKt.b(obj);
            r1 = awaitPointerEventScope5;
            this.m = r1;
            this.l = 2;
            Object a22 = ForEachGestureKt.a(r1, PointerEventPass.l, this);
            awaitPointerEventScope2 = r1;
        } else {
            ResultKt.b(obj);
            awaitPointerEventScope = (AwaitPointerEventScope) this.m;
            if (!JobKt.f(coroutineContext)) {
            }
        }
    }
}
