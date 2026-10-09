package androidx.compose.foundation.text;

import androidx.compose.foundation.gestures.TapGestureDetectorKt;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerId;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl;
import defpackage.u2;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.foundation.text.LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2", f = "LongPressTextDragObserver.kt", l = {77, 81}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
final class LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, Continuation<? super Unit>, Object> {
    public PointerInputChange l;
    public int m;
    public /* synthetic */ Object n;
    public final /* synthetic */ TextDragObserver o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2(TextDragObserver textDragObserver, Continuation continuation) {
        super(2, continuation);
        this.o = textDragObserver;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2) s((AwaitPointerEventScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2 longPressTextDragObserverKt$detectPreDragGesturesWithObserver$2 = new LongPressTextDragObserverKt$detectPreDragGesturesWithObserver$2(this.o, continuation);
        longPressTextDragObserverKt$detectPreDragGesturesWithObserver$2.n = obj;
        return longPressTextDragObserverKt$detectPreDragGesturesWithObserver$2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x004d, code lost:
    
        if (r13 != r0) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x004f, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0037, code lost:
    
        if (r13 == r0) goto L16;
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x004d -> B:6:0x0050). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object v(Object obj) {
        AwaitPointerEventScope awaitPointerEventScope;
        AwaitPointerEventScope awaitPointerEventScope2;
        PointerInputChange pointerInputChange;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.m;
        TextDragObserver textDragObserver = this.o;
        if (i != 0) {
            if (i != 1) {
                if (i == 2) {
                    pointerInputChange = this.l;
                    awaitPointerEventScope2 = (AwaitPointerEventScope) this.n;
                    ResultKt.b(obj);
                    List list = ((PointerEvent) obj).a;
                    int size = list.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        PointerInputChange pointerInputChange2 = (PointerInputChange) list.get(i2);
                        if (PointerId.a(pointerInputChange2.a, pointerInputChange.a) && pointerInputChange2.d) {
                            this.n = awaitPointerEventScope2;
                            this.l = pointerInputChange;
                            this.m = 2;
                            obj = ((SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine) awaitPointerEventScope2).q(PointerEventPass.k, this);
                        }
                    }
                    textDragObserver.c();
                    return Unit.a;
                }
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            awaitPointerEventScope = (AwaitPointerEventScope) this.n;
            ResultKt.b(obj);
        } else {
            ResultKt.b(obj);
            awaitPointerEventScope = (AwaitPointerEventScope) this.n;
            this.n = awaitPointerEventScope;
            this.m = 1;
            obj = TapGestureDetectorKt.b(awaitPointerEventScope, this, 2);
        }
        PointerInputChange pointerInputChange3 = (PointerInputChange) obj;
        long j = pointerInputChange3.c;
        textDragObserver.d();
        awaitPointerEventScope2 = awaitPointerEventScope;
        pointerInputChange = pointerInputChange3;
        this.n = awaitPointerEventScope2;
        this.l = pointerInputChange;
        this.m = 2;
        obj = ((SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine) awaitPointerEventScope2).q(PointerEventPass.k, this);
    }
}
