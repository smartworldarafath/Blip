package androidx.compose.foundation.gestures;

import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerEventPass;
import defpackage.b0;
import defpackage.d;
import defpackage.j6;
import defpackage.sa;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.foundation.gestures.DragGestureDetectorKt$detectDragGestures$13", f = "DragGestureDetector.kt", l = {246, 247}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
public final class DragGestureDetectorKt$detectDragGestures$13 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, Continuation<? super Unit>, Object> {
    public int l;
    public /* synthetic */ Object m;
    public final /* synthetic */ j6 n;
    public final /* synthetic */ b0 o;
    public final /* synthetic */ d p;
    public final /* synthetic */ sa q;
    public final /* synthetic */ defpackage.c r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DragGestureDetectorKt$detectDragGestures$13(j6 j6Var, b0 b0Var, d dVar, sa saVar, defpackage.c cVar, Continuation continuation) {
        super(2, continuation);
        this.n = j6Var;
        this.o = b0Var;
        this.p = dVar;
        this.q = saVar;
        this.r = cVar;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((DragGestureDetectorKt$detectDragGestures$13) s((AwaitPointerEventScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        DragGestureDetectorKt$detectDragGestures$13 dragGestureDetectorKt$detectDragGestures$13 = new DragGestureDetectorKt$detectDragGestures$13(this.n, this.o, this.p, this.q, this.r, continuation);
        dragGestureDetectorKt$detectDragGestures$13.m = obj;
        return dragGestureDetectorKt$detectDragGestures$13;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x004c, code lost:
    
        if (androidx.compose.foundation.gestures.DragGestureDetectorKt.h(r4, (androidx.compose.ui.input.pointer.PointerInputChange) r13, r12.n, r12.o, r12.p, r12.q, r12.r, r12) == r0) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x004e, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0033, code lost:
    
        if (r13 == r0) goto L16;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object v(Object obj) {
        AwaitPointerEventScope awaitPointerEventScope;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.l;
        if (i != 0) {
            if (i != 1) {
                if (i == 2) {
                    ResultKt.b(obj);
                    return Unit.a;
                }
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            awaitPointerEventScope = (AwaitPointerEventScope) this.m;
            ResultKt.b(obj);
        } else {
            ResultKt.b(obj);
            awaitPointerEventScope = (AwaitPointerEventScope) this.m;
            PointerEventPass pointerEventPass = PointerEventPass.j;
            this.m = awaitPointerEventScope;
            this.l = 1;
            obj = TapGestureDetectorKt.a(awaitPointerEventScope, false, pointerEventPass, this);
        }
        AwaitPointerEventScope awaitPointerEventScope2 = awaitPointerEventScope;
        this.m = null;
        this.l = 2;
    }
}
