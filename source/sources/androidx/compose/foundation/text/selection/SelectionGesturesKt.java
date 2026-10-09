package androidx.compose.foundation.text.selection;

import androidx.compose.foundation.gestures.DragGestureDetectorKt;
import androidx.compose.foundation.gestures.ForEachGestureKt;
import androidx.compose.foundation.text.TextDragObserver;
import androidx.compose.foundation.text.selection.SelectionAdjustment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerEventKt;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl;
import androidx.compose.ui.node.DelegatableNodeKt;
import defpackage.ma;
import defpackage.p2;
import defpackage.ra;
import defpackage.t6;
import defpackage.u2;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.BaseContinuationImpl;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Ref$LongRef;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SelectionGesturesKt {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:12:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x003f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x003d -> B:10:0x0040). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object a(AwaitPointerEventScope awaitPointerEventScope, BaseContinuationImpl baseContinuationImpl) {
        SelectionGesturesKt$awaitDown$1 selectionGesturesKt$awaitDown$1;
        int i;
        int size;
        int i2;
        if (baseContinuationImpl instanceof SelectionGesturesKt$awaitDown$1) {
            SelectionGesturesKt$awaitDown$1 selectionGesturesKt$awaitDown$12 = (SelectionGesturesKt$awaitDown$1) baseContinuationImpl;
            int i3 = selectionGesturesKt$awaitDown$12.o;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                selectionGesturesKt$awaitDown$12.o = i3 - Integer.MIN_VALUE;
                selectionGesturesKt$awaitDown$1 = selectionGesturesKt$awaitDown$12;
                Object obj = selectionGesturesKt$awaitDown$1.n;
                Object obj2 = CoroutineSingletons.j;
                i = selectionGesturesKt$awaitDown$1.o;
                if (i == 0) {
                    if (i == 1) {
                        AwaitPointerEventScope awaitPointerEventScope2 = selectionGesturesKt$awaitDown$1.m;
                        ResultKt.b(obj);
                        awaitPointerEventScope = awaitPointerEventScope2;
                        PointerEvent pointerEvent = (PointerEvent) obj;
                        List list = pointerEvent.a;
                        size = list.size();
                        i2 = 0;
                        while (i2 < size) {
                            if (!PointerEventKt.a((PointerInputChange) list.get(i2))) {
                                PointerEventPass pointerEventPass = PointerEventPass.k;
                                selectionGesturesKt$awaitDown$1.m = awaitPointerEventScope;
                                selectionGesturesKt$awaitDown$1.o = 1;
                                obj = awaitPointerEventScope.q(pointerEventPass, selectionGesturesKt$awaitDown$1);
                                awaitPointerEventScope = awaitPointerEventScope;
                                if (obj == obj2) {
                                    return obj2;
                                }
                                PointerEvent pointerEvent2 = (PointerEvent) obj;
                                List list2 = pointerEvent2.a;
                                size = list2.size();
                                i2 = 0;
                                while (i2 < size) {
                                }
                            } else {
                                i2++;
                            }
                        }
                        return pointerEvent2;
                    }
                    u2.l("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
                PointerEventPass pointerEventPass2 = PointerEventPass.k;
                selectionGesturesKt$awaitDown$1.m = awaitPointerEventScope;
                selectionGesturesKt$awaitDown$1.o = 1;
                obj = awaitPointerEventScope.q(pointerEventPass2, selectionGesturesKt$awaitDown$1);
                awaitPointerEventScope = awaitPointerEventScope;
                if (obj == obj2) {
                }
                PointerEvent pointerEvent22 = (PointerEvent) obj;
                List list22 = pointerEvent22.a;
                size = list22.size();
                i2 = 0;
                while (i2 < size) {
                }
                return pointerEvent22;
            }
        }
        selectionGesturesKt$awaitDown$1 = new ContinuationImpl(baseContinuationImpl);
        Object obj3 = selectionGesturesKt$awaitDown$1.n;
        Object obj22 = CoroutineSingletons.j;
        i = selectionGesturesKt$awaitDown$1.o;
        if (i == 0) {
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x00c1, code lost:
    
        if (r15 == r1) goto L48;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0095 A[Catch: CancellationException -> 0x0032, TryCatch #0 {CancellationException -> 0x0032, blocks: (B:12:0x002d, B:13:0x00c4, B:15:0x00cc, B:17:0x00d9, B:19:0x00e5, B:21:0x00e8, B:24:0x00eb, B:27:0x00ef, B:35:0x0091, B:37:0x0095, B:38:0x0097, B:40:0x009b, B:42:0x009f, B:44:0x00a3, B:46:0x00a7, B:48:0x00ab, B:49:0x00b0, B:58:0x0051, B:60:0x005f, B:61:0x0064, B:64:0x0062), top: B:7:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x009b A[Catch: CancellationException -> 0x0032, TryCatch #0 {CancellationException -> 0x0032, blocks: (B:12:0x002d, B:13:0x00c4, B:15:0x00cc, B:17:0x00d9, B:19:0x00e5, B:21:0x00e8, B:24:0x00eb, B:27:0x00ef, B:35:0x0091, B:37:0x0095, B:38:0x0097, B:40:0x009b, B:42:0x009f, B:44:0x00a3, B:46:0x00a7, B:48:0x00ab, B:49:0x00b0, B:58:0x0051, B:60:0x005f, B:61:0x0064, B:64:0x0062), top: B:7:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x009f A[Catch: CancellationException -> 0x0032, TryCatch #0 {CancellationException -> 0x0032, blocks: (B:12:0x002d, B:13:0x00c4, B:15:0x00cc, B:17:0x00d9, B:19:0x00e5, B:21:0x00e8, B:24:0x00eb, B:27:0x00ef, B:35:0x0091, B:37:0x0095, B:38:0x0097, B:40:0x009b, B:42:0x009f, B:44:0x00a3, B:46:0x00a7, B:48:0x00ab, B:49:0x00b0, B:58:0x0051, B:60:0x005f, B:61:0x0064, B:64:0x0062), top: B:7:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0025  */
    /* JADX WARN: Type inference failed for: r13v6, types: [java.lang.Object, kotlin.jvm.internal.Ref$LongRef] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object b(AwaitPointerEventScope awaitPointerEventScope, TextDragObserver textDragObserver, PointerEvent pointerEvent, int i, BaseContinuationImpl baseContinuationImpl) {
        SelectionGesturesKt$touchSelectionSubsequentPress$1 selectionGesturesKt$touchSelectionSubsequentPress$1;
        int i2;
        long j;
        a aVar;
        Ref$LongRef ref$LongRef;
        AwaitPointerEventScope awaitPointerEventScope2;
        DownResolution downResolution;
        AwaitPointerEventScope awaitPointerEventScope3;
        try {
            if (baseContinuationImpl instanceof SelectionGesturesKt$touchSelectionSubsequentPress$1) {
                SelectionGesturesKt$touchSelectionSubsequentPress$1 selectionGesturesKt$touchSelectionSubsequentPress$12 = (SelectionGesturesKt$touchSelectionSubsequentPress$1) baseContinuationImpl;
                int i3 = selectionGesturesKt$touchSelectionSubsequentPress$12.r;
                if ((i3 & Integer.MIN_VALUE) != 0) {
                    selectionGesturesKt$touchSelectionSubsequentPress$12.r = i3 - Integer.MIN_VALUE;
                    selectionGesturesKt$touchSelectionSubsequentPress$1 = selectionGesturesKt$touchSelectionSubsequentPress$12;
                    Object obj = selectionGesturesKt$touchSelectionSubsequentPress$1.q;
                    Object obj2 = CoroutineSingletons.j;
                    i2 = selectionGesturesKt$touchSelectionSubsequentPress$1.r;
                    Unit unit = Unit.a;
                    if (i2 == 0) {
                        if (i2 != 1) {
                            if (i2 == 2) {
                                textDragObserver = selectionGesturesKt$touchSelectionSubsequentPress$1.n;
                                AwaitPointerEventScope awaitPointerEventScope4 = selectionGesturesKt$touchSelectionSubsequentPress$1.m;
                                ResultKt.b(obj);
                                awaitPointerEventScope3 = awaitPointerEventScope4;
                                if (((Boolean) obj).booleanValue()) {
                                    List list = awaitPointerEventScope3.s().a;
                                    int size = list.size();
                                    for (int i4 = 0; i4 < size; i4++) {
                                        PointerInputChange pointerInputChange = (PointerInputChange) list.get(i4);
                                        if (PointerEventKt.c(pointerInputChange)) {
                                            pointerInputChange.a();
                                        }
                                    }
                                    textDragObserver.b();
                                    return unit;
                                }
                                textDragObserver.onCancel();
                                return unit;
                            }
                            u2.l("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        long j2 = selectionGesturesKt$touchSelectionSubsequentPress$1.p;
                        Ref$LongRef ref$LongRef2 = selectionGesturesKt$touchSelectionSubsequentPress$1.o;
                        TextDragObserver textDragObserver2 = selectionGesturesKt$touchSelectionSubsequentPress$1.n;
                        AwaitPointerEventScope awaitPointerEventScope5 = selectionGesturesKt$touchSelectionSubsequentPress$1.m;
                        try {
                            ResultKt.b(obj);
                            j = j2;
                            textDragObserver = textDragObserver2;
                            awaitPointerEventScope2 = awaitPointerEventScope5;
                            ref$LongRef = ref$LongRef2;
                        } catch (CancellationException e) {
                            e = e;
                            textDragObserver = textDragObserver2;
                            textDragObserver.onCancel();
                            throw e;
                        }
                    } else {
                        ResultKt.b(obj);
                        PointerInputChange pointerInputChange2 = (PointerInputChange) CollectionsKt.s(pointerEvent.a);
                        j = pointerInputChange2.a;
                        long j3 = pointerInputChange2.c;
                        if (i > 2) {
                            aVar = SelectionAdjustment.Companion.c;
                        } else {
                            aVar = SelectionAdjustment.Companion.b;
                        }
                        textDragObserver.a(j3, aVar);
                        ?? obj3 = new Object();
                        obj3.j = 9205357640488583168L;
                        long b = awaitPointerEventScope.getViewConfiguration().b();
                        Function2 selectionGesturesKt$touchSelectionSubsequentPress$downResolution$1 = new SelectionGesturesKt$touchSelectionSubsequentPress$downResolution$1(j, obj3, null);
                        selectionGesturesKt$touchSelectionSubsequentPress$1.m = awaitPointerEventScope;
                        selectionGesturesKt$touchSelectionSubsequentPress$1.n = textDragObserver;
                        selectionGesturesKt$touchSelectionSubsequentPress$1.o = obj3;
                        selectionGesturesKt$touchSelectionSubsequentPress$1.p = j;
                        selectionGesturesKt$touchSelectionSubsequentPress$1.r = 1;
                        obj = awaitPointerEventScope.z0(b, selectionGesturesKt$touchSelectionSubsequentPress$downResolution$1, selectionGesturesKt$touchSelectionSubsequentPress$1);
                        awaitPointerEventScope2 = awaitPointerEventScope;
                        ref$LongRef = obj3;
                        if (obj == obj2) {
                            return obj2;
                        }
                    }
                    downResolution = (DownResolution) obj;
                    if (downResolution == null) {
                        downResolution = DownResolution.l;
                    }
                    if (downResolution != DownResolution.m) {
                        textDragObserver.onCancel();
                        return unit;
                    }
                    if (downResolution == DownResolution.j) {
                        textDragObserver.b();
                        return unit;
                    }
                    if (downResolution == DownResolution.k) {
                        textDragObserver.e(ref$LongRef.j);
                    }
                    ra raVar = new ra(textDragObserver, 2);
                    selectionGesturesKt$touchSelectionSubsequentPress$1.m = awaitPointerEventScope2;
                    selectionGesturesKt$touchSelectionSubsequentPress$1.n = textDragObserver;
                    selectionGesturesKt$touchSelectionSubsequentPress$1.o = null;
                    selectionGesturesKt$touchSelectionSubsequentPress$1.r = 2;
                    obj = DragGestureDetectorKt.e(awaitPointerEventScope2, j, raVar, selectionGesturesKt$touchSelectionSubsequentPress$1);
                    awaitPointerEventScope3 = awaitPointerEventScope2;
                }
            }
            if (i2 == 0) {
            }
            downResolution = (DownResolution) obj;
            if (downResolution == null) {
            }
            if (downResolution != DownResolution.m) {
            }
        } catch (CancellationException e2) {
            e = e2;
        }
        selectionGesturesKt$touchSelectionSubsequentPress$1 = new ContinuationImpl(baseContinuationImpl);
        Object obj4 = selectionGesturesKt$touchSelectionSubsequentPress$1.q;
        Object obj22 = CoroutineSingletons.j;
        i2 = selectionGesturesKt$touchSelectionSubsequentPress$1.r;
        Unit unit2 = Unit.a;
    }

    public static final Object c(PointerInputScope pointerInputScope, MouseSelectionObserver mouseSelectionObserver, TextDragObserver textDragObserver, Continuation continuation) {
        SuspendingPointerInputModifierNodeImpl suspendingPointerInputModifierNodeImpl = (SuspendingPointerInputModifierNodeImpl) pointerInputScope;
        suspendingPointerInputModifierNodeImpl.getClass();
        Object b = ForEachGestureKt.b(pointerInputScope, new SelectionGesturesKt$awaitSelectionGestures$2(new ClicksCounter(DelegatableNodeKt.g(suspendingPointerInputModifierNodeImpl).J), mouseSelectionObserver, textDragObserver, null), continuation);
        if (b == CoroutineSingletons.j) {
            return b;
        }
        return Unit.a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00fc A[Catch: all -> 0x0032, TryCatch #0 {all -> 0x0032, blocks: (B:12:0x002d, B:13:0x00e4, B:15:0x00ec, B:17:0x00f0, B:19:0x00fc, B:21:0x0108, B:62:0x00bd), top: B:7:0x0021 }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x007f A[Catch: all -> 0x0044, TryCatch #1 {all -> 0x0044, blocks: (B:34:0x0040, B:35:0x0077, B:37:0x007f, B:39:0x008b, B:41:0x0097, B:52:0x005e), top: B:7:0x0021 }] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0023  */
    /* JADX WARN: Type inference failed for: r11v3, types: [kotlin.jvm.internal.Ref$BooleanRef, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object d(AwaitPointerEventScope awaitPointerEventScope, MouseSelectionObserver mouseSelectionObserver, ClicksCounter clicksCounter, PointerEvent pointerEvent, BaseContinuationImpl baseContinuationImpl) {
        SelectionGesturesKt$mouseSelection$1 selectionGesturesKt$mouseSelection$1;
        int i;
        a aVar;
        AwaitPointerEventScope awaitPointerEventScope2;
        Ref$BooleanRef ref$BooleanRef;
        int size;
        try {
            try {
                if (baseContinuationImpl instanceof SelectionGesturesKt$mouseSelection$1) {
                    SelectionGesturesKt$mouseSelection$1 selectionGesturesKt$mouseSelection$12 = (SelectionGesturesKt$mouseSelection$1) baseContinuationImpl;
                    int i2 = selectionGesturesKt$mouseSelection$12.q;
                    if ((i2 & Integer.MIN_VALUE) != 0) {
                        selectionGesturesKt$mouseSelection$12.q = i2 - Integer.MIN_VALUE;
                        selectionGesturesKt$mouseSelection$1 = selectionGesturesKt$mouseSelection$12;
                        Object obj = selectionGesturesKt$mouseSelection$1.p;
                        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                        i = selectionGesturesKt$mouseSelection$1.q;
                        int i3 = 0;
                        if (i == 0) {
                            if (i != 1) {
                                if (i == 2) {
                                    ref$BooleanRef = selectionGesturesKt$mouseSelection$1.o;
                                    mouseSelectionObserver = selectionGesturesKt$mouseSelection$1.n;
                                    awaitPointerEventScope2 = selectionGesturesKt$mouseSelection$1.m;
                                    ResultKt.b(obj);
                                    if (((Boolean) obj).booleanValue() && ref$BooleanRef.j) {
                                        List list = awaitPointerEventScope2.s().a;
                                        size = list.size();
                                        while (i3 < size) {
                                            PointerInputChange pointerInputChange = (PointerInputChange) list.get(i3);
                                            if (PointerEventKt.c(pointerInputChange)) {
                                                pointerInputChange.a();
                                            }
                                            i3++;
                                        }
                                    }
                                    mouseSelectionObserver.c();
                                    return Unit.a;
                                }
                                u2.l("call to 'resume' before 'invoke' with coroutine");
                                return null;
                            }
                            mouseSelectionObserver = selectionGesturesKt$mouseSelection$1.n;
                            awaitPointerEventScope = selectionGesturesKt$mouseSelection$1.m;
                            ResultKt.b(obj);
                            if (((Boolean) obj).booleanValue()) {
                                List list2 = awaitPointerEventScope.s().a;
                                int size2 = list2.size();
                                while (i3 < size2) {
                                    PointerInputChange pointerInputChange2 = (PointerInputChange) list2.get(i3);
                                    if (PointerEventKt.c(pointerInputChange2)) {
                                        pointerInputChange2.a();
                                    }
                                    i3++;
                                }
                            }
                            return Unit.a;
                        }
                        ResultKt.b(obj);
                        PointerInputChange pointerInputChange3 = (PointerInputChange) pointerEvent.a.get(0);
                        if ((pointerEvent.e & 1) != 0) {
                            if (mouseSelectionObserver.e(pointerInputChange3.c)) {
                                pointerInputChange3.a();
                                long j = pointerInputChange3.a;
                                ma maVar = new ma(18, mouseSelectionObserver);
                                selectionGesturesKt$mouseSelection$1.m = awaitPointerEventScope;
                                selectionGesturesKt$mouseSelection$1.n = mouseSelectionObserver;
                                selectionGesturesKt$mouseSelection$1.q = 1;
                                obj = DragGestureDetectorKt.e(awaitPointerEventScope, j, maVar, selectionGesturesKt$mouseSelection$1);
                                if (obj == coroutineSingletons) {
                                    return coroutineSingletons;
                                }
                                if (((Boolean) obj).booleanValue()) {
                                }
                            }
                            return Unit.a;
                        }
                        int i4 = clicksCounter.b;
                        a aVar2 = SelectionAdjustment.Companion.a;
                        if (i4 != 1) {
                            if (i4 != 2) {
                                aVar = SelectionAdjustment.Companion.c;
                            } else {
                                aVar = SelectionAdjustment.Companion.b;
                            }
                        } else {
                            aVar = aVar2;
                        }
                        if (mouseSelectionObserver.b(pointerInputChange3.c, aVar, i4)) {
                            ?? obj2 = new Object();
                            obj2.j = !aVar.equals(aVar2);
                            long j2 = pointerInputChange3.a;
                            p2 p2Var = new p2(mouseSelectionObserver, aVar, (Object) obj2, 13);
                            selectionGesturesKt$mouseSelection$1.m = awaitPointerEventScope;
                            selectionGesturesKt$mouseSelection$1.n = mouseSelectionObserver;
                            selectionGesturesKt$mouseSelection$1.o = obj2;
                            selectionGesturesKt$mouseSelection$1.q = 2;
                            obj = DragGestureDetectorKt.e(awaitPointerEventScope, j2, p2Var, selectionGesturesKt$mouseSelection$1);
                            if (obj != coroutineSingletons) {
                                awaitPointerEventScope2 = awaitPointerEventScope;
                                ref$BooleanRef = obj2;
                                if (((Boolean) obj).booleanValue()) {
                                    List list3 = awaitPointerEventScope2.s().a;
                                    size = list3.size();
                                    while (i3 < size) {
                                    }
                                }
                                mouseSelectionObserver.c();
                            }
                            return coroutineSingletons;
                        }
                        return Unit.a;
                    }
                }
                if (i == 0) {
                }
            } finally {
            }
        } finally {
        }
        selectionGesturesKt$mouseSelection$1 = new ContinuationImpl(baseContinuationImpl);
        Object obj3 = selectionGesturesKt$mouseSelection$1.p;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = selectionGesturesKt$mouseSelection$1.q;
        int i32 = 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x009e, code lost:
    
        if (r15 == r1) goto L35;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0067 A[Catch: CancellationException -> 0x0031, TryCatch #0 {CancellationException -> 0x0031, blocks: (B:12:0x002c, B:13:0x00a1, B:15:0x00a9, B:17:0x00b5, B:19:0x00c1, B:21:0x00c4, B:24:0x00c7, B:28:0x00cb, B:32:0x0040, B:34:0x0063, B:36:0x0067, B:40:0x0086, B:45:0x004a), top: B:7:0x0022 }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object e(AwaitPointerEventScope awaitPointerEventScope, TextDragObserver textDragObserver, PointerEvent pointerEvent, BaseContinuationImpl baseContinuationImpl) {
        SelectionGesturesKt$touchSelectionFirstPress$1 selectionGesturesKt$touchSelectionFirstPress$1;
        int i;
        PointerInputChange pointerInputChange;
        PointerInputChange pointerInputChange2;
        boolean z;
        try {
            if (baseContinuationImpl instanceof SelectionGesturesKt$touchSelectionFirstPress$1) {
                SelectionGesturesKt$touchSelectionFirstPress$1 selectionGesturesKt$touchSelectionFirstPress$12 = (SelectionGesturesKt$touchSelectionFirstPress$1) baseContinuationImpl;
                int i2 = selectionGesturesKt$touchSelectionFirstPress$12.q;
                if ((i2 & Integer.MIN_VALUE) != 0) {
                    selectionGesturesKt$touchSelectionFirstPress$12.q = i2 - Integer.MIN_VALUE;
                    selectionGesturesKt$touchSelectionFirstPress$1 = selectionGesturesKt$touchSelectionFirstPress$12;
                    Object obj = selectionGesturesKt$touchSelectionFirstPress$1.p;
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                    i = selectionGesturesKt$touchSelectionFirstPress$1.q;
                    if (i == 0) {
                        if (i != 1) {
                            if (i == 2) {
                                textDragObserver = selectionGesturesKt$touchSelectionFirstPress$1.n;
                                awaitPointerEventScope = selectionGesturesKt$touchSelectionFirstPress$1.m;
                                ResultKt.b(obj);
                                if (((Boolean) obj).booleanValue()) {
                                    List list = awaitPointerEventScope.s().a;
                                    int size = list.size();
                                    for (int i3 = 0; i3 < size; i3++) {
                                        PointerInputChange pointerInputChange3 = (PointerInputChange) list.get(i3);
                                        if (PointerEventKt.c(pointerInputChange3)) {
                                            pointerInputChange3.a();
                                        }
                                    }
                                    textDragObserver.b();
                                } else {
                                    textDragObserver.onCancel();
                                }
                                return Unit.a;
                            }
                            u2.l("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        PointerInputChange pointerInputChange4 = selectionGesturesKt$touchSelectionFirstPress$1.o;
                        textDragObserver = selectionGesturesKt$touchSelectionFirstPress$1.n;
                        AwaitPointerEventScope awaitPointerEventScope2 = selectionGesturesKt$touchSelectionFirstPress$1.m;
                        ResultKt.b(obj);
                        pointerInputChange = pointerInputChange4;
                        awaitPointerEventScope = awaitPointerEventScope2;
                    } else {
                        ResultKt.b(obj);
                        pointerInputChange = (PointerInputChange) CollectionsKt.s(pointerEvent.a);
                        long j = pointerInputChange.a;
                        selectionGesturesKt$touchSelectionFirstPress$1.m = awaitPointerEventScope;
                        selectionGesturesKt$touchSelectionFirstPress$1.n = textDragObserver;
                        selectionGesturesKt$touchSelectionFirstPress$1.o = pointerInputChange;
                        selectionGesturesKt$touchSelectionFirstPress$1.q = 1;
                        obj = DragGestureDetectorKt.b(awaitPointerEventScope, j, selectionGesturesKt$touchSelectionFirstPress$1);
                        if (obj == coroutineSingletons) {
                            return coroutineSingletons;
                        }
                    }
                    pointerInputChange2 = (PointerInputChange) obj;
                    if (pointerInputChange2 != null) {
                        long j2 = pointerInputChange2.c;
                        if (Offset.d(Offset.e(pointerInputChange.c, j2)) < DragGestureDetectorKt.g(awaitPointerEventScope.getViewConfiguration(), pointerInputChange.i)) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (z) {
                            textDragObserver.a(j2, SelectionGestures_androidKt.a);
                            long j3 = pointerInputChange2.a;
                            ra raVar = new ra(textDragObserver, 1);
                            selectionGesturesKt$touchSelectionFirstPress$1.m = awaitPointerEventScope;
                            selectionGesturesKt$touchSelectionFirstPress$1.n = textDragObserver;
                            selectionGesturesKt$touchSelectionFirstPress$1.o = null;
                            selectionGesturesKt$touchSelectionFirstPress$1.q = 2;
                            obj = DragGestureDetectorKt.e(awaitPointerEventScope, j3, raVar, selectionGesturesKt$touchSelectionFirstPress$1);
                        }
                    }
                    return Unit.a;
                }
            }
            if (i == 0) {
            }
            pointerInputChange2 = (PointerInputChange) obj;
            if (pointerInputChange2 != null) {
            }
            return Unit.a;
        } catch (CancellationException e) {
            textDragObserver.onCancel();
            throw e;
        }
        selectionGesturesKt$touchSelectionFirstPress$1 = new ContinuationImpl(baseContinuationImpl);
        Object obj2 = selectionGesturesKt$touchSelectionFirstPress$1.p;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = selectionGesturesKt$touchSelectionFirstPress$1.q;
    }

    public static final Modifier f(final t6 t6Var) {
        return SuspendingPointerInputFilterKt.a(Modifier.Companion.b, 8675309, new PointerInputEventHandler() { // from class: androidx.compose.foundation.text.selection.SelectionGesturesKt$updateSelectionTouchMode$1

            /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
            @DebugMetadata(c = "androidx.compose.foundation.text.selection.SelectionGesturesKt$updateSelectionTouchMode$1$1", f = "SelectionGestures.kt", l = {94}, m = "invokeSuspend", v = 1)
            /* renamed from: androidx.compose.foundation.text.selection.SelectionGesturesKt$updateSelectionTouchMode$1$1, reason: invalid class name */
            /* loaded from: classes.dex */
            final class AnonymousClass1 extends RestrictedSuspendLambda implements Function2<AwaitPointerEventScope, Continuation<? super Unit>, Object> {
                public int l;
                public /* synthetic */ Object m;
                public final /* synthetic */ t6 n;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public AnonymousClass1(t6 t6Var, Continuation continuation) {
                    super(2, continuation);
                    this.n = t6Var;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object n(Object obj, Object obj2) {
                    ((AnonymousClass1) s((AwaitPointerEventScope) obj, (Continuation) obj2)).v(Unit.a);
                    return CoroutineSingletons.j;
                }

                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                public final Continuation s(Object obj, Continuation continuation) {
                    AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.n, continuation);
                    anonymousClass1.m = obj;
                    return anonymousClass1;
                }

                /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
                    jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
                    	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
                    	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
                    	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
                    */
                /* JADX WARN: Removed duplicated region for block: B:8:0x002c A[RETURN] */
                /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x002a -> B:5:0x002d). Please report as a decompilation issue!!! */
                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public final java.lang.Object v(java.lang.Object r5) {
                    /*
                        r4 = this;
                        kotlin.coroutines.intrinsics.CoroutineSingletons r0 = kotlin.coroutines.intrinsics.CoroutineSingletons.j
                        int r1 = r4.l
                        r2 = 1
                        if (r1 == 0) goto L18
                        if (r1 != r2) goto L11
                        java.lang.Object r1 = r4.m
                        androidx.compose.ui.input.pointer.AwaitPointerEventScope r1 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r1
                        kotlin.ResultKt.b(r5)
                        goto L2d
                    L11:
                        java.lang.String r4 = "call to 'resume' before 'invoke' with coroutine"
                        defpackage.u2.l(r4)
                        r4 = 0
                        return r4
                    L18:
                        kotlin.ResultKt.b(r5)
                        java.lang.Object r5 = r4.m
                        androidx.compose.ui.input.pointer.AwaitPointerEventScope r5 = (androidx.compose.ui.input.pointer.AwaitPointerEventScope) r5
                        r1 = r5
                    L20:
                        androidx.compose.ui.input.pointer.PointerEventPass r5 = androidx.compose.ui.input.pointer.PointerEventPass.j
                        r4.m = r1
                        r4.l = r2
                        java.lang.Object r5 = r1.q(r5, r4)
                        if (r5 != r0) goto L2d
                        return r0
                    L2d:
                        androidx.compose.ui.input.pointer.PointerEvent r5 = (androidx.compose.ui.input.pointer.PointerEvent) r5
                        boolean r5 = androidx.compose.foundation.text.selection.SelectionGestures_androidKt.a(r5)
                        r5 = r5 ^ r2
                        java.lang.Boolean r5 = java.lang.Boolean.valueOf(r5)
                        t6 r3 = r4.n
                        r3.b(r5)
                        goto L20
                    */
                    throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.text.selection.SelectionGesturesKt$updateSelectionTouchMode$1.AnonymousClass1.v(java.lang.Object):java.lang.Object");
                }
            }

            @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
            public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                Object Y0 = ((SuspendingPointerInputModifierNodeImpl) pointerInputScope).Y0(new AnonymousClass1(t6.this, null), continuation);
                if (Y0 == CoroutineSingletons.j) {
                    return Y0;
                }
                return Unit.a;
            }
        });
    }
}
