package androidx.compose.foundation.gestures;

import androidx.compose.foundation.gestures.LongPressResult;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerEventKt;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerEventTimeoutCancellationException;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl;
import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.i2;
import defpackage.k8;
import defpackage.u2;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.BaseContinuationImpl;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.Job;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class TapGestureDetectorKt {
    public static final Function3 a = new SuspendLambda(3, null);

    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0049 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0052  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0047 -> B:10:0x004a). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final java.lang.Object a(androidx.compose.ui.input.pointer.AwaitPointerEventScope r5, boolean r6, androidx.compose.ui.input.pointer.PointerEventPass r7, kotlin.coroutines.jvm.internal.BaseContinuationImpl r8) {
        /*
            boolean r0 = r8 instanceof androidx.compose.foundation.gestures.TapGestureDetectorKt$awaitFirstDown$2
            if (r0 == 0) goto L13
            r0 = r8
            androidx.compose.foundation.gestures.TapGestureDetectorKt$awaitFirstDown$2 r0 = (androidx.compose.foundation.gestures.TapGestureDetectorKt$awaitFirstDown$2) r0
            int r1 = r0.q
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.q = r1
            goto L18
        L13:
            androidx.compose.foundation.gestures.TapGestureDetectorKt$awaitFirstDown$2 r0 = new androidx.compose.foundation.gestures.TapGestureDetectorKt$awaitFirstDown$2
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.p
            kotlin.coroutines.intrinsics.CoroutineSingletons r1 = kotlin.coroutines.intrinsics.CoroutineSingletons.j
            int r2 = r0.q
            r3 = 1
            if (r2 == 0) goto L38
            if (r2 != r3) goto L31
            boolean r5 = r0.o
            androidx.compose.ui.input.pointer.PointerEventPass r6 = r0.n
            androidx.compose.ui.input.pointer.AwaitPointerEventScope r7 = r0.m
            kotlin.ResultKt.b(r8)
            r4 = r6
            r6 = r5
            r5 = r7
            r7 = r4
            goto L4a
        L31:
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.u2.l(r5)
            r5 = 0
            return r5
        L38:
            kotlin.ResultKt.b(r8)
        L3b:
            r0.m = r5
            r0.n = r7
            r0.o = r6
            r0.q = r3
            java.lang.Object r8 = r5.q(r7, r0)
            if (r8 != r1) goto L4a
            return r1
        L4a:
            androidx.compose.ui.input.pointer.PointerEvent r8 = (androidx.compose.ui.input.pointer.PointerEvent) r8
            boolean r2 = f(r8, r6)
            if (r2 == 0) goto L3b
            java.util.List r5 = r8.a
            r6 = 0
            java.lang.Object r5 = r5.get(r6)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.compose.foundation.gestures.TapGestureDetectorKt.a(androidx.compose.ui.input.pointer.AwaitPointerEventScope, boolean, androidx.compose.ui.input.pointer.PointerEventPass, kotlin.coroutines.jvm.internal.BaseContinuationImpl):java.lang.Object");
    }

    public static /* synthetic */ Object b(AwaitPointerEventScope awaitPointerEventScope, BaseContinuationImpl baseContinuationImpl, int i) {
        boolean z = true;
        if ((i & 1) == 0) {
            z = false;
        }
        return a(awaitPointerEventScope, z, PointerEventPass.k, baseContinuationImpl);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:12:0x004a A[LOOP:0: B:11:0x0048->B:12:0x004a, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x003d A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0021  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x003b -> B:10:0x003e). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object c(AwaitPointerEventScope awaitPointerEventScope, ContinuationImpl continuationImpl) {
        TapGestureDetectorKt$consumeUntilUp$1 tapGestureDetectorKt$consumeUntilUp$1;
        int i;
        int size;
        int i2;
        int i3;
        int size2;
        if (continuationImpl instanceof TapGestureDetectorKt$consumeUntilUp$1) {
            TapGestureDetectorKt$consumeUntilUp$1 tapGestureDetectorKt$consumeUntilUp$12 = (TapGestureDetectorKt$consumeUntilUp$1) continuationImpl;
            int i4 = tapGestureDetectorKt$consumeUntilUp$12.o;
            if ((i4 & Integer.MIN_VALUE) != 0) {
                tapGestureDetectorKt$consumeUntilUp$12.o = i4 - Integer.MIN_VALUE;
                tapGestureDetectorKt$consumeUntilUp$1 = tapGestureDetectorKt$consumeUntilUp$12;
                Object obj = tapGestureDetectorKt$consumeUntilUp$1.n;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = tapGestureDetectorKt$consumeUntilUp$1.o;
                if (i == 0) {
                    if (i == 1) {
                        awaitPointerEventScope = tapGestureDetectorKt$consumeUntilUp$1.m;
                        ResultKt.b(obj);
                        PointerEvent pointerEvent = (PointerEvent) obj;
                        List list = pointerEvent.a;
                        size = list.size();
                        i2 = 0;
                        for (i3 = 0; i3 < size; i3++) {
                            ((PointerInputChange) list.get(i3)).a();
                        }
                        List list2 = pointerEvent.a;
                        size2 = list2.size();
                        while (i2 < size2) {
                            if (((PointerInputChange) list2.get(i2)).d) {
                                tapGestureDetectorKt$consumeUntilUp$1.m = awaitPointerEventScope;
                                tapGestureDetectorKt$consumeUntilUp$1.o = 1;
                                obj = ((SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine) awaitPointerEventScope).q(PointerEventPass.k, tapGestureDetectorKt$consumeUntilUp$1);
                                if (obj == coroutineSingletons) {
                                    return coroutineSingletons;
                                }
                                PointerEvent pointerEvent2 = (PointerEvent) obj;
                                List list3 = pointerEvent2.a;
                                size = list3.size();
                                i2 = 0;
                                while (i3 < size) {
                                }
                                List list22 = pointerEvent2.a;
                                size2 = list22.size();
                                while (i2 < size2) {
                                }
                            } else {
                                i2++;
                            }
                        }
                        return Unit.a;
                    }
                    u2.l("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                ResultKt.b(obj);
                tapGestureDetectorKt$consumeUntilUp$1.m = awaitPointerEventScope;
                tapGestureDetectorKt$consumeUntilUp$1.o = 1;
                obj = ((SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine) awaitPointerEventScope).q(PointerEventPass.k, tapGestureDetectorKt$consumeUntilUp$1);
                if (obj == coroutineSingletons) {
                }
                PointerEvent pointerEvent22 = (PointerEvent) obj;
                List list32 = pointerEvent22.a;
                size = list32.size();
                i2 = 0;
                while (i3 < size) {
                }
                List list222 = pointerEvent22.a;
                size2 = list222.size();
                while (i2 < size2) {
                }
                return Unit.a;
            }
        }
        tapGestureDetectorKt$consumeUntilUp$1 = new ContinuationImpl(continuationImpl);
        Object obj2 = tapGestureDetectorKt$consumeUntilUp$1.n;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = tapGestureDetectorKt$consumeUntilUp$1.o;
        if (i == 0) {
        }
    }

    public static final Object d(PointerInputScope pointerInputScope, Function3 function3, i2 i2Var, Continuation continuation) {
        Object c = CoroutineScopeKt.c(new TapGestureDetectorKt$detectTapAndPress$2(pointerInputScope, function3, i2Var, new PressGestureScopeImpl(pointerInputScope), null), continuation);
        if (c == CoroutineSingletons.j) {
            return c;
        }
        return Unit.a;
    }

    public static Object e(PointerInputScope pointerInputScope, Function3 function3, Function1 function1, Continuation continuation, int i) {
        if ((i & 4) != 0) {
            function3 = a;
        }
        Object c = CoroutineScopeKt.c(new TapGestureDetectorKt$detectTapGestures$2(pointerInputScope, function3, function1, null), continuation);
        if (c == CoroutineSingletons.j) {
            return c;
        }
        return Unit.a;
    }

    public static boolean f(PointerEvent pointerEvent, boolean z) {
        boolean b;
        List list = pointerEvent.a;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            PointerInputChange pointerInputChange = (PointerInputChange) list.get(i);
            if (z) {
                b = PointerEventKt.a(pointerInputChange);
            } else {
                b = PointerEventKt.b(pointerInputChange);
            }
            if (!b) {
                return false;
            }
        }
        return true;
    }

    public static Job g(CoroutineScope coroutineScope, Job job, Function2 function2) {
        return BuildersKt.c(coroutineScope, null, CoroutineStart.m, new TapGestureDetectorKt$launchAwaitingReset$1(job, function2, null), 1);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:7:0x002a. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x030b  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x033e  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0357  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x036d  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x028f  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x029c  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00d2  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01e7  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0219  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0230  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0248  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x023a  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0125  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0187  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0191  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x01b9  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0149  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object h(AwaitPointerEventScope awaitPointerEventScope, CoroutineScope coroutineScope, PressGestureScopeImpl pressGestureScopeImpl, Function3 function3, Function1 function1, BaseContinuationImpl baseContinuationImpl) {
        TapGestureDetectorKt$processTapGesture$1 tapGestureDetectorKt$processTapGesture$1;
        int i;
        PressGestureScopeImpl pressGestureScopeImpl2;
        Function3 function32;
        Function1 function12;
        int i2;
        CoroutineScope coroutineScope2;
        AwaitPointerEventScope awaitPointerEventScope2;
        Function1 function13;
        Function1 function14;
        Unit unit;
        Function1 function15;
        Job job;
        PointerInputChange pointerInputChange;
        Function1 function16;
        AwaitPointerEventScope awaitPointerEventScope3;
        Function1 function17;
        Function3 function33;
        PressGestureScopeImpl pressGestureScopeImpl3;
        Function1 function18;
        Function1 function19;
        AwaitPointerEventScope awaitPointerEventScope4;
        PointerInputChange pointerInputChange2;
        AwaitPointerEventScope awaitPointerEventScope5;
        Job g;
        PointerInputChange pointerInputChange3;
        Function1 function110;
        Function1 function111;
        Function3 function34;
        LongPressResult longPressResult;
        PressGestureScopeImpl pressGestureScopeImpl4;
        CoroutineScope coroutineScope3;
        AwaitPointerEventScope awaitPointerEventScope6;
        PointerInputChange pointerInputChange4;
        LongPressResult.Success success;
        Function1 function112;
        Function1 function113;
        Job job2;
        PointerInputChange pointerInputChange5;
        Job job3;
        PointerInputChange pointerInputChange6;
        Function1 function114;
        Function1 function115;
        PressGestureScopeImpl pressGestureScopeImpl5;
        CoroutineScope coroutineScope4;
        PointerInputChange pointerInputChange7;
        AwaitPointerEventScope awaitPointerEventScope7;
        LongPressResult longPressResult2;
        Job job4;
        PressGestureScopeImpl pressGestureScopeImpl6;
        CoroutineScope coroutineScope5;
        if (baseContinuationImpl instanceof TapGestureDetectorKt$processTapGesture$1) {
            TapGestureDetectorKt$processTapGesture$1 tapGestureDetectorKt$processTapGesture$12 = (TapGestureDetectorKt$processTapGesture$1) baseContinuationImpl;
            int i3 = tapGestureDetectorKt$processTapGesture$12.w;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                tapGestureDetectorKt$processTapGesture$12.w = i3 - Integer.MIN_VALUE;
                tapGestureDetectorKt$processTapGesture$1 = tapGestureDetectorKt$processTapGesture$12;
                Object obj = tapGestureDetectorKt$processTapGesture$1.v;
                Object obj2 = CoroutineSingletons.j;
                i = tapGestureDetectorKt$processTapGesture$1.w;
                LongPressResult.Success success2 = LongPressResult.Success.a;
                Function3 function35 = a;
                Unit unit2 = Unit.a;
                switch (i) {
                    case 0:
                        ResultKt.b(obj);
                        tapGestureDetectorKt$processTapGesture$1.m = awaitPointerEventScope;
                        tapGestureDetectorKt$processTapGesture$1.n = coroutineScope;
                        pressGestureScopeImpl2 = pressGestureScopeImpl;
                        tapGestureDetectorKt$processTapGesture$1.o = pressGestureScopeImpl2;
                        tapGestureDetectorKt$processTapGesture$1.p = null;
                        tapGestureDetectorKt$processTapGesture$1.q = null;
                        function32 = function3;
                        tapGestureDetectorKt$processTapGesture$1.r = function32;
                        function12 = function1;
                        tapGestureDetectorKt$processTapGesture$1.s = function12;
                        i2 = 1;
                        tapGestureDetectorKt$processTapGesture$1.w = 1;
                        Object b = b(awaitPointerEventScope, tapGestureDetectorKt$processTapGesture$1, 3);
                        if (b != obj2) {
                            coroutineScope2 = coroutineScope;
                            obj = b;
                            awaitPointerEventScope2 = awaitPointerEventScope;
                            function13 = null;
                            function14 = null;
                            PointerInputChange pointerInputChange8 = (PointerInputChange) obj;
                            pointerInputChange8.a();
                            unit = unit2;
                            Job c = BuildersKt.c(coroutineScope2, null, CoroutineStart.m, new TapGestureDetectorKt$processTapGesture$resetJob$1(pressGestureScopeImpl2, null), i2);
                            if (function32 != function35) {
                                g(coroutineScope2, c, new TapGestureDetectorKt$processTapGesture$2(function32, pressGestureScopeImpl2, pointerInputChange8, null));
                            }
                            if (function13 != null) {
                                tapGestureDetectorKt$processTapGesture$1.m = awaitPointerEventScope2;
                                tapGestureDetectorKt$processTapGesture$1.n = coroutineScope2;
                                tapGestureDetectorKt$processTapGesture$1.o = pressGestureScopeImpl2;
                                tapGestureDetectorKt$processTapGesture$1.p = function14;
                                tapGestureDetectorKt$processTapGesture$1.q = function13;
                                tapGestureDetectorKt$processTapGesture$1.r = function32;
                                tapGestureDetectorKt$processTapGesture$1.s = function12;
                                tapGestureDetectorKt$processTapGesture$1.t = c;
                                tapGestureDetectorKt$processTapGesture$1.w = 2;
                                obj = j(awaitPointerEventScope2, PointerEventPass.k, tapGestureDetectorKt$processTapGesture$1);
                                if (obj != obj2) {
                                    Function3 function36 = function32;
                                    function17 = function13;
                                    job = c;
                                    function33 = function36;
                                    pressGestureScopeImpl3 = pressGestureScopeImpl2;
                                    function18 = function12;
                                    function19 = function14;
                                    awaitPointerEventScope4 = awaitPointerEventScope2;
                                    pointerInputChange2 = (PointerInputChange) obj;
                                    awaitPointerEventScope5 = awaitPointerEventScope4;
                                    if (pointerInputChange2 == null) {
                                        g = g(coroutineScope2, job, new TapGestureDetectorKt$processTapGesture$4(pressGestureScopeImpl3, null));
                                    } else {
                                        pointerInputChange2.a();
                                        g = g(coroutineScope2, job, new TapGestureDetectorKt$processTapGesture$5(pressGestureScopeImpl3, null));
                                    }
                                    if (pointerInputChange2 != null) {
                                        if (function19 != null) {
                                            tapGestureDetectorKt$processTapGesture$1.m = awaitPointerEventScope5;
                                            tapGestureDetectorKt$processTapGesture$1.n = coroutineScope2;
                                            tapGestureDetectorKt$processTapGesture$1.o = pressGestureScopeImpl3;
                                            tapGestureDetectorKt$processTapGesture$1.p = function19;
                                            tapGestureDetectorKt$processTapGesture$1.q = function17;
                                            tapGestureDetectorKt$processTapGesture$1.r = function33;
                                            tapGestureDetectorKt$processTapGesture$1.s = function18;
                                            tapGestureDetectorKt$processTapGesture$1.t = pointerInputChange2;
                                            tapGestureDetectorKt$processTapGesture$1.u = g;
                                            tapGestureDetectorKt$processTapGesture$1.w = 5;
                                            Function1 function116 = function18;
                                            Function3 function37 = function33;
                                            Object z0 = awaitPointerEventScope5.z0(awaitPointerEventScope5.getViewConfiguration().a(), new TapGestureDetectorKt$awaitSecondDown$2(pointerInputChange2, null), tapGestureDetectorKt$processTapGesture$1);
                                            if (z0 != obj2) {
                                                pointerInputChange3 = pointerInputChange2;
                                                obj = z0;
                                                function110 = function116;
                                                function111 = function19;
                                                function34 = function37;
                                                awaitPointerEventScope6 = awaitPointerEventScope5;
                                                pointerInputChange4 = (PointerInputChange) obj;
                                                if (pointerInputChange4 == null) {
                                                    success = success2;
                                                    Job c2 = BuildersKt.c(coroutineScope2, null, CoroutineStart.m, new TapGestureDetectorKt$processTapGesture$6(g, pressGestureScopeImpl3, null), 1);
                                                    if (function34 != function35) {
                                                        g(coroutineScope2, c2, new TapGestureDetectorKt$processTapGesture$7(function34, pressGestureScopeImpl3, pointerInputChange4, null));
                                                    }
                                                    if (function17 == null) {
                                                        tapGestureDetectorKt$processTapGesture$1.m = coroutineScope2;
                                                        tapGestureDetectorKt$processTapGesture$1.n = pressGestureScopeImpl3;
                                                        tapGestureDetectorKt$processTapGesture$1.o = function111;
                                                        tapGestureDetectorKt$processTapGesture$1.p = function110;
                                                        tapGestureDetectorKt$processTapGesture$1.q = c2;
                                                        tapGestureDetectorKt$processTapGesture$1.r = pointerInputChange3;
                                                        tapGestureDetectorKt$processTapGesture$1.s = null;
                                                        tapGestureDetectorKt$processTapGesture$1.t = null;
                                                        tapGestureDetectorKt$processTapGesture$1.u = null;
                                                        tapGestureDetectorKt$processTapGesture$1.w = 6;
                                                        obj = j(awaitPointerEventScope6, PointerEventPass.k, tapGestureDetectorKt$processTapGesture$1);
                                                        if (obj != obj2) {
                                                            job3 = c2;
                                                            pointerInputChange6 = pointerInputChange3;
                                                            function114 = function110;
                                                            function115 = function111;
                                                            pressGestureScopeImpl5 = pressGestureScopeImpl3;
                                                            coroutineScope4 = coroutineScope2;
                                                            pointerInputChange7 = (PointerInputChange) obj;
                                                            if (pointerInputChange7 != null) {
                                                                pointerInputChange7.a();
                                                                g(coroutineScope4, job3, new TapGestureDetectorKt$processTapGesture$8(pressGestureScopeImpl5, null));
                                                                function115.b(new Offset(pointerInputChange7.c));
                                                                return unit;
                                                            }
                                                            g(coroutineScope4, job3, new TapGestureDetectorKt$processTapGesture$9(pressGestureScopeImpl5, null));
                                                            if (function114 != null) {
                                                                function114.b(new Offset(pointerInputChange6.c));
                                                                return unit;
                                                            }
                                                        }
                                                    } else {
                                                        tapGestureDetectorKt$processTapGesture$1.m = awaitPointerEventScope6;
                                                        tapGestureDetectorKt$processTapGesture$1.n = coroutineScope2;
                                                        tapGestureDetectorKt$processTapGesture$1.o = pressGestureScopeImpl3;
                                                        tapGestureDetectorKt$processTapGesture$1.p = function111;
                                                        tapGestureDetectorKt$processTapGesture$1.q = function17;
                                                        tapGestureDetectorKt$processTapGesture$1.r = function110;
                                                        tapGestureDetectorKt$processTapGesture$1.s = c2;
                                                        tapGestureDetectorKt$processTapGesture$1.t = pointerInputChange3;
                                                        tapGestureDetectorKt$processTapGesture$1.u = pointerInputChange4;
                                                        tapGestureDetectorKt$processTapGesture$1.w = 7;
                                                        Object i4 = i(awaitPointerEventScope6, PointerEventPass.k, tapGestureDetectorKt$processTapGesture$1);
                                                        if (i4 != obj2) {
                                                            function112 = function110;
                                                            function113 = function111;
                                                            job2 = c2;
                                                            pointerInputChange5 = pointerInputChange4;
                                                            obj = i4;
                                                            awaitPointerEventScope7 = awaitPointerEventScope6;
                                                            longPressResult2 = (LongPressResult) obj;
                                                            if (!Intrinsics.a(longPressResult2, success)) {
                                                                function17.b(new Offset(pointerInputChange5.c));
                                                                tapGestureDetectorKt$processTapGesture$1.m = coroutineScope2;
                                                                tapGestureDetectorKt$processTapGesture$1.n = pressGestureScopeImpl3;
                                                                tapGestureDetectorKt$processTapGesture$1.o = job2;
                                                                tapGestureDetectorKt$processTapGesture$1.p = null;
                                                                tapGestureDetectorKt$processTapGesture$1.q = null;
                                                                tapGestureDetectorKt$processTapGesture$1.r = null;
                                                                tapGestureDetectorKt$processTapGesture$1.s = null;
                                                                tapGestureDetectorKt$processTapGesture$1.t = null;
                                                                tapGestureDetectorKt$processTapGesture$1.u = null;
                                                                tapGestureDetectorKt$processTapGesture$1.w = 8;
                                                                if (c(awaitPointerEventScope7, tapGestureDetectorKt$processTapGesture$1) != obj2) {
                                                                    job4 = job2;
                                                                    pressGestureScopeImpl6 = pressGestureScopeImpl3;
                                                                    coroutineScope5 = coroutineScope2;
                                                                    g(coroutineScope5, job4, new TapGestureDetectorKt$processTapGesture$secondUp$1(pressGestureScopeImpl6, null));
                                                                    return unit;
                                                                }
                                                            } else {
                                                                if (longPressResult2 instanceof LongPressResult.Released) {
                                                                    pointerInputChange7 = ((LongPressResult.Released) longPressResult2).a;
                                                                    pointerInputChange6 = pointerInputChange3;
                                                                    job3 = job2;
                                                                } else {
                                                                    if (!(longPressResult2 instanceof LongPressResult.Canceled)) {
                                                                        k8.e();
                                                                        return null;
                                                                    }
                                                                    pointerInputChange6 = pointerInputChange3;
                                                                    job3 = job2;
                                                                    pointerInputChange7 = null;
                                                                }
                                                                function114 = function112;
                                                                function115 = function113;
                                                                pressGestureScopeImpl5 = pressGestureScopeImpl3;
                                                                coroutineScope4 = coroutineScope2;
                                                                if (pointerInputChange7 != null) {
                                                                }
                                                            }
                                                        }
                                                    }
                                                } else if (function110 != null) {
                                                    function110.b(new Offset(pointerInputChange3.c));
                                                    return unit;
                                                }
                                            }
                                        } else if (function18 != null) {
                                            function18.b(new Offset(pointerInputChange2.c));
                                            return unit;
                                        }
                                    }
                                    return unit;
                                }
                            } else {
                                tapGestureDetectorKt$processTapGesture$1.m = awaitPointerEventScope2;
                                tapGestureDetectorKt$processTapGesture$1.n = coroutineScope2;
                                tapGestureDetectorKt$processTapGesture$1.o = pressGestureScopeImpl2;
                                tapGestureDetectorKt$processTapGesture$1.p = function14;
                                tapGestureDetectorKt$processTapGesture$1.q = function13;
                                tapGestureDetectorKt$processTapGesture$1.r = function32;
                                tapGestureDetectorKt$processTapGesture$1.s = function12;
                                tapGestureDetectorKt$processTapGesture$1.t = pointerInputChange8;
                                tapGestureDetectorKt$processTapGesture$1.u = c;
                                tapGestureDetectorKt$processTapGesture$1.w = 3;
                                Object i5 = i(awaitPointerEventScope2, PointerEventPass.k, tapGestureDetectorKt$processTapGesture$1);
                                if (i5 != obj2) {
                                    function15 = function13;
                                    job = c;
                                    pointerInputChange = pointerInputChange8;
                                    obj = i5;
                                    function16 = function14;
                                    awaitPointerEventScope3 = awaitPointerEventScope2;
                                    longPressResult = (LongPressResult) obj;
                                    if (!Intrinsics.a(longPressResult, success2)) {
                                        function15.b(new Offset(pointerInputChange.c));
                                        tapGestureDetectorKt$processTapGesture$1.m = coroutineScope2;
                                        tapGestureDetectorKt$processTapGesture$1.n = pressGestureScopeImpl2;
                                        tapGestureDetectorKt$processTapGesture$1.o = job;
                                        tapGestureDetectorKt$processTapGesture$1.p = null;
                                        tapGestureDetectorKt$processTapGesture$1.q = null;
                                        tapGestureDetectorKt$processTapGesture$1.r = null;
                                        tapGestureDetectorKt$processTapGesture$1.s = null;
                                        tapGestureDetectorKt$processTapGesture$1.t = null;
                                        tapGestureDetectorKt$processTapGesture$1.u = null;
                                        tapGestureDetectorKt$processTapGesture$1.w = 4;
                                        if (c(awaitPointerEventScope3, tapGestureDetectorKt$processTapGesture$1) != obj2) {
                                            pressGestureScopeImpl4 = pressGestureScopeImpl2;
                                            coroutineScope3 = coroutineScope2;
                                            g(coroutineScope3, job, new TapGestureDetectorKt$processTapGesture$3(pressGestureScopeImpl4, null));
                                            return unit;
                                        }
                                    } else {
                                        if (longPressResult instanceof LongPressResult.Released) {
                                            pointerInputChange2 = ((LongPressResult.Released) longPressResult).a;
                                        } else {
                                            if (!(longPressResult instanceof LongPressResult.Canceled)) {
                                                k8.e();
                                                return null;
                                            }
                                            pointerInputChange2 = null;
                                        }
                                        Function1 function117 = function16;
                                        pressGestureScopeImpl3 = pressGestureScopeImpl2;
                                        function18 = function12;
                                        function19 = function117;
                                        function33 = function32;
                                        awaitPointerEventScope5 = awaitPointerEventScope3;
                                        function17 = function15;
                                        if (pointerInputChange2 == null) {
                                        }
                                        if (pointerInputChange2 != null) {
                                        }
                                        return unit;
                                    }
                                }
                            }
                        }
                        return obj2;
                    case 1:
                        Function1 function118 = (Function1) tapGestureDetectorKt$processTapGesture$1.s;
                        Function3 function38 = (Function3) tapGestureDetectorKt$processTapGesture$1.r;
                        Function1 function119 = (Function1) tapGestureDetectorKt$processTapGesture$1.q;
                        Function1 function120 = tapGestureDetectorKt$processTapGesture$1.p;
                        PressGestureScopeImpl pressGestureScopeImpl7 = (PressGestureScopeImpl) tapGestureDetectorKt$processTapGesture$1.o;
                        coroutineScope2 = (CoroutineScope) tapGestureDetectorKt$processTapGesture$1.n;
                        AwaitPointerEventScope awaitPointerEventScope8 = (AwaitPointerEventScope) tapGestureDetectorKt$processTapGesture$1.m;
                        ResultKt.b(obj);
                        function14 = function120;
                        function12 = function118;
                        function13 = function119;
                        function32 = function38;
                        pressGestureScopeImpl2 = pressGestureScopeImpl7;
                        i2 = 1;
                        awaitPointerEventScope2 = awaitPointerEventScope8;
                        PointerInputChange pointerInputChange82 = (PointerInputChange) obj;
                        pointerInputChange82.a();
                        unit = unit2;
                        Job c3 = BuildersKt.c(coroutineScope2, null, CoroutineStart.m, new TapGestureDetectorKt$processTapGesture$resetJob$1(pressGestureScopeImpl2, null), i2);
                        if (function32 != function35) {
                        }
                        if (function13 != null) {
                        }
                        return obj2;
                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                        job = (Job) tapGestureDetectorKt$processTapGesture$1.t;
                        function18 = (Function1) tapGestureDetectorKt$processTapGesture$1.s;
                        function33 = (Function3) tapGestureDetectorKt$processTapGesture$1.r;
                        function17 = (Function1) tapGestureDetectorKt$processTapGesture$1.q;
                        function19 = tapGestureDetectorKt$processTapGesture$1.p;
                        pressGestureScopeImpl3 = (PressGestureScopeImpl) tapGestureDetectorKt$processTapGesture$1.o;
                        coroutineScope2 = (CoroutineScope) tapGestureDetectorKt$processTapGesture$1.n;
                        AwaitPointerEventScope awaitPointerEventScope9 = (AwaitPointerEventScope) tapGestureDetectorKt$processTapGesture$1.m;
                        ResultKt.b(obj);
                        unit = unit2;
                        awaitPointerEventScope4 = awaitPointerEventScope9;
                        pointerInputChange2 = (PointerInputChange) obj;
                        awaitPointerEventScope5 = awaitPointerEventScope4;
                        if (pointerInputChange2 == null) {
                        }
                        if (pointerInputChange2 != null) {
                        }
                        return unit;
                    case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                        job = (Job) tapGestureDetectorKt$processTapGesture$1.u;
                        PointerInputChange pointerInputChange9 = (PointerInputChange) tapGestureDetectorKt$processTapGesture$1.t;
                        Function1 function121 = (Function1) tapGestureDetectorKt$processTapGesture$1.s;
                        function32 = (Function3) tapGestureDetectorKt$processTapGesture$1.r;
                        Function1 function122 = (Function1) tapGestureDetectorKt$processTapGesture$1.q;
                        function16 = tapGestureDetectorKt$processTapGesture$1.p;
                        PressGestureScopeImpl pressGestureScopeImpl8 = (PressGestureScopeImpl) tapGestureDetectorKt$processTapGesture$1.o;
                        CoroutineScope coroutineScope6 = (CoroutineScope) tapGestureDetectorKt$processTapGesture$1.n;
                        awaitPointerEventScope3 = (AwaitPointerEventScope) tapGestureDetectorKt$processTapGesture$1.m;
                        ResultKt.b(obj);
                        unit = unit2;
                        function15 = function122;
                        function12 = function121;
                        pointerInputChange = pointerInputChange9;
                        pressGestureScopeImpl2 = pressGestureScopeImpl8;
                        coroutineScope2 = coroutineScope6;
                        longPressResult = (LongPressResult) obj;
                        if (!Intrinsics.a(longPressResult, success2)) {
                        }
                        break;
                    case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                        job = (Job) tapGestureDetectorKt$processTapGesture$1.o;
                        pressGestureScopeImpl4 = (PressGestureScopeImpl) tapGestureDetectorKt$processTapGesture$1.n;
                        coroutineScope3 = (CoroutineScope) tapGestureDetectorKt$processTapGesture$1.m;
                        ResultKt.b(obj);
                        unit = unit2;
                        g(coroutineScope3, job, new TapGestureDetectorKt$processTapGesture$3(pressGestureScopeImpl4, null));
                        return unit;
                    case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                        g = (Job) tapGestureDetectorKt$processTapGesture$1.u;
                        pointerInputChange3 = (PointerInputChange) tapGestureDetectorKt$processTapGesture$1.t;
                        function110 = (Function1) tapGestureDetectorKt$processTapGesture$1.s;
                        function34 = (Function3) tapGestureDetectorKt$processTapGesture$1.r;
                        Function1 function123 = (Function1) tapGestureDetectorKt$processTapGesture$1.q;
                        Function1 function124 = tapGestureDetectorKt$processTapGesture$1.p;
                        PressGestureScopeImpl pressGestureScopeImpl9 = (PressGestureScopeImpl) tapGestureDetectorKt$processTapGesture$1.o;
                        CoroutineScope coroutineScope7 = (CoroutineScope) tapGestureDetectorKt$processTapGesture$1.n;
                        AwaitPointerEventScope awaitPointerEventScope10 = (AwaitPointerEventScope) tapGestureDetectorKt$processTapGesture$1.m;
                        ResultKt.b(obj);
                        awaitPointerEventScope6 = awaitPointerEventScope10;
                        function17 = function123;
                        pressGestureScopeImpl3 = pressGestureScopeImpl9;
                        unit = unit2;
                        function111 = function124;
                        coroutineScope2 = coroutineScope7;
                        pointerInputChange4 = (PointerInputChange) obj;
                        if (pointerInputChange4 == null) {
                        }
                        break;
                    case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                        pointerInputChange6 = (PointerInputChange) tapGestureDetectorKt$processTapGesture$1.r;
                        job3 = (Job) tapGestureDetectorKt$processTapGesture$1.q;
                        function114 = tapGestureDetectorKt$processTapGesture$1.p;
                        function115 = (Function1) tapGestureDetectorKt$processTapGesture$1.o;
                        pressGestureScopeImpl5 = (PressGestureScopeImpl) tapGestureDetectorKt$processTapGesture$1.n;
                        coroutineScope4 = (CoroutineScope) tapGestureDetectorKt$processTapGesture$1.m;
                        ResultKt.b(obj);
                        unit = unit2;
                        pointerInputChange7 = (PointerInputChange) obj;
                        if (pointerInputChange7 != null) {
                        }
                        break;
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        pointerInputChange5 = (PointerInputChange) tapGestureDetectorKt$processTapGesture$1.u;
                        pointerInputChange3 = (PointerInputChange) tapGestureDetectorKt$processTapGesture$1.t;
                        job2 = (Job) tapGestureDetectorKt$processTapGesture$1.s;
                        function112 = (Function1) tapGestureDetectorKt$processTapGesture$1.r;
                        function17 = (Function1) tapGestureDetectorKt$processTapGesture$1.q;
                        function113 = tapGestureDetectorKt$processTapGesture$1.p;
                        pressGestureScopeImpl3 = (PressGestureScopeImpl) tapGestureDetectorKt$processTapGesture$1.o;
                        coroutineScope2 = (CoroutineScope) tapGestureDetectorKt$processTapGesture$1.n;
                        AwaitPointerEventScope awaitPointerEventScope11 = (AwaitPointerEventScope) tapGestureDetectorKt$processTapGesture$1.m;
                        ResultKt.b(obj);
                        success = success2;
                        unit = unit2;
                        awaitPointerEventScope7 = awaitPointerEventScope11;
                        longPressResult2 = (LongPressResult) obj;
                        if (!Intrinsics.a(longPressResult2, success)) {
                        }
                        break;
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        job4 = (Job) tapGestureDetectorKt$processTapGesture$1.o;
                        pressGestureScopeImpl6 = (PressGestureScopeImpl) tapGestureDetectorKt$processTapGesture$1.n;
                        coroutineScope5 = (CoroutineScope) tapGestureDetectorKt$processTapGesture$1.m;
                        ResultKt.b(obj);
                        unit = unit2;
                        g(coroutineScope5, job4, new TapGestureDetectorKt$processTapGesture$secondUp$1(pressGestureScopeImpl6, null));
                        return unit;
                    default:
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                }
            }
        }
        tapGestureDetectorKt$processTapGesture$1 = new ContinuationImpl(baseContinuationImpl);
        Object obj3 = tapGestureDetectorKt$processTapGesture$1.v;
        Object obj22 = CoroutineSingletons.j;
        i = tapGestureDetectorKt$processTapGesture$1.w;
        LongPressResult.Success success22 = LongPressResult.Success.a;
        Function3 function352 = a;
        Unit unit22 = Unit.a;
        switch (i) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0022  */
    /* JADX WARN: Type inference failed for: r9v2, types: [java.lang.Object, kotlin.jvm.internal.Ref$ObjectRef] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object i(AwaitPointerEventScope awaitPointerEventScope, PointerEventPass pointerEventPass, ContinuationImpl continuationImpl) {
        TapGestureDetectorKt$waitForLongPress$1 tapGestureDetectorKt$waitForLongPress$1;
        int i;
        Ref$ObjectRef ref$ObjectRef;
        try {
            if (continuationImpl instanceof TapGestureDetectorKt$waitForLongPress$1) {
                TapGestureDetectorKt$waitForLongPress$1 tapGestureDetectorKt$waitForLongPress$12 = (TapGestureDetectorKt$waitForLongPress$1) continuationImpl;
                int i2 = tapGestureDetectorKt$waitForLongPress$12.o;
                if ((i2 & Integer.MIN_VALUE) != 0) {
                    tapGestureDetectorKt$waitForLongPress$12.o = i2 - Integer.MIN_VALUE;
                    tapGestureDetectorKt$waitForLongPress$1 = tapGestureDetectorKt$waitForLongPress$12;
                    Object obj = tapGestureDetectorKt$waitForLongPress$1.n;
                    Object obj2 = CoroutineSingletons.j;
                    i = tapGestureDetectorKt$waitForLongPress$1.o;
                    if (i == 0) {
                        if (i == 1) {
                            ref$ObjectRef = tapGestureDetectorKt$waitForLongPress$1.m;
                            ResultKt.b(obj);
                        } else {
                            u2.l("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                    } else {
                        ResultKt.b(obj);
                        ?? obj3 = new Object();
                        obj3.j = LongPressResult.Canceled.a;
                        long b = awaitPointerEventScope.getViewConfiguration().b();
                        Function2 tapGestureDetectorKt$waitForLongPress$2 = new TapGestureDetectorKt$waitForLongPress$2(pointerEventPass, obj3, null);
                        tapGestureDetectorKt$waitForLongPress$1.m = obj3;
                        tapGestureDetectorKt$waitForLongPress$1.o = 1;
                        if (awaitPointerEventScope.g0(b, tapGestureDetectorKt$waitForLongPress$2, tapGestureDetectorKt$waitForLongPress$1) == obj2) {
                            return obj2;
                        }
                        ref$ObjectRef = obj3;
                    }
                    return ref$ObjectRef.j;
                }
            }
            if (i == 0) {
            }
            return ref$ObjectRef.j;
        } catch (PointerEventTimeoutCancellationException unused) {
            return LongPressResult.Success.a;
        }
        tapGestureDetectorKt$waitForLongPress$1 = new ContinuationImpl(continuationImpl);
        Object obj4 = tapGestureDetectorKt$waitForLongPress$1.n;
        Object obj22 = CoroutineSingletons.j;
        i = tapGestureDetectorKt$waitForLongPress$1.o;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x00c7, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00ad, code lost:
    
        if (r0 == r2) goto L90;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:24:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0070  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0026  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00ad -> B:11:0x0031). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object j(AwaitPointerEventScope awaitPointerEventScope, PointerEventPass pointerEventPass, BaseContinuationImpl baseContinuationImpl) {
        TapGestureDetectorKt$waitForUpOrCancellation$2 tapGestureDetectorKt$waitForUpOrCancellation$2;
        int i;
        AwaitPointerEventScope awaitPointerEventScope2;
        TapGestureDetectorKt$waitForUpOrCancellation$2 tapGestureDetectorKt$waitForUpOrCancellation$22;
        PointerEventPass pointerEventPass2;
        AwaitPointerEventScope awaitPointerEventScope3;
        PointerEventPass pointerEventPass3;
        TapGestureDetectorKt$waitForUpOrCancellation$2 tapGestureDetectorKt$waitForUpOrCancellation$23;
        int size;
        int i2;
        Object q;
        if (baseContinuationImpl instanceof TapGestureDetectorKt$waitForUpOrCancellation$2) {
            TapGestureDetectorKt$waitForUpOrCancellation$2 tapGestureDetectorKt$waitForUpOrCancellation$24 = (TapGestureDetectorKt$waitForUpOrCancellation$2) baseContinuationImpl;
            int i3 = tapGestureDetectorKt$waitForUpOrCancellation$24.p;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                tapGestureDetectorKt$waitForUpOrCancellation$24.p = i3 - Integer.MIN_VALUE;
                tapGestureDetectorKt$waitForUpOrCancellation$2 = tapGestureDetectorKt$waitForUpOrCancellation$24;
                Object obj = tapGestureDetectorKt$waitForUpOrCancellation$2.o;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = tapGestureDetectorKt$waitForUpOrCancellation$2.p;
                if (i == 0) {
                    if (i != 1) {
                        if (i == 2) {
                            pointerEventPass3 = tapGestureDetectorKt$waitForUpOrCancellation$2.n;
                            AwaitPointerEventScope awaitPointerEventScope4 = tapGestureDetectorKt$waitForUpOrCancellation$2.m;
                            ResultKt.b(obj);
                            TapGestureDetectorKt$waitForUpOrCancellation$2 tapGestureDetectorKt$waitForUpOrCancellation$25 = tapGestureDetectorKt$waitForUpOrCancellation$2;
                            AwaitPointerEventScope awaitPointerEventScope5 = awaitPointerEventScope4;
                            PointerEventPass pointerEventPass4 = pointerEventPass3;
                            tapGestureDetectorKt$waitForUpOrCancellation$22 = tapGestureDetectorKt$waitForUpOrCancellation$25;
                            pointerEventPass2 = pointerEventPass4;
                            List list = ((PointerEvent) obj).a;
                            int size2 = list.size();
                            for (int i4 = 0; i4 < size2; i4++) {
                                if (((PointerInputChange) list.get(i4)).c()) {
                                    break;
                                }
                            }
                            awaitPointerEventScope2 = awaitPointerEventScope5;
                            tapGestureDetectorKt$waitForUpOrCancellation$22.m = awaitPointerEventScope2;
                            tapGestureDetectorKt$waitForUpOrCancellation$22.n = pointerEventPass2;
                            tapGestureDetectorKt$waitForUpOrCancellation$22.p = 1;
                            q = awaitPointerEventScope2.q(pointerEventPass2, tapGestureDetectorKt$waitForUpOrCancellation$22);
                            if (q != coroutineSingletons) {
                                awaitPointerEventScope3 = awaitPointerEventScope2;
                                obj = q;
                                TapGestureDetectorKt$waitForUpOrCancellation$2 tapGestureDetectorKt$waitForUpOrCancellation$26 = tapGestureDetectorKt$waitForUpOrCancellation$22;
                                pointerEventPass3 = pointerEventPass2;
                                tapGestureDetectorKt$waitForUpOrCancellation$23 = tapGestureDetectorKt$waitForUpOrCancellation$26;
                                List list2 = ((PointerEvent) obj).a;
                                size = list2.size();
                                for (i2 = 0; i2 < size; i2++) {
                                    if (!PointerEventKt.c((PointerInputChange) list2.get(i2))) {
                                        int size3 = list2.size();
                                        for (int i5 = 0; i5 < size3; i5++) {
                                            PointerInputChange pointerInputChange = (PointerInputChange) list2.get(i5);
                                            if (pointerInputChange.c() || PointerEventKt.e(pointerInputChange, awaitPointerEventScope3.f(), awaitPointerEventScope3.p0())) {
                                                break;
                                            }
                                        }
                                        PointerEventPass pointerEventPass5 = PointerEventPass.l;
                                        tapGestureDetectorKt$waitForUpOrCancellation$23.m = awaitPointerEventScope3;
                                        tapGestureDetectorKt$waitForUpOrCancellation$23.n = pointerEventPass3;
                                        tapGestureDetectorKt$waitForUpOrCancellation$23.p = 2;
                                        obj = awaitPointerEventScope3.q(pointerEventPass5, tapGestureDetectorKt$waitForUpOrCancellation$23);
                                        tapGestureDetectorKt$waitForUpOrCancellation$25 = tapGestureDetectorKt$waitForUpOrCancellation$23;
                                        awaitPointerEventScope5 = awaitPointerEventScope3;
                                    }
                                }
                                return list2.get(0);
                            }
                            return coroutineSingletons;
                        }
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    pointerEventPass3 = tapGestureDetectorKt$waitForUpOrCancellation$2.n;
                    AwaitPointerEventScope awaitPointerEventScope6 = tapGestureDetectorKt$waitForUpOrCancellation$2.m;
                    ResultKt.b(obj);
                    tapGestureDetectorKt$waitForUpOrCancellation$23 = tapGestureDetectorKt$waitForUpOrCancellation$2;
                    awaitPointerEventScope3 = awaitPointerEventScope6;
                    List list22 = ((PointerEvent) obj).a;
                    size = list22.size();
                    while (i2 < size) {
                    }
                    return list22.get(0);
                }
                ResultKt.b(obj);
                awaitPointerEventScope2 = awaitPointerEventScope;
                tapGestureDetectorKt$waitForUpOrCancellation$22 = tapGestureDetectorKt$waitForUpOrCancellation$2;
                pointerEventPass2 = pointerEventPass;
                tapGestureDetectorKt$waitForUpOrCancellation$22.m = awaitPointerEventScope2;
                tapGestureDetectorKt$waitForUpOrCancellation$22.n = pointerEventPass2;
                tapGestureDetectorKt$waitForUpOrCancellation$22.p = 1;
                q = awaitPointerEventScope2.q(pointerEventPass2, tapGestureDetectorKt$waitForUpOrCancellation$22);
                if (q != coroutineSingletons) {
                }
                return coroutineSingletons;
            }
        }
        tapGestureDetectorKt$waitForUpOrCancellation$2 = new ContinuationImpl(baseContinuationImpl);
        Object obj2 = tapGestureDetectorKt$waitForUpOrCancellation$2.o;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = tapGestureDetectorKt$waitForUpOrCancellation$2.p;
        if (i == 0) {
        }
    }
}
