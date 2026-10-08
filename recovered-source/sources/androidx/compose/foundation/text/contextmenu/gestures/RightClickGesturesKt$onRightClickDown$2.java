package androidx.compose.foundation.text.contextmenu.gestures;

import androidx.compose.foundation.gestures.TapGestureDetectorKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerInputChange;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.foundation.text.contextmenu.gestures.RightClickGesturesKt$onRightClickDown$2", f = "RightClickGestures.kt", l = {32, 35}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
public final class RightClickGesturesKt$onRightClickDown$2 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, Continuation<? super Unit>, Object> {
    public int l;
    public /* synthetic */ Object m;
    public final /* synthetic */ Function1 n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RightClickGesturesKt$onRightClickDown$2(Continuation continuation, Function1 function1) {
        super(2, continuation);
        this.n = function1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((RightClickGesturesKt$onRightClickDown$2) s((AwaitPointerEventScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        RightClickGesturesKt$onRightClickDown$2 rightClickGesturesKt$onRightClickDown$2 = new RightClickGesturesKt$onRightClickDown$2(continuation, this.n);
        rightClickGesturesKt$onRightClickDown$2.m = obj;
        return rightClickGesturesKt$onRightClickDown$2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x004f, code lost:
    
        if (r7 == r0) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0051, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x002f, code lost:
    
        if (r7 == r0) goto L15;
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
                    PointerInputChange pointerInputChange = (PointerInputChange) obj;
                    if (pointerInputChange != null) {
                        pointerInputChange.a();
                    }
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
            this.m = awaitPointerEventScope;
            this.l = 1;
            obj = RightClickGesturesKt.a(awaitPointerEventScope, this);
        }
        PointerInputChange pointerInputChange2 = (PointerInputChange) obj;
        pointerInputChange2.a();
        this.n.b(new Offset(pointerInputChange2.c));
        this.m = null;
        this.l = 2;
        Function3 function3 = TapGestureDetectorKt.a;
        obj = TapGestureDetectorKt.j(awaitPointerEventScope, PointerEventPass.k, this);
    }
}
