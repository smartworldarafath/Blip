package androidx.compose.foundation.gestures;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerEventKt;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerEventTimeoutCancellationException;
import androidx.compose.ui.input.pointer.PointerId;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl;
import androidx.compose.ui.platform.ViewConfiguration;
import defpackage.b0;
import defpackage.d;
import defpackage.j6;
import defpackage.ra;
import defpackage.sa;
import defpackage.u2;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.BaseContinuationImpl;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Ref$LongRef;
import kotlin.jvm.internal.Ref$ObjectRef;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class DragGestureDetectorKt {
    public static final float a = 0.125f / 18.0f;

    /* JADX WARN: Code restructure failed: missing block: B:44:0x00bf, code lost:
    
        if (androidx.compose.ui.geometry.Offset.c(androidx.compose.ui.input.pointer.PointerEventKt.f(r11, true), 0) == false) goto L47;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x005f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0086 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0026  */
    /* JADX WARN: Type inference failed for: r2v4, types: [java.lang.Object, kotlin.jvm.internal.Ref$LongRef] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x0060 -> B:10:0x0065). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object a(AwaitPointerEventScope awaitPointerEventScope, long j, ContinuationImpl continuationImpl) {
        DragGestureDetectorKt$awaitDragOrCancellation$1 dragGestureDetectorKt$awaitDragOrCancellation$1;
        int i;
        AwaitPointerEventScope awaitPointerEventScope2;
        Ref$LongRef ref$LongRef;
        Object q;
        Object obj;
        Object obj2;
        if (continuationImpl instanceof DragGestureDetectorKt$awaitDragOrCancellation$1) {
            DragGestureDetectorKt$awaitDragOrCancellation$1 dragGestureDetectorKt$awaitDragOrCancellation$12 = (DragGestureDetectorKt$awaitDragOrCancellation$1) continuationImpl;
            int i2 = dragGestureDetectorKt$awaitDragOrCancellation$12.p;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                dragGestureDetectorKt$awaitDragOrCancellation$12.p = i2 - Integer.MIN_VALUE;
                dragGestureDetectorKt$awaitDragOrCancellation$1 = dragGestureDetectorKt$awaitDragOrCancellation$12;
                Object obj3 = dragGestureDetectorKt$awaitDragOrCancellation$1.o;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = dragGestureDetectorKt$awaitDragOrCancellation$1.p;
                if (i == 0) {
                    if (i == 1) {
                        Ref$LongRef ref$LongRef2 = dragGestureDetectorKt$awaitDragOrCancellation$1.n;
                        AwaitPointerEventScope awaitPointerEventScope3 = dragGestureDetectorKt$awaitDragOrCancellation$1.m;
                        ResultKt.b(obj3);
                        Ref$LongRef ref$LongRef3 = ref$LongRef2;
                        awaitPointerEventScope2 = awaitPointerEventScope3;
                        PointerEvent pointerEvent = (PointerEvent) obj3;
                        List list = pointerEvent.a;
                        int size = list.size();
                        int i3 = 0;
                        int i4 = 0;
                        while (true) {
                            if (i4 >= size) {
                                obj = list.get(i4);
                                if (PointerId.a(((PointerInputChange) obj).a, ref$LongRef3.j)) {
                                    break;
                                }
                                i4++;
                            } else {
                                obj = null;
                                break;
                            }
                        }
                        PointerInputChange pointerInputChange = (PointerInputChange) obj;
                        if (pointerInputChange == null) {
                            if (PointerEventKt.d(pointerInputChange)) {
                                List list2 = pointerEvent.a;
                                int size2 = list2.size();
                                while (true) {
                                    if (i3 < size2) {
                                        obj2 = list2.get(i3);
                                        if (((PointerInputChange) obj2).d) {
                                            break;
                                        }
                                        i3++;
                                    } else {
                                        obj2 = null;
                                        break;
                                    }
                                }
                                PointerInputChange pointerInputChange2 = (PointerInputChange) obj2;
                                if (pointerInputChange2 != null) {
                                    ref$LongRef3.j = pointerInputChange2.a;
                                    ref$LongRef = ref$LongRef3;
                                    dragGestureDetectorKt$awaitDragOrCancellation$1.m = awaitPointerEventScope2;
                                    dragGestureDetectorKt$awaitDragOrCancellation$1.n = ref$LongRef;
                                    dragGestureDetectorKt$awaitDragOrCancellation$1.p = 1;
                                    q = ((SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine) awaitPointerEventScope2).q(PointerEventPass.k, dragGestureDetectorKt$awaitDragOrCancellation$1);
                                    if (q != coroutineSingletons) {
                                        return coroutineSingletons;
                                    }
                                    Ref$LongRef ref$LongRef4 = ref$LongRef;
                                    obj3 = q;
                                    ref$LongRef3 = ref$LongRef4;
                                }
                            }
                            PointerEvent pointerEvent2 = (PointerEvent) obj3;
                            List list3 = pointerEvent2.a;
                            int size3 = list3.size();
                            int i32 = 0;
                            int i42 = 0;
                            while (true) {
                                if (i42 >= size3) {
                                }
                                i42++;
                            }
                            PointerInputChange pointerInputChange3 = (PointerInputChange) obj;
                            if (pointerInputChange3 == null) {
                                pointerInputChange3 = null;
                            }
                        }
                        if (pointerInputChange3 == null || pointerInputChange3.c()) {
                            return null;
                        }
                        return pointerInputChange3;
                    }
                    u2.l("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj3);
                if (!f(awaitPointerEventScope.s(), j)) {
                    ?? obj4 = new Object();
                    obj4.j = j;
                    awaitPointerEventScope2 = awaitPointerEventScope;
                    ref$LongRef = obj4;
                    dragGestureDetectorKt$awaitDragOrCancellation$1.m = awaitPointerEventScope2;
                    dragGestureDetectorKt$awaitDragOrCancellation$1.n = ref$LongRef;
                    dragGestureDetectorKt$awaitDragOrCancellation$1.p = 1;
                    q = ((SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine) awaitPointerEventScope2).q(PointerEventPass.k, dragGestureDetectorKt$awaitDragOrCancellation$1);
                    if (q != coroutineSingletons) {
                    }
                }
                return null;
            }
        }
        dragGestureDetectorKt$awaitDragOrCancellation$1 = new ContinuationImpl(continuationImpl);
        Object obj32 = dragGestureDetectorKt$awaitDragOrCancellation$1.o;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = dragGestureDetectorKt$awaitDragOrCancellation$1.p;
        if (i == 0) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:14:0x009b A[Catch: PointerEventTimeoutCancellationException -> 0x00a4, TRY_LEAVE, TryCatch #0 {PointerEventTimeoutCancellationException -> 0x00a4, blocks: (B:11:0x002a, B:12:0x0097, B:14:0x009b, B:34:0x007d), top: B:7:0x0020 }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0022  */
    /* JADX WARN: Type inference failed for: r10v2, types: [java.lang.Object, kotlin.jvm.internal.Ref$ObjectRef] */
    /* JADX WARN: Type inference failed for: r10v3, types: [kotlin.jvm.internal.Ref$ObjectRef] */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r10v6 */
    /* JADX WARN: Type inference failed for: r12v6, types: [java.lang.Object, kotlin.jvm.internal.Ref$ObjectRef] */
    /* JADX WARN: Type inference failed for: r2v3, types: [kotlin.jvm.internal.Ref$BooleanRef, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object b(AwaitPointerEventScope awaitPointerEventScope, long j, ContinuationImpl continuationImpl) {
        DragGestureDetectorKt$awaitLongPressOrCancellation$1 dragGestureDetectorKt$awaitLongPressOrCancellation$1;
        int i;
        Object obj;
        PointerInputChange pointerInputChange;
        Ref$BooleanRef ref$BooleanRef;
        try {
            if (continuationImpl instanceof DragGestureDetectorKt$awaitLongPressOrCancellation$1) {
                DragGestureDetectorKt$awaitLongPressOrCancellation$1 dragGestureDetectorKt$awaitLongPressOrCancellation$12 = (DragGestureDetectorKt$awaitLongPressOrCancellation$1) continuationImpl;
                int i2 = dragGestureDetectorKt$awaitLongPressOrCancellation$12.q;
                if ((i2 & Integer.MIN_VALUE) != 0) {
                    dragGestureDetectorKt$awaitLongPressOrCancellation$12.q = i2 - Integer.MIN_VALUE;
                    dragGestureDetectorKt$awaitLongPressOrCancellation$1 = dragGestureDetectorKt$awaitLongPressOrCancellation$12;
                    Object obj2 = dragGestureDetectorKt$awaitLongPressOrCancellation$1.p;
                    Object obj3 = CoroutineSingletons.j;
                    i = dragGestureDetectorKt$awaitLongPressOrCancellation$1.q;
                    if (i == 0) {
                        if (i == 1) {
                            ref$BooleanRef = dragGestureDetectorKt$awaitLongPressOrCancellation$1.o;
                            Ref$ObjectRef ref$ObjectRef = dragGestureDetectorKt$awaitLongPressOrCancellation$1.n;
                            pointerInputChange = dragGestureDetectorKt$awaitLongPressOrCancellation$1.m;
                            ResultKt.b(obj2);
                            j = ref$ObjectRef;
                        } else {
                            u2.l("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                    } else {
                        ResultKt.b(obj2);
                        if (!f(awaitPointerEventScope.s(), j)) {
                            List list = awaitPointerEventScope.s().a;
                            int size = list.size();
                            int i3 = 0;
                            while (true) {
                                if (i3 < size) {
                                    obj = list.get(i3);
                                    if (PointerId.a(((PointerInputChange) obj).a, j)) {
                                        break;
                                    }
                                    i3++;
                                } else {
                                    obj = null;
                                    break;
                                }
                            }
                            pointerInputChange = (PointerInputChange) obj;
                            if (pointerInputChange != null) {
                                ?? obj4 = new Object();
                                ?? obj5 = new Object();
                                obj5.j = pointerInputChange;
                                long b = awaitPointerEventScope.getViewConfiguration().b();
                                ?? obj6 = new Object();
                                Function2 dragGestureDetectorKt$awaitLongPressOrCancellation$2 = new DragGestureDetectorKt$awaitLongPressOrCancellation$2(obj6, obj5, obj4, null);
                                dragGestureDetectorKt$awaitLongPressOrCancellation$1.m = pointerInputChange;
                                dragGestureDetectorKt$awaitLongPressOrCancellation$1.n = obj4;
                                dragGestureDetectorKt$awaitLongPressOrCancellation$1.o = obj6;
                                dragGestureDetectorKt$awaitLongPressOrCancellation$1.q = 1;
                                if (awaitPointerEventScope.g0(b, dragGestureDetectorKt$awaitLongPressOrCancellation$2, dragGestureDetectorKt$awaitLongPressOrCancellation$1) == obj3) {
                                    return obj3;
                                }
                                ref$BooleanRef = obj6;
                                j = obj4;
                            }
                        }
                        return null;
                    }
                    if (ref$BooleanRef.j) {
                        PointerInputChange pointerInputChange2 = (PointerInputChange) j.j;
                        if (pointerInputChange2 == null) {
                            return pointerInputChange;
                        }
                        return pointerInputChange2;
                    }
                    return null;
                }
            }
            if (i == 0) {
            }
            if (ref$BooleanRef.j) {
            }
            return null;
        } catch (PointerEventTimeoutCancellationException unused) {
            PointerInputChange pointerInputChange3 = (PointerInputChange) j.j;
            if (pointerInputChange3 != null) {
                return pointerInputChange3;
            }
            return pointerInputChange;
        }
        dragGestureDetectorKt$awaitLongPressOrCancellation$1 = new ContinuationImpl(continuationImpl);
        Object obj22 = dragGestureDetectorKt$awaitLongPressOrCancellation$1.p;
        Object obj32 = CoroutineSingletons.j;
        i = dragGestureDetectorKt$awaitLongPressOrCancellation$1.q;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0172  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00f2  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0119  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00da A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:58:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0029  */
    /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.Object, kotlin.jvm.internal.Ref$LongRef] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:48:0x0169 -> B:11:0x016b). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object c(AwaitPointerEventScope awaitPointerEventScope, long j, d dVar, BaseContinuationImpl baseContinuationImpl) {
        DragGestureDetectorKt$awaitTouchSlopOrCancellation$1 dragGestureDetectorKt$awaitTouchSlopOrCancellation$1;
        int i;
        Function2 function2;
        Ref$LongRef ref$LongRef;
        DragGestureDetectorKt$awaitTouchSlopOrCancellation$1 dragGestureDetectorKt$awaitTouchSlopOrCancellation$12;
        float f;
        TouchSlopDetector touchSlopDetector;
        AwaitPointerEventScope awaitPointerEventScope2;
        Ref$LongRef ref$LongRef2;
        DragGestureDetectorKt$awaitTouchSlopOrCancellation$1 dragGestureDetectorKt$awaitTouchSlopOrCancellation$13;
        float f2;
        TouchSlopDetector touchSlopDetector2;
        int size;
        PointerInputChange pointerInputChange;
        int i2;
        Object obj;
        PointerInputChange pointerInputChange2;
        Object obj2;
        Object q;
        if (baseContinuationImpl instanceof DragGestureDetectorKt$awaitTouchSlopOrCancellation$1) {
            DragGestureDetectorKt$awaitTouchSlopOrCancellation$1 dragGestureDetectorKt$awaitTouchSlopOrCancellation$14 = (DragGestureDetectorKt$awaitTouchSlopOrCancellation$1) baseContinuationImpl;
            int i3 = dragGestureDetectorKt$awaitTouchSlopOrCancellation$14.t;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                dragGestureDetectorKt$awaitTouchSlopOrCancellation$14.t = i3 - Integer.MIN_VALUE;
                dragGestureDetectorKt$awaitTouchSlopOrCancellation$1 = dragGestureDetectorKt$awaitTouchSlopOrCancellation$14;
                Object obj3 = dragGestureDetectorKt$awaitTouchSlopOrCancellation$1.s;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = dragGestureDetectorKt$awaitTouchSlopOrCancellation$1.t;
                int i4 = 1;
                PointerInputChange pointerInputChange3 = null;
                if (i == 0) {
                    if (i != 1) {
                        if (i == 2) {
                            float f3 = dragGestureDetectorKt$awaitTouchSlopOrCancellation$1.r;
                            PointerInputChange pointerInputChange4 = dragGestureDetectorKt$awaitTouchSlopOrCancellation$1.q;
                            TouchSlopDetector touchSlopDetector3 = dragGestureDetectorKt$awaitTouchSlopOrCancellation$1.p;
                            Ref$LongRef ref$LongRef3 = dragGestureDetectorKt$awaitTouchSlopOrCancellation$1.o;
                            AwaitPointerEventScope awaitPointerEventScope3 = dragGestureDetectorKt$awaitTouchSlopOrCancellation$1.n;
                            Function2 function22 = dragGestureDetectorKt$awaitTouchSlopOrCancellation$1.m;
                            ResultKt.b(obj3);
                            f2 = f3;
                            awaitPointerEventScope2 = awaitPointerEventScope3;
                            ref$LongRef2 = ref$LongRef3;
                            dragGestureDetectorKt$awaitTouchSlopOrCancellation$13 = dragGestureDetectorKt$awaitTouchSlopOrCancellation$1;
                            touchSlopDetector2 = touchSlopDetector3;
                            char c = 2;
                            int i5 = 1;
                            pointerInputChange = null;
                            long j2 = 0;
                            if (!pointerInputChange4.c()) {
                                return pointerInputChange;
                            }
                            pointerInputChange3 = pointerInputChange;
                            i4 = i5;
                            touchSlopDetector = touchSlopDetector2;
                            f = f2;
                            dragGestureDetectorKt$awaitTouchSlopOrCancellation$12 = dragGestureDetectorKt$awaitTouchSlopOrCancellation$13;
                            ref$LongRef = ref$LongRef2;
                            function2 = function22;
                            dragGestureDetectorKt$awaitTouchSlopOrCancellation$12.m = function2;
                            dragGestureDetectorKt$awaitTouchSlopOrCancellation$12.n = awaitPointerEventScope2;
                            dragGestureDetectorKt$awaitTouchSlopOrCancellation$12.o = ref$LongRef;
                            dragGestureDetectorKt$awaitTouchSlopOrCancellation$12.p = touchSlopDetector;
                            dragGestureDetectorKt$awaitTouchSlopOrCancellation$12.q = pointerInputChange3;
                            dragGestureDetectorKt$awaitTouchSlopOrCancellation$12.r = f;
                            dragGestureDetectorKt$awaitTouchSlopOrCancellation$12.t = i4;
                            q = ((SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine) awaitPointerEventScope2).q(PointerEventPass.k, dragGestureDetectorKt$awaitTouchSlopOrCancellation$12);
                            if (q != coroutineSingletons) {
                                float f4 = f;
                                touchSlopDetector2 = touchSlopDetector;
                                obj3 = q;
                                ref$LongRef2 = ref$LongRef;
                                dragGestureDetectorKt$awaitTouchSlopOrCancellation$13 = dragGestureDetectorKt$awaitTouchSlopOrCancellation$12;
                                f2 = f4;
                                PointerEvent pointerEvent = (PointerEvent) obj3;
                                List list = pointerEvent.a;
                                size = list.size();
                                pointerInputChange = pointerInputChange3;
                                i2 = 0;
                                while (true) {
                                    if (i2 >= size) {
                                        obj = list.get(i2);
                                        if (PointerId.a(((PointerInputChange) obj).a, ref$LongRef2.j)) {
                                            break;
                                        }
                                        i2++;
                                    } else {
                                        obj = pointerInputChange;
                                        break;
                                    }
                                }
                                pointerInputChange2 = (PointerInputChange) obj;
                                if (pointerInputChange2 != null && !pointerInputChange2.c()) {
                                    if (!PointerEventKt.d(pointerInputChange2)) {
                                        List list2 = pointerEvent.a;
                                        int size2 = list2.size();
                                        int i6 = 0;
                                        while (true) {
                                            if (i6 < size2) {
                                                obj2 = list2.get(i6);
                                                if (((PointerInputChange) obj2).d) {
                                                    break;
                                                }
                                                i6++;
                                            } else {
                                                obj2 = pointerInputChange;
                                                break;
                                            }
                                        }
                                        PointerInputChange pointerInputChange5 = (PointerInputChange) obj2;
                                        if (pointerInputChange5 != null) {
                                            ref$LongRef2.j = pointerInputChange5.a;
                                            pointerInputChange3 = pointerInputChange;
                                            i4 = 1;
                                            touchSlopDetector = touchSlopDetector2;
                                            f = f2;
                                            dragGestureDetectorKt$awaitTouchSlopOrCancellation$12 = dragGestureDetectorKt$awaitTouchSlopOrCancellation$13;
                                            ref$LongRef = ref$LongRef2;
                                        } else {
                                            return pointerInputChange;
                                        }
                                    } else {
                                        i5 = 1;
                                        long a2 = TouchSlopDetector.a(touchSlopDetector2, PointerEventKt.f(pointerInputChange2, true), f2);
                                        if ((9223372034707292159L & a2) != 9205357640488583168L) {
                                            function2.n(pointerInputChange2, new Offset(a2));
                                            if (pointerInputChange2.c()) {
                                                return pointerInputChange2;
                                            }
                                            touchSlopDetector2.b = 0L;
                                            pointerInputChange3 = pointerInputChange;
                                            i4 = 1;
                                            touchSlopDetector = touchSlopDetector2;
                                            f = f2;
                                            dragGestureDetectorKt$awaitTouchSlopOrCancellation$12 = dragGestureDetectorKt$awaitTouchSlopOrCancellation$13;
                                            ref$LongRef = ref$LongRef2;
                                        } else {
                                            j2 = 0;
                                            PointerEventPass pointerEventPass = PointerEventPass.l;
                                            dragGestureDetectorKt$awaitTouchSlopOrCancellation$13.m = function2;
                                            dragGestureDetectorKt$awaitTouchSlopOrCancellation$13.n = awaitPointerEventScope2;
                                            dragGestureDetectorKt$awaitTouchSlopOrCancellation$13.o = ref$LongRef2;
                                            dragGestureDetectorKt$awaitTouchSlopOrCancellation$13.p = touchSlopDetector2;
                                            dragGestureDetectorKt$awaitTouchSlopOrCancellation$13.q = pointerInputChange2;
                                            dragGestureDetectorKt$awaitTouchSlopOrCancellation$13.r = f2;
                                            c = 2;
                                            dragGestureDetectorKt$awaitTouchSlopOrCancellation$13.t = 2;
                                            if (awaitPointerEventScope2.q(pointerEventPass, dragGestureDetectorKt$awaitTouchSlopOrCancellation$13) != coroutineSingletons) {
                                                function22 = function2;
                                                pointerInputChange4 = pointerInputChange2;
                                                if (!pointerInputChange4.c()) {
                                                }
                                            }
                                        }
                                    }
                                    dragGestureDetectorKt$awaitTouchSlopOrCancellation$12.m = function2;
                                    dragGestureDetectorKt$awaitTouchSlopOrCancellation$12.n = awaitPointerEventScope2;
                                    dragGestureDetectorKt$awaitTouchSlopOrCancellation$12.o = ref$LongRef;
                                    dragGestureDetectorKt$awaitTouchSlopOrCancellation$12.p = touchSlopDetector;
                                    dragGestureDetectorKt$awaitTouchSlopOrCancellation$12.q = pointerInputChange3;
                                    dragGestureDetectorKt$awaitTouchSlopOrCancellation$12.r = f;
                                    dragGestureDetectorKt$awaitTouchSlopOrCancellation$12.t = i4;
                                    q = ((SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine) awaitPointerEventScope2).q(PointerEventPass.k, dragGestureDetectorKt$awaitTouchSlopOrCancellation$12);
                                    if (q != coroutineSingletons) {
                                    }
                                } else {
                                    return pointerInputChange;
                                }
                            }
                            return coroutineSingletons;
                        }
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    float f5 = dragGestureDetectorKt$awaitTouchSlopOrCancellation$1.r;
                    TouchSlopDetector touchSlopDetector4 = dragGestureDetectorKt$awaitTouchSlopOrCancellation$1.p;
                    Ref$LongRef ref$LongRef4 = dragGestureDetectorKt$awaitTouchSlopOrCancellation$1.o;
                    AwaitPointerEventScope awaitPointerEventScope4 = dragGestureDetectorKt$awaitTouchSlopOrCancellation$1.n;
                    Function2 function23 = dragGestureDetectorKt$awaitTouchSlopOrCancellation$1.m;
                    ResultKt.b(obj3);
                    f2 = f5;
                    awaitPointerEventScope2 = awaitPointerEventScope4;
                    dragGestureDetectorKt$awaitTouchSlopOrCancellation$13 = dragGestureDetectorKt$awaitTouchSlopOrCancellation$1;
                    touchSlopDetector2 = touchSlopDetector4;
                    function2 = function23;
                    ref$LongRef2 = ref$LongRef4;
                    PointerEvent pointerEvent2 = (PointerEvent) obj3;
                    List list3 = pointerEvent2.a;
                    size = list3.size();
                    pointerInputChange = pointerInputChange3;
                    i2 = 0;
                    while (true) {
                        if (i2 >= size) {
                        }
                        i2++;
                    }
                    pointerInputChange2 = (PointerInputChange) obj;
                    if (pointerInputChange2 != null) {
                        if (!PointerEventKt.d(pointerInputChange2)) {
                        }
                        dragGestureDetectorKt$awaitTouchSlopOrCancellation$12.m = function2;
                        dragGestureDetectorKt$awaitTouchSlopOrCancellation$12.n = awaitPointerEventScope2;
                        dragGestureDetectorKt$awaitTouchSlopOrCancellation$12.o = ref$LongRef;
                        dragGestureDetectorKt$awaitTouchSlopOrCancellation$12.p = touchSlopDetector;
                        dragGestureDetectorKt$awaitTouchSlopOrCancellation$12.q = pointerInputChange3;
                        dragGestureDetectorKt$awaitTouchSlopOrCancellation$12.r = f;
                        dragGestureDetectorKt$awaitTouchSlopOrCancellation$12.t = i4;
                        q = ((SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine) awaitPointerEventScope2).q(PointerEventPass.k, dragGestureDetectorKt$awaitTouchSlopOrCancellation$12);
                        if (q != coroutineSingletons) {
                        }
                        return coroutineSingletons;
                    }
                    return pointerInputChange;
                }
                ResultKt.b(obj3);
                if (f(awaitPointerEventScope.s(), j)) {
                    return null;
                }
                float f6 = awaitPointerEventScope.getViewConfiguration().f();
                ?? obj4 = new Object();
                obj4.j = j;
                function2 = dVar;
                ref$LongRef = obj4;
                dragGestureDetectorKt$awaitTouchSlopOrCancellation$12 = dragGestureDetectorKt$awaitTouchSlopOrCancellation$1;
                f = f6;
                touchSlopDetector = new TouchSlopDetector(0L, null);
                awaitPointerEventScope2 = awaitPointerEventScope;
                dragGestureDetectorKt$awaitTouchSlopOrCancellation$12.m = function2;
                dragGestureDetectorKt$awaitTouchSlopOrCancellation$12.n = awaitPointerEventScope2;
                dragGestureDetectorKt$awaitTouchSlopOrCancellation$12.o = ref$LongRef;
                dragGestureDetectorKt$awaitTouchSlopOrCancellation$12.p = touchSlopDetector;
                dragGestureDetectorKt$awaitTouchSlopOrCancellation$12.q = pointerInputChange3;
                dragGestureDetectorKt$awaitTouchSlopOrCancellation$12.r = f;
                dragGestureDetectorKt$awaitTouchSlopOrCancellation$12.t = i4;
                q = ((SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine) awaitPointerEventScope2).q(PointerEventPass.k, dragGestureDetectorKt$awaitTouchSlopOrCancellation$12);
                if (q != coroutineSingletons) {
                }
                return coroutineSingletons;
            }
        }
        dragGestureDetectorKt$awaitTouchSlopOrCancellation$1 = new ContinuationImpl(baseContinuationImpl);
        Object obj32 = dragGestureDetectorKt$awaitTouchSlopOrCancellation$1.s;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = dragGestureDetectorKt$awaitTouchSlopOrCancellation$1.t;
        int i42 = 1;
        PointerInputChange pointerInputChange32 = null;
        if (i == 0) {
        }
    }

    public static final Object d(PointerInputScope pointerInputScope, ra raVar, sa saVar, sa saVar2, d dVar, Continuation continuation) {
        Object b = ForEachGestureKt.b(pointerInputScope, new DragGestureDetectorKt$detectDragGestures$13(new j6(16), new b0(4, raVar), dVar, saVar2, new defpackage.c(17, saVar), null), continuation);
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        Unit unit = Unit.a;
        if (b != coroutineSingletons) {
            b = unit;
        }
        if (b == coroutineSingletons) {
            return b;
        }
        return unit;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0043 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0041 -> B:10:0x0044). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object e(AwaitPointerEventScope awaitPointerEventScope, long j, Function1 function1, ContinuationImpl continuationImpl) {
        DragGestureDetectorKt$drag$1 dragGestureDetectorKt$drag$1;
        int i;
        PointerInputChange pointerInputChange;
        if (continuationImpl instanceof DragGestureDetectorKt$drag$1) {
            DragGestureDetectorKt$drag$1 dragGestureDetectorKt$drag$12 = (DragGestureDetectorKt$drag$1) continuationImpl;
            int i2 = dragGestureDetectorKt$drag$12.p;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                dragGestureDetectorKt$drag$12.p = i2 - Integer.MIN_VALUE;
                dragGestureDetectorKt$drag$1 = dragGestureDetectorKt$drag$12;
                Object obj = dragGestureDetectorKt$drag$1.o;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = dragGestureDetectorKt$drag$1.p;
                if (i == 0) {
                    if (i == 1) {
                        Function1 function12 = dragGestureDetectorKt$drag$1.n;
                        AwaitPointerEventScope awaitPointerEventScope2 = dragGestureDetectorKt$drag$1.m;
                        ResultKt.b(obj);
                        function1 = function12;
                        awaitPointerEventScope = awaitPointerEventScope2;
                        pointerInputChange = (PointerInputChange) obj;
                        if (pointerInputChange == null) {
                            if (PointerEventKt.d(pointerInputChange)) {
                                return Boolean.TRUE;
                            }
                            function1.b(pointerInputChange);
                            j = pointerInputChange.a;
                            dragGestureDetectorKt$drag$1.m = awaitPointerEventScope;
                            dragGestureDetectorKt$drag$1.n = function1;
                            dragGestureDetectorKt$drag$1.p = 1;
                            obj = a(awaitPointerEventScope, j, dragGestureDetectorKt$drag$1);
                            if (obj == coroutineSingletons) {
                                return coroutineSingletons;
                            }
                            pointerInputChange = (PointerInputChange) obj;
                            if (pointerInputChange == null) {
                                return Boolean.FALSE;
                            }
                        }
                    } else {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                } else {
                    ResultKt.b(obj);
                    dragGestureDetectorKt$drag$1.m = awaitPointerEventScope;
                    dragGestureDetectorKt$drag$1.n = function1;
                    dragGestureDetectorKt$drag$1.p = 1;
                    obj = a(awaitPointerEventScope, j, dragGestureDetectorKt$drag$1);
                    if (obj == coroutineSingletons) {
                    }
                    pointerInputChange = (PointerInputChange) obj;
                    if (pointerInputChange == null) {
                    }
                }
            }
        }
        dragGestureDetectorKt$drag$1 = new ContinuationImpl(continuationImpl);
        Object obj2 = dragGestureDetectorKt$drag$1.o;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = dragGestureDetectorKt$drag$1.p;
        if (i == 0) {
        }
    }

    public static final boolean f(PointerEvent pointerEvent, long j) {
        Object obj;
        List list = pointerEvent.a;
        int size = list.size();
        boolean z = false;
        int i = 0;
        while (true) {
            if (i < size) {
                obj = list.get(i);
                if (PointerId.a(((PointerInputChange) obj).a, j)) {
                    break;
                }
                i++;
            } else {
                obj = null;
                break;
            }
        }
        PointerInputChange pointerInputChange = (PointerInputChange) obj;
        if (pointerInputChange != null && pointerInputChange.d) {
            z = true;
        }
        return true ^ z;
    }

    public static final float g(ViewConfiguration viewConfiguration, int i) {
        if (i == 2) {
            return viewConfiguration.f() * a;
        }
        return viewConfiguration.f();
    }

    /*  JADX ERROR: Types fix failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:96)
        */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:102:0x0596 -> B:70:0x059e). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:130:0x057b -> B:56:0x0581). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:147:0x0235 -> B:140:0x0236). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:159:0x02c8 -> B:140:0x0236). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:178:0x031f -> B:141:0x0387). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:182:0x0373 -> B:137:0x037c). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x05f8 -> B:12:0x05fb). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:86:0x0408 -> B:77:0x03bc). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:98:0x0443 -> B:70:0x059e). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:99:0x044d -> B:58:0x0462). Please report as a decompilation issue!!! */
    public static final java.lang.Object h(androidx.compose.ui.input.pointer.AwaitPointerEventScope r25, androidx.compose.ui.input.pointer.PointerInputChange r26, defpackage.j6 r27, defpackage.b0 r28, defpackage.d r29, defpackage.sa r30, defpackage.c r31, kotlin.coroutines.jvm.internal.BaseContinuationImpl r32) {
        /*
            Method dump skipped, instructions count: 1734
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.DragGestureDetectorKt.h(androidx.compose.ui.input.pointer.AwaitPointerEventScope, androidx.compose.ui.input.pointer.PointerInputChange, j6, b0, d, sa, c, kotlin.coroutines.jvm.internal.BaseContinuationImpl):java.lang.Object");
    }
}
