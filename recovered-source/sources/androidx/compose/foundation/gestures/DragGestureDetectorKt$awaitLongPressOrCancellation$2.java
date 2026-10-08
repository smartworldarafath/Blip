package androidx.compose.foundation.gestures;

import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerEventKt;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerId;
import androidx.compose.ui.input.pointer.PointerInputChange;
import defpackage.u2;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Ref$ObjectRef;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.foundation.gestures.DragGestureDetectorKt$awaitLongPressOrCancellation$2", f = "DragGestureDetector.kt", l = {1058, 1080}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
public final class DragGestureDetectorKt$awaitLongPressOrCancellation$2 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, Continuation<? super Unit>, Object> {
    public PointerEvent l;
    public int m;
    public int n;
    public /* synthetic */ Object o;
    public final /* synthetic */ Ref$BooleanRef p;
    public final /* synthetic */ Ref$ObjectRef q;
    public final /* synthetic */ Ref$ObjectRef r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DragGestureDetectorKt$awaitLongPressOrCancellation$2(Ref$BooleanRef ref$BooleanRef, Ref$ObjectRef ref$ObjectRef, Ref$ObjectRef ref$ObjectRef2, Continuation continuation) {
        super(2, continuation);
        this.p = ref$BooleanRef;
        this.q = ref$ObjectRef;
        this.r = ref$ObjectRef2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((DragGestureDetectorKt$awaitLongPressOrCancellation$2) s((AwaitPointerEventScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        DragGestureDetectorKt$awaitLongPressOrCancellation$2 dragGestureDetectorKt$awaitLongPressOrCancellation$2 = new DragGestureDetectorKt$awaitLongPressOrCancellation$2(this.p, this.q, this.r, continuation);
        dragGestureDetectorKt$awaitLongPressOrCancellation$2.o = obj;
        return dragGestureDetectorKt$awaitLongPressOrCancellation$2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x004a, code lost:
    
        if (r8 == r1) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0091, code lost:
    
        r2 = 1;
     */
    /* JADX WARN: Removed duplicated region for block: B:15:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00ce A[EDGE_INSN: B:70:0x00ce->B:13:0x00ce BREAK  A[LOOP:0: B:7:0x00bb->B:10:0x00cb], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x00bd  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x00af -> B:6:0x00b2). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object v(Object obj) {
        AwaitPointerEventScope awaitPointerEventScope;
        int i;
        Object obj2;
        int i2;
        Object q;
        AwaitPointerEventScope awaitPointerEventScope2;
        PointerEvent pointerEvent;
        int size;
        int i3;
        boolean f;
        Object obj3;
        Object obj4;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i4 = this.n;
        PointerEvent pointerEvent2 = null;
        int i5 = 2;
        int i6 = 1;
        if (i4 != 0) {
            if (i4 != 1) {
                if (i4 == 2) {
                    i = this.m;
                    pointerEvent = this.l;
                    awaitPointerEventScope2 = (AwaitPointerEventScope) this.o;
                    ResultKt.b(obj);
                    i2 = 1;
                    q = obj;
                    List list = ((PointerEvent) q).a;
                    size = list.size();
                    i3 = 0;
                    while (true) {
                        if (i3 >= size) {
                            break;
                        }
                        if (((PointerInputChange) list.get(i3)).c()) {
                            i = i2;
                            break;
                        }
                        i3++;
                    }
                    Ref$ObjectRef ref$ObjectRef = this.q;
                    f = DragGestureDetectorKt.f(pointerEvent, ((PointerInputChange) ref$ObjectRef.j).a);
                    List list2 = pointerEvent.a;
                    Ref$ObjectRef ref$ObjectRef2 = this.r;
                    if (!f) {
                        int size2 = list2.size();
                        int i7 = 0;
                        while (true) {
                            if (i7 < size2) {
                                obj4 = list2.get(i7);
                                if (((PointerInputChange) obj4).d) {
                                    break;
                                }
                                i7++;
                            } else {
                                obj4 = pointerEvent2;
                                break;
                            }
                        }
                        PointerInputChange pointerInputChange = (PointerInputChange) obj4;
                        if (pointerInputChange != null) {
                            ref$ObjectRef.j = pointerInputChange;
                            ref$ObjectRef2.j = pointerInputChange;
                        } else {
                            i = i2;
                            i6 = i;
                            awaitPointerEventScope = awaitPointerEventScope2;
                            if (i != 0) {
                                PointerEventPass pointerEventPass = PointerEventPass.k;
                                this.o = awaitPointerEventScope;
                                this.l = pointerEvent2;
                                this.m = i;
                                this.n = i6;
                                obj2 = awaitPointerEventScope.q(pointerEventPass, this);
                            } else {
                                return Unit.a;
                            }
                        }
                    } else {
                        int size3 = list2.size();
                        int i8 = 0;
                        while (true) {
                            if (i8 < size3) {
                                obj3 = list2.get(i8);
                                if (PointerId.a(((PointerInputChange) obj3).a, ((PointerInputChange) ref$ObjectRef.j).a)) {
                                    break;
                                }
                                i8++;
                            } else {
                                obj3 = null;
                                break;
                            }
                        }
                        ref$ObjectRef2.j = obj3;
                    }
                    awaitPointerEventScope = awaitPointerEventScope2;
                    pointerEvent2 = null;
                    i5 = 2;
                    i6 = 1;
                    if (i != 0) {
                    }
                } else {
                    u2.l("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
            } else {
                i = this.m;
                awaitPointerEventScope = (AwaitPointerEventScope) this.o;
                ResultKt.b(obj);
                obj2 = obj;
                PointerEvent pointerEvent3 = (PointerEvent) obj2;
                List list3 = pointerEvent3.a;
                int size4 = list3.size();
                int i9 = 0;
                while (true) {
                    if (i9 < size4) {
                        if (!PointerEventKt.d((PointerInputChange) list3.get(i9))) {
                            break;
                        }
                        i9++;
                    } else {
                        i = i6;
                        break;
                    }
                }
                List list4 = pointerEvent3.a;
                int size5 = list4.size();
                for (int i10 = 0; i10 < size5; i10++) {
                    PointerInputChange pointerInputChange2 = (PointerInputChange) list4.get(i10);
                    if (pointerInputChange2.c() || PointerEventKt.e(pointerInputChange2, awaitPointerEventScope.f(), awaitPointerEventScope.p0())) {
                        break;
                    }
                }
                if (pointerEvent3.c == i5) {
                    i2 = 1;
                    this.p.j = true;
                    i = 1;
                } else {
                    i2 = 1;
                }
                PointerEventPass pointerEventPass2 = PointerEventPass.l;
                this.o = awaitPointerEventScope;
                this.l = pointerEvent3;
                this.m = i;
                this.n = i5;
                q = awaitPointerEventScope.q(pointerEventPass2, this);
                if (q != coroutineSingletons) {
                    awaitPointerEventScope2 = awaitPointerEventScope;
                    pointerEvent = pointerEvent3;
                    List list5 = ((PointerEvent) q).a;
                    size = list5.size();
                    i3 = 0;
                    while (true) {
                        if (i3 >= size) {
                        }
                        i3++;
                    }
                    Ref$ObjectRef ref$ObjectRef3 = this.q;
                    f = DragGestureDetectorKt.f(pointerEvent, ((PointerInputChange) ref$ObjectRef3.j).a);
                    List list22 = pointerEvent.a;
                    Ref$ObjectRef ref$ObjectRef22 = this.r;
                    if (!f) {
                    }
                    awaitPointerEventScope = awaitPointerEventScope2;
                    pointerEvent2 = null;
                    i5 = 2;
                    i6 = 1;
                    if (i != 0) {
                    }
                }
                return coroutineSingletons;
            }
        } else {
            ResultKt.b(obj);
            awaitPointerEventScope = (AwaitPointerEventScope) this.o;
            i = 0;
            if (i != 0) {
            }
        }
    }
}
