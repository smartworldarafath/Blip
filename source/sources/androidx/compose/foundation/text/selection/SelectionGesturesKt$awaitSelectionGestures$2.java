package androidx.compose.foundation.text.selection;

import androidx.compose.foundation.gestures.DragGestureDetectorKt;
import androidx.compose.foundation.text.TextDragObserver;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.platform.ViewConfiguration;
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
@DebugMetadata(c = "androidx.compose.foundation.text.selection.SelectionGesturesKt$awaitSelectionGestures$2", f = "SelectionGestures.kt", l = {116, 124, 127, 129}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
final class SelectionGesturesKt$awaitSelectionGestures$2 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, Continuation<? super Unit>, Object> {
    public int l;
    public /* synthetic */ Object m;
    public final /* synthetic */ ClicksCounter n;
    public final /* synthetic */ MouseSelectionObserver o;
    public final /* synthetic */ TextDragObserver p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SelectionGesturesKt$awaitSelectionGestures$2(ClicksCounter clicksCounter, MouseSelectionObserver mouseSelectionObserver, TextDragObserver textDragObserver, Continuation continuation) {
        super(2, continuation);
        this.n = clicksCounter;
        this.o = mouseSelectionObserver;
        this.p = textDragObserver;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((SelectionGesturesKt$awaitSelectionGestures$2) s((AwaitPointerEventScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        SelectionGesturesKt$awaitSelectionGestures$2 selectionGesturesKt$awaitSelectionGestures$2 = new SelectionGesturesKt$awaitSelectionGestures$2(this.n, this.o, this.p, continuation);
        selectionGesturesKt$awaitSelectionGestures$2.m = obj;
        return selectionGesturesKt$awaitSelectionGestures$2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x00b0, code lost:
    
        if (androidx.compose.foundation.text.selection.SelectionGesturesKt.d(r2, r18.o, r9, r8, r18) != r1) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00d4, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00c6, code lost:
    
        if (androidx.compose.foundation.text.selection.SelectionGesturesKt.e(r2, r3, r8, r18) == r1) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00d2, code lost:
    
        if (androidx.compose.foundation.text.selection.SelectionGesturesKt.b(r2, r3, r8, r4, r18) == r1) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x003a, code lost:
    
        if (r8 == r1) goto L47;
     */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00c9  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object v(Object obj) {
        AwaitPointerEventScope awaitPointerEventScope;
        Object a;
        boolean a2;
        int i;
        int size;
        int i2;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i3 = this.l;
        if (i3 != 0) {
            if (i3 != 1) {
                if (i3 != 2 && i3 != 3 && i3 != 4) {
                    u2.l("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
                return Unit.a;
            }
            awaitPointerEventScope = (AwaitPointerEventScope) this.m;
            ResultKt.b(obj);
            a = obj;
        } else {
            ResultKt.b(obj);
            awaitPointerEventScope = (AwaitPointerEventScope) this.m;
            this.m = awaitPointerEventScope;
            this.l = 1;
            a = SelectionGesturesKt.a(awaitPointerEventScope, this);
        }
        PointerEvent pointerEvent = (PointerEvent) a;
        ClicksCounter clicksCounter = this.n;
        ViewConfiguration viewConfiguration = clicksCounter.a;
        PointerInputChange pointerInputChange = clicksCounter.c;
        PointerInputChange pointerInputChange2 = (PointerInputChange) pointerEvent.a.get(0);
        if (pointerInputChange != null && pointerInputChange2.b - pointerInputChange.b < viewConfiguration.a()) {
            if (Offset.d(Offset.e(pointerInputChange.c, pointerInputChange2.c)) < DragGestureDetectorKt.g(viewConfiguration, pointerInputChange.i)) {
                clicksCounter.b++;
                clicksCounter.c = pointerInputChange2;
                a2 = SelectionGestures_androidKt.a(pointerEvent);
                if (a2 && (pointerEvent.d & 33) != 0) {
                    List list = pointerEvent.a;
                    size = list.size();
                    for (i2 = 0; i2 < size; i2++) {
                        if (!((PointerInputChange) list.get(i2)).c()) {
                        }
                    }
                    this.m = null;
                    this.l = 2;
                }
                if (!a2 && (r3 = this.p) != null) {
                    i = clicksCounter.b;
                    if (i != 1) {
                        this.m = null;
                        this.l = 3;
                    } else {
                        this.m = null;
                        this.l = 4;
                    }
                }
                return Unit.a;
            }
        }
        clicksCounter.b = 1;
        clicksCounter.c = pointerInputChange2;
        a2 = SelectionGestures_androidKt.a(pointerEvent);
        if (a2) {
            List list2 = pointerEvent.a;
            size = list2.size();
            while (i2 < size) {
            }
            this.m = null;
            this.l = 2;
        }
        if (!a2) {
            i = clicksCounter.b;
            if (i != 1) {
            }
        }
        return Unit.a;
    }
}
