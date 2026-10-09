package androidx.compose.foundation.gestures;

import androidx.collection.MutableObjectList;
import androidx.compose.foundation.GestureNodeKt;
import androidx.compose.foundation.gestures.DragDetectionState;
import androidx.compose.foundation.gestures.DragEvent;
import androidx.compose.foundation.gestures.IndirectPointerInputDragCycleDetector;
import androidx.compose.foundation.interaction.DragInteraction$Cancel;
import androidx.compose.foundation.interaction.DragInteraction$Start;
import androidx.compose.foundation.interaction.DragInteraction$Stop;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.indirect.AndroidIndirectPointerEvent;
import androidx.compose.ui.input.indirect.IndirectPointerEventPrimaryDirectionalMotionAxis;
import androidx.compose.ui.input.indirect.IndirectPointerInputChange;
import androidx.compose.ui.input.indirect.IndirectPointerInputModifierNode;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerEventKt;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerId;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerType;
import androidx.compose.ui.input.pointer.util.Lsq2VelocityTracker;
import androidx.compose.ui.input.pointer.util.VelocityTracker;
import androidx.compose.ui.input.pointer.util.VelocityTracker1D;
import androidx.compose.ui.input.pointer.util.VelocityTrackerKt;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNodeKt;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.PointerInputModifierNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.unit.VelocityKt;
import defpackage.a8;
import defpackage.k8;
import defpackage.u2;
import java.util.ArrayList;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.ChannelKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class DragGestureNode extends DelegatingNode implements PointerInputModifierNode, IndirectPointerInputModifierNode, CompositionLocalConsumerModifierNode, DraggableGestureConnection {
    public Function1 A;
    public boolean B;
    public MutableInteractionSource C;
    public BufferedChannel D;
    public DragInteraction$Start E;
    public boolean F;
    public boolean G;
    public DragDetectionState.AwaitDown H;
    public long I = 0;
    public DelegatableNode J;
    public DelegatableNode K;
    public DragDetectionState.Dragging L;
    public DragDetectionState.AwaitTouchSlop M;
    public DragDetectionState.AwaitGesturePickup N;
    public DragDetectionState O;
    public VelocityTracker P;
    public TouchSlopDetector Q;
    public IndirectPointerInputDragCycleDetector R;
    public Orientation z;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[DragDetectionState.AwaitDown.AwaitTouchSlop.values().length];
            try {
                DragDetectionState.AwaitDown.AwaitTouchSlop awaitTouchSlop = DragDetectionState.AwaitDown.AwaitTouchSlop.j;
                iArr[2] = 1;
            } catch (NoSuchFieldError unused) {
            }
            a = iArr;
        }
    }

    public DragGestureNode(Function1 function1, boolean z, MutableInteractionSource mutableInteractionSource, Orientation orientation) {
        this.z = orientation;
        this.A = function1;
        this.B = z;
        this.C = mutableInteractionSource;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object b1(DragGestureNode dragGestureNode, ContinuationImpl continuationImpl) {
        DragGestureNode$processDragCancel$1 dragGestureNode$processDragCancel$1;
        int i;
        if (continuationImpl instanceof DragGestureNode$processDragCancel$1) {
            dragGestureNode$processDragCancel$1 = (DragGestureNode$processDragCancel$1) continuationImpl;
            int i2 = dragGestureNode$processDragCancel$1.o;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                dragGestureNode$processDragCancel$1.o = i2 - Integer.MIN_VALUE;
                Object obj = dragGestureNode$processDragCancel$1.m;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = dragGestureNode$processDragCancel$1.o;
                if (i == 0) {
                    if (i == 1) {
                        ResultKt.b(obj);
                    } else {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                } else {
                    ResultKt.b(obj);
                    DragInteraction$Start dragInteraction$Start = dragGestureNode.E;
                    if (dragInteraction$Start != null) {
                        MutableInteractionSource mutableInteractionSource = dragGestureNode.C;
                        if (mutableInteractionSource != null) {
                            DragInteraction$Cancel dragInteraction$Cancel = new DragInteraction$Cancel(dragInteraction$Start);
                            dragGestureNode$processDragCancel$1.o = 1;
                            if (mutableInteractionSource.a(dragInteraction$Cancel, dragGestureNode$processDragCancel$1) == coroutineSingletons) {
                                return coroutineSingletons;
                            }
                        }
                    }
                    dragGestureNode.l1(new DragEvent.DragStopped(0L, false));
                    return Unit.a;
                }
                dragGestureNode.E = null;
                dragGestureNode.l1(new DragEvent.DragStopped(0L, false));
                return Unit.a;
            }
        }
        dragGestureNode$processDragCancel$1 = new DragGestureNode$processDragCancel$1(dragGestureNode, continuationImpl);
        Object obj2 = dragGestureNode$processDragCancel$1.m;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = dragGestureNode$processDragCancel$1.o;
        if (i == 0) {
        }
        dragGestureNode.E = null;
        dragGestureNode.l1(new DragEvent.DragStopped(0L, false));
        return Unit.a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x0053, code lost:
    
        if (r2.a(r5, r0) == r1) goto L27;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:20:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /* JADX WARN: Type inference failed for: r8v4, types: [androidx.compose.foundation.interaction.Interaction, androidx.compose.foundation.interaction.DragInteraction$Start, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object c1(DragGestureNode dragGestureNode, DragEvent.DragStarted dragStarted, ContinuationImpl continuationImpl) {
        DragGestureNode$processDragStart$1 dragGestureNode$processDragStart$1;
        int i;
        MutableInteractionSource mutableInteractionSource;
        DragEvent.DragStarted dragStarted2;
        DragInteraction$Start dragInteraction$Start;
        DragInteraction$Start dragInteraction$Start2;
        if (continuationImpl instanceof DragGestureNode$processDragStart$1) {
            dragGestureNode$processDragStart$1 = (DragGestureNode$processDragStart$1) continuationImpl;
            int i2 = dragGestureNode$processDragStart$1.q;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                dragGestureNode$processDragStart$1.q = i2 - Integer.MIN_VALUE;
                Object obj = dragGestureNode$processDragStart$1.o;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = dragGestureNode$processDragStart$1.q;
                if (i == 0) {
                    if (i != 1) {
                        if (i == 2) {
                            dragInteraction$Start = dragGestureNode$processDragStart$1.n;
                            dragStarted2 = dragGestureNode$processDragStart$1.m;
                            ResultKt.b(obj);
                            dragInteraction$Start2 = dragInteraction$Start;
                            dragStarted = dragStarted2;
                            dragGestureNode.E = dragInteraction$Start2;
                            dragGestureNode.k1(dragStarted.a);
                            return Unit.a;
                        }
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    dragStarted = dragGestureNode$processDragStart$1.m;
                    ResultKt.b(obj);
                } else {
                    ResultKt.b(obj);
                    DragInteraction$Start dragInteraction$Start3 = dragGestureNode.E;
                    if (dragInteraction$Start3 != null && (r2 = dragGestureNode.C) != null) {
                        DragInteraction$Cancel dragInteraction$Cancel = new DragInteraction$Cancel(dragInteraction$Start3);
                        dragGestureNode$processDragStart$1.m = dragStarted;
                        dragGestureNode$processDragStart$1.q = 1;
                    }
                }
                ?? obj2 = new Object();
                mutableInteractionSource = dragGestureNode.C;
                dragInteraction$Start2 = obj2;
                if (mutableInteractionSource != 0) {
                    dragGestureNode$processDragStart$1.m = dragStarted;
                    dragGestureNode$processDragStart$1.n = obj2;
                    dragGestureNode$processDragStart$1.q = 2;
                    if (mutableInteractionSource.a(obj2, dragGestureNode$processDragStart$1) != coroutineSingletons) {
                        dragStarted2 = dragStarted;
                        dragInteraction$Start = obj2;
                        dragInteraction$Start2 = dragInteraction$Start;
                        dragStarted = dragStarted2;
                    }
                    return coroutineSingletons;
                }
                dragGestureNode.E = dragInteraction$Start2;
                dragGestureNode.k1(dragStarted.a);
                return Unit.a;
            }
        }
        dragGestureNode$processDragStart$1 = new DragGestureNode$processDragStart$1(dragGestureNode, continuationImpl);
        Object obj3 = dragGestureNode$processDragStart$1.o;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = dragGestureNode$processDragStart$1.q;
        if (i == 0) {
        }
        ?? obj22 = new Object();
        mutableInteractionSource = dragGestureNode.C;
        dragInteraction$Start2 = obj22;
        if (mutableInteractionSource != 0) {
        }
        dragGestureNode.E = dragInteraction$Start2;
        dragGestureNode.k1(dragStarted.a);
        return Unit.a;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object d1(DragGestureNode dragGestureNode, DragEvent.DragStopped dragStopped, ContinuationImpl continuationImpl) {
        DragGestureNode$processDragStop$1 dragGestureNode$processDragStop$1;
        int i;
        if (continuationImpl instanceof DragGestureNode$processDragStop$1) {
            dragGestureNode$processDragStop$1 = (DragGestureNode$processDragStop$1) continuationImpl;
            int i2 = dragGestureNode$processDragStop$1.p;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                dragGestureNode$processDragStop$1.p = i2 - Integer.MIN_VALUE;
                Object obj = dragGestureNode$processDragStop$1.n;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = dragGestureNode$processDragStop$1.p;
                if (i == 0) {
                    if (i == 1) {
                        dragStopped = dragGestureNode$processDragStop$1.m;
                        ResultKt.b(obj);
                    } else {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                } else {
                    ResultKt.b(obj);
                    DragInteraction$Start dragInteraction$Start = dragGestureNode.E;
                    if (dragInteraction$Start != null) {
                        MutableInteractionSource mutableInteractionSource = dragGestureNode.C;
                        if (mutableInteractionSource != null) {
                            DragInteraction$Stop dragInteraction$Stop = new DragInteraction$Stop(dragInteraction$Start);
                            dragGestureNode$processDragStop$1.m = dragStopped;
                            dragGestureNode$processDragStop$1.p = 1;
                            if (mutableInteractionSource.a(dragInteraction$Stop, dragGestureNode$processDragStop$1) == coroutineSingletons) {
                                return coroutineSingletons;
                            }
                        }
                    }
                    dragGestureNode.l1(dragStopped);
                    return Unit.a;
                }
                dragGestureNode.E = null;
                dragGestureNode.l1(dragStopped);
                return Unit.a;
            }
        }
        dragGestureNode$processDragStop$1 = new DragGestureNode$processDragStop$1(dragGestureNode, continuationImpl);
        Object obj2 = dragGestureNode$processDragStop$1.n;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = dragGestureNode$processDragStop$1.p;
        if (i == 0) {
        }
        dragGestureNode.E = null;
        dragGestureNode.l1(dragStopped);
        return Unit.a;
    }

    /* JADX WARN: Type inference failed for: r9v4, types: [java.lang.Object, androidx.compose.foundation.gestures.DragDetectionState$AwaitTouchSlop] */
    public static void i1(DragGestureNode dragGestureNode, PointerInputChange pointerInputChange, long j, long j2, int i) {
        if ((i & 4) != 0) {
            j2 = 0;
        }
        DragDetectionState.AwaitTouchSlop awaitTouchSlop = dragGestureNode.M;
        DragDetectionState.AwaitTouchSlop awaitTouchSlop2 = awaitTouchSlop;
        if (awaitTouchSlop == null) {
            ?? obj = new Object();
            obj.a = null;
            obj.b = Long.MAX_VALUE;
            obj.c = false;
            dragGestureNode.M = obj;
            awaitTouchSlop2 = obj;
        }
        awaitTouchSlop2.a = pointerInputChange;
        awaitTouchSlop2.b = j;
        TouchSlopDetector touchSlopDetector = dragGestureNode.Q;
        Orientation orientation = dragGestureNode.z;
        if (touchSlopDetector == null) {
            dragGestureNode.Q = new TouchSlopDetector(orientation);
        } else {
            touchSlopDetector.a = orientation;
            touchSlopDetector.b = j2;
        }
        awaitTouchSlop2.c = false;
        dragGestureNode.O = awaitTouchSlop2;
    }

    /* JADX WARN: Removed duplicated region for block: B:128:0x01f8  */
    /* JADX WARN: Type inference failed for: r1v44, types: [androidx.compose.foundation.gestures.DragDetectionState$Dragging, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v44, types: [androidx.compose.foundation.gestures.DragDetectionState$Dragging, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v14, types: [kotlin.jvm.internal.Ref$BooleanRef, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v19, types: [java.lang.Object, androidx.compose.foundation.gestures.DragDetectionState$AwaitDown] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void K(PointerEvent pointerEvent, PointerEventPass pointerEventPass, long j) {
        Object obj;
        Object obj2;
        boolean z;
        Object obj3;
        DragDetectionState.AwaitTouchSlop awaitTouchSlop;
        boolean z2;
        DragDetectionState.Dragging dragging;
        Object obj4;
        DragDetectionState.AwaitDown.AwaitTouchSlop awaitTouchSlop2;
        this.G = true;
        if (this.B) {
            if (this.J == null) {
                DelegatableNode a = GestureNodeKt.a(this);
                Y0(a);
                this.J = a;
            }
            int i = 0;
            if (this.O == null) {
                DragDetectionState.AwaitDown awaitDown = this.H;
                DragDetectionState.AwaitDown awaitDown2 = awaitDown;
                if (awaitDown == null) {
                    DragDetectionState.AwaitDown.AwaitTouchSlop awaitTouchSlop3 = DragDetectionState.AwaitDown.AwaitTouchSlop.l;
                    ?? obj5 = new Object();
                    obj5.a = awaitTouchSlop3;
                    obj5.b = false;
                    obj5.c = false;
                    this.H = obj5;
                    awaitDown2 = obj5;
                }
                this.O = awaitDown2;
            }
            DragDetectionState dragDetectionState = this.O;
            if (dragDetectionState != null) {
                if (dragDetectionState instanceof DragDetectionState.AwaitDown) {
                    DragDetectionState.AwaitDown awaitDown3 = (DragDetectionState.AwaitDown) dragDetectionState;
                    if (!pointerEvent.a.isEmpty() && TapGestureDetectorKt.f(pointerEvent, false)) {
                        PointerInputChange pointerInputChange = (PointerInputChange) CollectionsKt.s(pointerEvent.a);
                        if (WhenMappings.a[awaitDown3.a.ordinal()] == 1) {
                            if (!q1()) {
                                awaitTouchSlop2 = DragDetectionState.AwaitDown.AwaitTouchSlop.j;
                            } else {
                                awaitTouchSlop2 = DragDetectionState.AwaitDown.AwaitTouchSlop.k;
                            }
                        } else {
                            awaitTouchSlop2 = awaitDown3.a;
                        }
                        awaitDown3.a = awaitTouchSlop2;
                        if (pointerEventPass == PointerEventPass.j) {
                            if (awaitTouchSlop2 == DragDetectionState.AwaitDown.AwaitTouchSlop.k) {
                                pointerInputChange.a();
                                awaitDown3.b = true;
                            }
                            awaitDown3.c = true;
                        }
                        if (pointerEventPass == PointerEventPass.k) {
                            if (awaitTouchSlop2 == DragDetectionState.AwaitDown.AwaitTouchSlop.j) {
                                i1(this, pointerInputChange, pointerInputChange.a, 0L, 12);
                                return;
                            }
                            if (awaitDown3.b) {
                                p1(pointerInputChange, pointerInputChange, 0L);
                                o1(0L, pointerInputChange);
                                long j2 = pointerInputChange.a;
                                DragDetectionState.Dragging dragging2 = this.L;
                                DragDetectionState.Dragging dragging3 = dragging2;
                                if (dragging2 == null) {
                                    ?? obj6 = new Object();
                                    obj6.a = Long.MAX_VALUE;
                                    this.L = obj6;
                                    dragging3 = obj6;
                                }
                                dragging3.a = j2;
                                this.O = dragging3;
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    return;
                }
                Object obj7 = null;
                if (dragDetectionState instanceof DragDetectionState.AwaitTouchSlop) {
                    DragDetectionState.AwaitTouchSlop awaitTouchSlop4 = (DragDetectionState.AwaitTouchSlop) dragDetectionState;
                    if (pointerEventPass != PointerEventPass.j) {
                        List list = pointerEvent.a;
                        int size = list.size();
                        int i2 = 0;
                        while (true) {
                            if (i2 < size) {
                                obj3 = list.get(i2);
                                if (PointerId.a(((PointerInputChange) obj3).a, awaitTouchSlop4.b)) {
                                    break;
                                } else {
                                    i2++;
                                }
                            } else {
                                obj3 = null;
                                break;
                            }
                        }
                        PointerInputChange pointerInputChange2 = (PointerInputChange) obj3;
                        if (pointerInputChange2 == null) {
                            int size2 = list.size();
                            int i3 = 0;
                            while (true) {
                                if (i3 < size2) {
                                    obj4 = list.get(i3);
                                    if (((PointerInputChange) obj4).d) {
                                        break;
                                    } else {
                                        i3++;
                                    }
                                } else {
                                    obj4 = null;
                                    break;
                                }
                            }
                            pointerInputChange2 = (PointerInputChange) obj4;
                            if (pointerInputChange2 == null) {
                                g1();
                                return;
                            }
                            awaitTouchSlop4.b = pointerInputChange2.a;
                        }
                        if (pointerEventPass == PointerEventPass.k) {
                            if (!pointerInputChange2.c()) {
                                if (PointerEventKt.d(pointerInputChange2)) {
                                    int size3 = list.size();
                                    int i4 = 0;
                                    while (true) {
                                        if (i4 >= size3) {
                                            break;
                                        }
                                        Object obj8 = list.get(i4);
                                        if (((PointerInputChange) obj8).d) {
                                            obj7 = obj8;
                                            break;
                                        }
                                        i4++;
                                    }
                                    PointerInputChange pointerInputChange3 = (PointerInputChange) obj7;
                                    if (pointerInputChange3 == null) {
                                        g1();
                                    } else {
                                        awaitTouchSlop4.b = pointerInputChange3.a;
                                    }
                                } else {
                                    float g = DragGestureDetectorKt.g((ViewConfiguration) CompositionLocalConsumerModifierNodeKt.a(this, CompositionLocalsKt.t), pointerInputChange2.i);
                                    TouchSlopDetector touchSlopDetector = this.Q;
                                    if (touchSlopDetector != null) {
                                        long a2 = TouchSlopDetector.a(touchSlopDetector, PointerEventKt.f(pointerInputChange2, true), g);
                                        if ((9223372034707292159L & a2) != 9205357640488583168L) {
                                            awaitTouchSlop = awaitTouchSlop4;
                                            this.I = Offset.f(this.I, PointerEventKt.f(pointerInputChange2, false));
                                            float atan2 = ((float) Math.atan2(Math.abs(Float.intBitsToFloat((int) (this.I & 4294967295L))), Math.abs(Float.intBitsToFloat((int) (r3 >> 32))))) * 57.29578f;
                                            Orientation orientation = this.z;
                                            if (orientation != null) {
                                                Function3 function3 = DraggableKt.a;
                                                if (orientation != Orientation.k ? atan2 <= 30.0f || atan2 > 90.0f : atan2 > 30.0f) {
                                                    z2 = false;
                                                    ?? obj9 = new Object();
                                                    a8 a8Var = new a8(atan2, obj9, i);
                                                    Function3 function32 = DraggableKt.a;
                                                    GestureNodeKt.b(this, new defpackage.c(18, a8Var));
                                                    if (z2 && obj9.j) {
                                                        awaitTouchSlop.c = true;
                                                    } else {
                                                        pointerInputChange2.a();
                                                        PointerInputChange pointerInputChange4 = awaitTouchSlop.a;
                                                        pointerInputChange4.getClass();
                                                        p1(pointerInputChange4, pointerInputChange2, a2);
                                                        o1(a2, pointerInputChange2);
                                                        long j3 = pointerInputChange2.a;
                                                        dragging = this.L;
                                                        DragDetectionState.Dragging dragging4 = dragging;
                                                        if (dragging == null) {
                                                            ?? obj10 = new Object();
                                                            obj10.a = Long.MAX_VALUE;
                                                            this.L = obj10;
                                                            dragging4 = obj10;
                                                        }
                                                        dragging4.a = j3;
                                                        this.O = dragging4;
                                                    }
                                                }
                                            }
                                            z2 = true;
                                            ?? obj92 = new Object();
                                            a8 a8Var2 = new a8(atan2, obj92, i);
                                            Function3 function322 = DraggableKt.a;
                                            GestureNodeKt.b(this, new defpackage.c(18, a8Var2));
                                            if (z2) {
                                            }
                                            pointerInputChange2.a();
                                            PointerInputChange pointerInputChange42 = awaitTouchSlop.a;
                                            pointerInputChange42.getClass();
                                            p1(pointerInputChange42, pointerInputChange2, a2);
                                            o1(a2, pointerInputChange2);
                                            long j32 = pointerInputChange2.a;
                                            dragging = this.L;
                                            DragDetectionState.Dragging dragging42 = dragging;
                                            if (dragging == null) {
                                            }
                                            dragging42.a = j32;
                                            this.O = dragging42;
                                        } else {
                                            awaitTouchSlop = awaitTouchSlop4;
                                            awaitTouchSlop.c = true;
                                            this.I = Offset.f(this.I, PointerEventKt.f(pointerInputChange2, true));
                                        }
                                    } else {
                                        u2.g("Touch slop detector not initialized.");
                                        return;
                                    }
                                }
                            } else {
                                awaitTouchSlop = awaitTouchSlop4;
                                PointerInputChange pointerInputChange5 = awaitTouchSlop.a;
                                if (pointerInputChange5 != null) {
                                    long j4 = awaitTouchSlop.b;
                                    TouchSlopDetector touchSlopDetector2 = this.Q;
                                    if (touchSlopDetector2 != null) {
                                        h1(pointerInputChange5, j4, touchSlopDetector2);
                                    } else {
                                        u2.g("AwaitTouchSlop.touchSlopDetector was not initialized");
                                        return;
                                    }
                                } else {
                                    u2.g("AwaitTouchSlop.initialDown was not initialized");
                                    return;
                                }
                            }
                            if (pointerEventPass != PointerEventPass.l && awaitTouchSlop.c) {
                                if (pointerInputChange2.c()) {
                                    PointerInputChange pointerInputChange6 = awaitTouchSlop.a;
                                    if (pointerInputChange6 != null) {
                                        long j5 = awaitTouchSlop.b;
                                        TouchSlopDetector touchSlopDetector3 = this.Q;
                                        if (touchSlopDetector3 != null) {
                                            h1(pointerInputChange6, j5, touchSlopDetector3);
                                            return;
                                        } else {
                                            u2.g("AwaitTouchSlop.touchSlopDetector was not initialized");
                                            return;
                                        }
                                    }
                                    u2.g("AwaitTouchSlop.initialDown was not initialized");
                                    return;
                                }
                                awaitTouchSlop.c = false;
                                return;
                            }
                            return;
                        }
                        awaitTouchSlop = awaitTouchSlop4;
                        if (pointerEventPass != PointerEventPass.l) {
                            return;
                        } else {
                            return;
                        }
                    }
                    return;
                }
                if (dragDetectionState instanceof DragDetectionState.AwaitGesturePickup) {
                    DragDetectionState.AwaitGesturePickup awaitGesturePickup = (DragDetectionState.AwaitGesturePickup) dragDetectionState;
                    if (pointerEventPass == PointerEventPass.l) {
                        List list2 = pointerEvent.a;
                        int size4 = list2.size();
                        int i5 = 0;
                        while (true) {
                            if (i5 < size4) {
                                if (((PointerInputChange) list2.get(i5)).c()) {
                                    z = false;
                                    break;
                                }
                                i5++;
                            } else {
                                z = true;
                                break;
                            }
                        }
                        int size5 = list2.size();
                        while (true) {
                            if (i >= size5) {
                                break;
                            }
                            if (((PointerInputChange) list2.get(i)).d) {
                                if (!list2.isEmpty()) {
                                    if (z) {
                                        long j6 = ((PointerInputChange) CollectionsKt.s(list2)).c;
                                        PointerInputChange pointerInputChange7 = awaitGesturePickup.a;
                                        pointerInputChange7.getClass();
                                        long e = Offset.e(j6, pointerInputChange7.c);
                                        PointerInputChange pointerInputChange8 = awaitGesturePickup.a;
                                        if (pointerInputChange8 != null) {
                                            i1(this, pointerInputChange8, awaitGesturePickup.b, e, 8);
                                            return;
                                        } else {
                                            u2.g("AwaitGesturePickup.initialDown was not initialized.");
                                            return;
                                        }
                                    }
                                    return;
                                }
                            } else {
                                i++;
                            }
                        }
                        g1();
                        return;
                    }
                    return;
                }
                if (dragDetectionState instanceof DragDetectionState.Dragging) {
                    DragDetectionState.Dragging dragging5 = (DragDetectionState.Dragging) dragDetectionState;
                    if (pointerEventPass == PointerEventPass.k) {
                        long j7 = dragging5.a;
                        List list3 = pointerEvent.a;
                        int size6 = list3.size();
                        int i6 = 0;
                        while (true) {
                            if (i6 < size6) {
                                obj = list3.get(i6);
                                if (PointerId.a(((PointerInputChange) obj).a, j7)) {
                                    break;
                                } else {
                                    i6++;
                                }
                            } else {
                                obj = null;
                                break;
                            }
                        }
                        PointerInputChange pointerInputChange9 = (PointerInputChange) obj;
                        if (pointerInputChange9 != null) {
                            boolean d = PointerEventKt.d(pointerInputChange9);
                            DragEvent.DragCancelled dragCancelled = DragEvent.DragCancelled.a;
                            if (d) {
                                List list4 = pointerEvent.a;
                                int size7 = list4.size();
                                int i7 = 0;
                                while (true) {
                                    if (i7 < size7) {
                                        obj2 = list4.get(i7);
                                        if (((PointerInputChange) obj2).d) {
                                            break;
                                        } else {
                                            i7++;
                                        }
                                    } else {
                                        obj2 = null;
                                        break;
                                    }
                                }
                                PointerInputChange pointerInputChange10 = (PointerInputChange) obj2;
                                if (pointerInputChange10 == null) {
                                    if (!pointerInputChange9.c() && PointerEventKt.d(pointerInputChange9)) {
                                        float e2 = ((ViewConfiguration) CompositionLocalConsumerModifierNodeKt.a(this, CompositionLocalsKt.t)).e();
                                        VelocityTrackerKt.a(n1(), pointerInputChange9);
                                        long a3 = n1().a(VelocityKt.a(e2, e2));
                                        Lsq2VelocityTracker lsq2VelocityTracker = n1().a;
                                        VelocityTracker1D velocityTracker1D = lsq2VelocityTracker.a;
                                        ArraysKt.m(0, r6.length, null, velocityTracker1D.d);
                                        velocityTracker1D.e = 0;
                                        VelocityTracker1D velocityTracker1D2 = lsq2VelocityTracker.b;
                                        ArraysKt.m(0, r6.length, null, velocityTracker1D2.d);
                                        velocityTracker1D2.e = 0;
                                        lsq2VelocityTracker.c = 0L;
                                        m1().j(new DragEvent.DragStopped(DraggableKt.b(a3), false));
                                        this.G = false;
                                    } else {
                                        m1().j(dragCancelled);
                                    }
                                    g1();
                                    return;
                                }
                                dragging5.a = pointerInputChange10.a;
                                return;
                            }
                            if (pointerInputChange9.c()) {
                                m1().j(dragCancelled);
                                return;
                            } else {
                                if (Offset.d(PointerEventKt.f(pointerInputChange9, true)) != 0.0f) {
                                    o1(PointerEventKt.f(pointerInputChange9, false), pointerInputChange9);
                                    pointerInputChange9.a();
                                    return;
                                }
                                return;
                            }
                        }
                        return;
                    }
                    return;
                }
                k8.e();
                return;
            }
            u2.g("currentDragState should not be null");
        }
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public final void L() {
        if (this.G) {
            g1();
            if (this.F) {
                m1().j(DragEvent.DragCancelled.a);
            }
            this.P = null;
        }
        this.G = false;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void R0() {
        this.F = false;
        e1();
        DelegatableNode delegatableNode = this.K;
        if (delegatableNode != null) {
            Z0(delegatableNode);
        }
        DelegatableNode delegatableNode2 = this.J;
        if (delegatableNode2 != null) {
            Z0(delegatableNode2);
        }
        this.K = null;
        this.J = null;
    }

    @Override // androidx.compose.foundation.GestureConnection
    public final String T() {
        if (this.B) {
            DragDetectionState dragDetectionState = this.O;
            if (dragDetectionState instanceof DragDetectionState.AwaitDown) {
                if (((DragDetectionState.AwaitDown) dragDetectionState).c) {
                    return "waiting";
                }
                return "idle";
            }
            if ((dragDetectionState instanceof DragDetectionState.AwaitTouchSlop) || (dragDetectionState instanceof DragDetectionState.AwaitGesturePickup)) {
                return "waiting";
            }
            if (dragDetectionState instanceof DragDetectionState.Dragging) {
                return "recognized";
            }
            return "idle";
        }
        return "idle";
    }

    @Override // androidx.compose.foundation.gestures.DraggableGestureConnection
    public final Orientation b0() {
        return this.z;
    }

    public final void e1() {
        DragInteraction$Start dragInteraction$Start = this.E;
        if (dragInteraction$Start != null) {
            MutableInteractionSource mutableInteractionSource = this.C;
            if (mutableInteractionSource != null) {
                mutableInteractionSource.b(new DragInteraction$Cancel(dragInteraction$Start));
            }
            this.E = null;
        }
    }

    public abstract Object f1(Function2 function2, Continuation continuation);

    /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Object, androidx.compose.foundation.gestures.DragDetectionState$AwaitDown] */
    public final void g1() {
        this.I = 0L;
        DragDetectionState.AwaitDown awaitDown = this.H;
        DragDetectionState.AwaitDown awaitDown2 = awaitDown;
        if (awaitDown == null) {
            DragDetectionState.AwaitDown.AwaitTouchSlop awaitTouchSlop = DragDetectionState.AwaitDown.AwaitTouchSlop.l;
            ?? obj = new Object();
            obj.a = awaitTouchSlop;
            obj.b = false;
            obj.c = false;
            this.H = obj;
            awaitDown2 = obj;
        }
        awaitDown2.a = DragDetectionState.AwaitDown.AwaitTouchSlop.l;
        awaitDown2.b = false;
        awaitDown2.c = false;
        this.O = awaitDown2;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, androidx.compose.foundation.gestures.DragDetectionState$AwaitGesturePickup] */
    public final void h1(PointerInputChange pointerInputChange, long j, TouchSlopDetector touchSlopDetector) {
        DragDetectionState.AwaitGesturePickup awaitGesturePickup = this.N;
        DragDetectionState.AwaitGesturePickup awaitGesturePickup2 = awaitGesturePickup;
        if (awaitGesturePickup == null) {
            ?? obj = new Object();
            obj.a = null;
            obj.b = Long.MAX_VALUE;
            this.N = obj;
            awaitGesturePickup2 = obj;
        }
        awaitGesturePickup2.a = pointerInputChange;
        awaitGesturePickup2.b = j;
        touchSlopDetector.b = 0L;
        this.O = awaitGesturePickup2;
    }

    public final void j1(DragEvent dragEvent) {
        if ((dragEvent instanceof DragEvent.DragStarted) && !this.F) {
            this.F = true;
            r1();
        }
        m1().j(dragEvent);
    }

    @Override // androidx.compose.ui.input.indirect.IndirectPointerInputModifierNode
    public final void k0() {
        IndirectPointerInputDragCycleDetector indirectPointerInputDragCycleDetector = this.R;
        if (indirectPointerInputDragCycleDetector != null) {
            indirectPointerInputDragCycleDetector.a();
            DragGestureNode dragGestureNode = indirectPointerInputDragCycleDetector.j;
            if (dragGestureNode.F) {
                dragGestureNode.j1(DragEvent.DragCancelled.a);
            }
            indirectPointerInputDragCycleDetector.p = null;
            OffsetSmoother offsetSmoother = indirectPointerInputDragCycleDetector.s;
            offsetSmoother.a = 0;
            offsetSmoother.b.b = 0;
        }
    }

    public abstract void k1(long j);

    public abstract void l1(DragEvent.DragStopped dragStopped);

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v14, types: [java.lang.Object, androidx.compose.foundation.gestures.IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging] */
    /* JADX WARN: Type inference failed for: r3v15, types: [java.lang.Object, androidx.compose.foundation.gestures.IndirectPointerInputDragCycleDetector$DragDetectionState$Dragging] */
    /* JADX WARN: Type inference failed for: r4v22, types: [java.lang.Object, androidx.compose.foundation.gestures.IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown] */
    /* JADX WARN: Type inference failed for: r6v34, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r9v14 */
    /* JADX WARN: Type inference failed for: r9v15 */
    /* JADX WARN: Type inference failed for: r9v16, types: [java.lang.Object] */
    @Override // androidx.compose.ui.input.indirect.IndirectPointerInputModifierNode
    public final void m(AndroidIndirectPointerEvent androidIndirectPointerEvent, PointerEventPass pointerEventPass) {
        Object obj;
        float f;
        Object obj2;
        float intBitsToFloat;
        long floatToRawIntBits;
        int floatToRawIntBits2;
        Object obj3;
        IndirectPointerInputChange indirectPointerInputChange;
        IndirectPointerInputChange indirectPointerInputChange2;
        IndirectPointerInputDragCycleDetector.DragDetectionState.AwaitDown.AwaitTouchSlop awaitTouchSlop;
        int i = androidIndirectPointerEvent.b;
        ArrayList arrayList = androidIndirectPointerEvent.a;
        if (this.B) {
            if (this.R == null) {
                this.R = new IndirectPointerInputDragCycleDetector(this);
            }
            if (this.K == null) {
                IndirectPointerInputDragCycleDetector indirectPointerInputDragCycleDetector = this.R;
                indirectPointerInputDragCycleDetector.getClass();
                DelegatableNode a = GestureNodeKt.a(indirectPointerInputDragCycleDetector);
                Y0(a);
                this.K = a;
            }
            IndirectPointerInputDragCycleDetector indirectPointerInputDragCycleDetector2 = this.R;
            if (indirectPointerInputDragCycleDetector2 != null) {
                DragGestureNode dragGestureNode = indirectPointerInputDragCycleDetector2.j;
                int i2 = 0;
                if (indirectPointerInputDragCycleDetector2.o == null) {
                    IndirectPointerInputDragCycleDetector.DragDetectionState.AwaitDown awaitDown = indirectPointerInputDragCycleDetector2.k;
                    IndirectPointerInputDragCycleDetector.DragDetectionState.AwaitDown awaitDown2 = awaitDown;
                    if (awaitDown == null) {
                        IndirectPointerInputDragCycleDetector.DragDetectionState.AwaitDown.AwaitTouchSlop awaitTouchSlop2 = IndirectPointerInputDragCycleDetector.DragDetectionState.AwaitDown.AwaitTouchSlop.l;
                        ?? obj4 = new Object();
                        obj4.a = awaitTouchSlop2;
                        obj4.b = false;
                        obj4.c = false;
                        indirectPointerInputDragCycleDetector2.k = obj4;
                        awaitDown2 = obj4;
                    }
                    indirectPointerInputDragCycleDetector2.o = awaitDown2;
                }
                IndirectPointerInputDragCycleDetector.DragDetectionState dragDetectionState = indirectPointerInputDragCycleDetector2.o;
                if (dragDetectionState != null) {
                    boolean z = true;
                    if (dragDetectionState instanceof IndirectPointerInputDragCycleDetector.DragDetectionState.AwaitDown) {
                        IndirectPointerInputDragCycleDetector.DragDetectionState.AwaitDown awaitDown3 = (IndirectPointerInputDragCycleDetector.DragDetectionState.AwaitDown) dragDetectionState;
                        if (!arrayList.isEmpty()) {
                            int size = arrayList.size();
                            while (i2 < size) {
                                if (IndirectPointerInputDragCycleDetectorKt.b((IndirectPointerInputChange) arrayList.get(i2))) {
                                    i2++;
                                } else {
                                    return;
                                }
                            }
                            IndirectPointerInputChange indirectPointerInputChange3 = (IndirectPointerInputChange) CollectionsKt.s(arrayList);
                            if (IndirectPointerInputDragCycleDetector.WhenMappings.a[awaitDown3.a.ordinal()] == 1) {
                                if (!dragGestureNode.q1()) {
                                    awaitTouchSlop = IndirectPointerInputDragCycleDetector.DragDetectionState.AwaitDown.AwaitTouchSlop.j;
                                } else {
                                    awaitTouchSlop = IndirectPointerInputDragCycleDetector.DragDetectionState.AwaitDown.AwaitTouchSlop.k;
                                }
                            } else {
                                awaitTouchSlop = awaitDown3.a;
                            }
                            awaitDown3.a = awaitTouchSlop;
                            if (pointerEventPass == PointerEventPass.j) {
                                if (awaitTouchSlop == IndirectPointerInputDragCycleDetector.DragDetectionState.AwaitDown.AwaitTouchSlop.k) {
                                    indirectPointerInputChange3.i = true;
                                    awaitDown3.b = true;
                                }
                                awaitDown3.c = true;
                            }
                            if (pointerEventPass == PointerEventPass.k) {
                                if (awaitTouchSlop == IndirectPointerInputDragCycleDetector.DragDetectionState.AwaitDown.AwaitTouchSlop.j) {
                                    IndirectPointerInputDragCycleDetector.c(indirectPointerInputDragCycleDetector2, indirectPointerInputChange3, indirectPointerInputChange3.a, 0L, 12);
                                    return;
                                }
                                if (awaitDown3.b) {
                                    indirectPointerInputDragCycleDetector2.f(indirectPointerInputChange3, indirectPointerInputChange3, new IndirectPointerEventPrimaryDirectionalMotionAxis(i), 0L);
                                    indirectPointerInputDragCycleDetector2.e(indirectPointerInputChange3, new IndirectPointerEventPrimaryDirectionalMotionAxis(i), 0L);
                                    long j = indirectPointerInputChange3.a;
                                    IndirectPointerInputDragCycleDetector.DragDetectionState.Dragging dragging = indirectPointerInputDragCycleDetector2.l;
                                    IndirectPointerInputDragCycleDetector.DragDetectionState.Dragging dragging2 = dragging;
                                    if (dragging == null) {
                                        ?? obj5 = new Object();
                                        obj5.a = Long.MAX_VALUE;
                                        indirectPointerInputDragCycleDetector2.l = obj5;
                                        dragging2 = obj5;
                                    }
                                    dragging2.a = j;
                                    indirectPointerInputDragCycleDetector2.o = dragging2;
                                    return;
                                }
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    if (dragDetectionState instanceof IndirectPointerInputDragCycleDetector.DragDetectionState.AwaitTouchSlop) {
                        IndirectPointerInputDragCycleDetector.DragDetectionState.AwaitTouchSlop awaitTouchSlop3 = (IndirectPointerInputDragCycleDetector.DragDetectionState.AwaitTouchSlop) dragDetectionState;
                        if (pointerEventPass != PointerEventPass.j) {
                            int size2 = arrayList.size();
                            int i3 = 0;
                            while (true) {
                                if (i3 < size2) {
                                    obj3 = arrayList.get(i3);
                                    int i4 = i3;
                                    if (PointerId.a(((IndirectPointerInputChange) obj3).a, awaitTouchSlop3.b)) {
                                        break;
                                    } else {
                                        i3 = i4 + 1;
                                    }
                                } else {
                                    obj3 = null;
                                    break;
                                }
                            }
                            IndirectPointerInputChange indirectPointerInputChange4 = (IndirectPointerInputChange) obj3;
                            if (indirectPointerInputChange4 == null) {
                                int size3 = arrayList.size();
                                int i5 = 0;
                                while (true) {
                                    if (i5 < size3) {
                                        indirectPointerInputChange2 = arrayList.get(i5);
                                        if (((IndirectPointerInputChange) indirectPointerInputChange2).d) {
                                            break;
                                        } else {
                                            i5++;
                                        }
                                    } else {
                                        indirectPointerInputChange2 = 0;
                                        break;
                                    }
                                }
                                indirectPointerInputChange4 = indirectPointerInputChange2;
                                if (indirectPointerInputChange4 == null) {
                                    indirectPointerInputDragCycleDetector2.a();
                                    return;
                                }
                                awaitTouchSlop3.b = indirectPointerInputChange4.a;
                            }
                            if (pointerEventPass == PointerEventPass.k) {
                                if (!indirectPointerInputChange4.i) {
                                    if (IndirectPointerInputDragCycleDetectorKt.a(indirectPointerInputChange4)) {
                                        int size4 = arrayList.size();
                                        int i6 = 0;
                                        while (true) {
                                            if (i6 < size4) {
                                                ?? r6 = arrayList.get(i6);
                                                if (((IndirectPointerInputChange) r6).d) {
                                                    indirectPointerInputChange = r6;
                                                    break;
                                                }
                                                i6++;
                                            } else {
                                                indirectPointerInputChange = null;
                                                break;
                                            }
                                        }
                                        IndirectPointerInputChange indirectPointerInputChange5 = indirectPointerInputChange;
                                        if (indirectPointerInputChange5 == null) {
                                            indirectPointerInputDragCycleDetector2.a();
                                        } else {
                                            awaitTouchSlop3.b = indirectPointerInputChange5.a;
                                        }
                                    } else {
                                        ViewConfiguration viewConfiguration = (ViewConfiguration) CompositionLocalConsumerModifierNodeKt.a(dragGestureNode, CompositionLocalsKt.t);
                                        float f2 = DragGestureDetectorKt.a;
                                        float f3 = viewConfiguration.f();
                                        TouchSlopDetector touchSlopDetector = indirectPointerInputDragCycleDetector2.q;
                                        if (touchSlopDetector != null) {
                                            long a2 = TouchSlopDetector.a(touchSlopDetector, IndirectPointerInputDragCycleDetectorKt.c(indirectPointerInputChange4, dragGestureNode.z, new IndirectPointerEventPrimaryDirectionalMotionAxis(i), true), f3);
                                            if ((9223372034707292159L & a2) != 9205357640488583168L) {
                                                indirectPointerInputChange4.i = true;
                                                IndirectPointerInputChange indirectPointerInputChange6 = awaitTouchSlop3.a;
                                                indirectPointerInputChange6.getClass();
                                                IndirectPointerInputChange indirectPointerInputChange7 = indirectPointerInputChange4;
                                                indirectPointerInputDragCycleDetector2.f(indirectPointerInputChange6, indirectPointerInputChange7, new IndirectPointerEventPrimaryDirectionalMotionAxis(i), a2);
                                                indirectPointerInputChange4 = indirectPointerInputChange7;
                                                indirectPointerInputDragCycleDetector2.e(indirectPointerInputChange4, new IndirectPointerEventPrimaryDirectionalMotionAxis(i), a2);
                                                long j2 = indirectPointerInputChange4.a;
                                                IndirectPointerInputDragCycleDetector.DragDetectionState.Dragging dragging3 = indirectPointerInputDragCycleDetector2.l;
                                                IndirectPointerInputDragCycleDetector.DragDetectionState.Dragging dragging4 = dragging3;
                                                if (dragging3 == null) {
                                                    ?? obj6 = new Object();
                                                    obj6.a = Long.MAX_VALUE;
                                                    indirectPointerInputDragCycleDetector2.l = obj6;
                                                    dragging4 = obj6;
                                                }
                                                dragging4.a = j2;
                                                indirectPointerInputDragCycleDetector2.o = dragging4;
                                            } else {
                                                awaitTouchSlop3.c = true;
                                            }
                                        } else {
                                            u2.g("Touch slop detector not initialized.");
                                            return;
                                        }
                                    }
                                } else {
                                    IndirectPointerInputChange indirectPointerInputChange8 = awaitTouchSlop3.a;
                                    if (indirectPointerInputChange8 != null) {
                                        long j3 = awaitTouchSlop3.b;
                                        TouchSlopDetector touchSlopDetector2 = indirectPointerInputDragCycleDetector2.q;
                                        if (touchSlopDetector2 != null) {
                                            indirectPointerInputDragCycleDetector2.b(indirectPointerInputChange8, j3, touchSlopDetector2);
                                        } else {
                                            u2.g("AwaitTouchSlop.touchSlopDetector was not initialized");
                                            return;
                                        }
                                    } else {
                                        u2.g("AwaitTouchSlop.initialDown was not initialized");
                                        return;
                                    }
                                }
                            }
                            if (pointerEventPass == PointerEventPass.l && awaitTouchSlop3.c) {
                                if (indirectPointerInputChange4.i) {
                                    IndirectPointerInputChange indirectPointerInputChange9 = awaitTouchSlop3.a;
                                    if (indirectPointerInputChange9 != null) {
                                        long j4 = awaitTouchSlop3.b;
                                        TouchSlopDetector touchSlopDetector3 = indirectPointerInputDragCycleDetector2.q;
                                        if (touchSlopDetector3 != null) {
                                            indirectPointerInputDragCycleDetector2.b(indirectPointerInputChange9, j4, touchSlopDetector3);
                                            return;
                                        } else {
                                            u2.g("AwaitTouchSlop.touchSlopDetector was not initialized");
                                            return;
                                        }
                                    }
                                    u2.g("AwaitTouchSlop.initialDown was not initialized");
                                    return;
                                }
                                awaitTouchSlop3.c = false;
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    if (dragDetectionState instanceof IndirectPointerInputDragCycleDetector.DragDetectionState.AwaitGesturePickup) {
                        IndirectPointerInputDragCycleDetector.DragDetectionState.AwaitGesturePickup awaitGesturePickup = (IndirectPointerInputDragCycleDetector.DragDetectionState.AwaitGesturePickup) dragDetectionState;
                        if (pointerEventPass == PointerEventPass.l) {
                            int size5 = arrayList.size();
                            int i7 = 0;
                            while (true) {
                                if (i7 >= size5) {
                                    break;
                                }
                                if (((IndirectPointerInputChange) arrayList.get(i7)).i) {
                                    z = false;
                                    break;
                                }
                                i7++;
                            }
                            int size6 = arrayList.size();
                            while (true) {
                                if (i2 >= size6) {
                                    break;
                                }
                                if (((IndirectPointerInputChange) arrayList.get(i2)).d) {
                                    if (!arrayList.isEmpty()) {
                                        if (z) {
                                            long d = IndirectPointerInputDragCycleDetectorKt.d((IndirectPointerInputChange) CollectionsKt.s(arrayList), dragGestureNode.z, new IndirectPointerEventPrimaryDirectionalMotionAxis(i));
                                            IndirectPointerInputChange indirectPointerInputChange10 = awaitGesturePickup.a;
                                            indirectPointerInputChange10.getClass();
                                            long e = Offset.e(d, IndirectPointerInputDragCycleDetectorKt.d(indirectPointerInputChange10, dragGestureNode.z, new IndirectPointerEventPrimaryDirectionalMotionAxis(i)));
                                            IndirectPointerInputChange indirectPointerInputChange11 = awaitGesturePickup.a;
                                            if (indirectPointerInputChange11 != null) {
                                                IndirectPointerInputDragCycleDetector.c(indirectPointerInputDragCycleDetector2, indirectPointerInputChange11, awaitGesturePickup.b, e, 8);
                                                return;
                                            } else {
                                                u2.g("AwaitGesturePickup.initialDown was not initialized.");
                                                return;
                                            }
                                        }
                                        return;
                                    }
                                } else {
                                    i2++;
                                }
                            }
                            indirectPointerInputDragCycleDetector2.a();
                            return;
                        }
                        return;
                    }
                    if (dragDetectionState instanceof IndirectPointerInputDragCycleDetector.DragDetectionState.Dragging) {
                        IndirectPointerInputDragCycleDetector.DragDetectionState.Dragging dragging5 = (IndirectPointerInputDragCycleDetector.DragDetectionState.Dragging) dragDetectionState;
                        if (pointerEventPass == PointerEventPass.k) {
                            long j5 = dragging5.a;
                            int size7 = arrayList.size();
                            int i8 = 0;
                            while (true) {
                                if (i8 < size7) {
                                    obj = arrayList.get(i8);
                                    if (PointerId.a(((IndirectPointerInputChange) obj).a, j5)) {
                                        break;
                                    } else {
                                        i8++;
                                    }
                                } else {
                                    obj = null;
                                    break;
                                }
                            }
                            IndirectPointerInputChange indirectPointerInputChange12 = (IndirectPointerInputChange) obj;
                            if (indirectPointerInputChange12 != null) {
                                long j6 = indirectPointerInputChange12.c;
                                boolean a3 = IndirectPointerInputDragCycleDetectorKt.a(indirectPointerInputChange12);
                                DragEvent.DragCancelled dragCancelled = DragEvent.DragCancelled.a;
                                if (a3) {
                                    int size8 = arrayList.size();
                                    int i9 = 0;
                                    while (true) {
                                        if (i9 < size8) {
                                            obj2 = arrayList.get(i9);
                                            f = 0.0f;
                                            if (((IndirectPointerInputChange) obj2).d) {
                                                break;
                                            } else {
                                                i9++;
                                            }
                                        } else {
                                            f = 0.0f;
                                            obj2 = null;
                                            break;
                                        }
                                    }
                                    IndirectPointerInputChange indirectPointerInputChange13 = (IndirectPointerInputChange) obj2;
                                    if (indirectPointerInputChange13 == null) {
                                        if (!indirectPointerInputChange12.i && IndirectPointerInputDragCycleDetectorKt.a(indirectPointerInputChange12)) {
                                            IndirectPointerEventPrimaryDirectionalMotionAxis indirectPointerEventPrimaryDirectionalMotionAxis = new IndirectPointerEventPrimaryDirectionalMotionAxis(i);
                                            VelocityTracker d2 = indirectPointerInputDragCycleDetector2.d();
                                            Orientation orientation = dragGestureNode.z;
                                            IndirectPointerInputEventSmoother indirectPointerInputEventSmoother = indirectPointerInputDragCycleDetector2.r;
                                            MutableObjectList mutableObjectList = indirectPointerInputEventSmoother.b;
                                            float intBitsToFloat2 = Float.intBitsToFloat((int) (j6 >> 32));
                                            float intBitsToFloat3 = Float.intBitsToFloat((int) (j6 & 4294967295L));
                                            if (IndirectPointerInputDragCycleDetectorKt.b(indirectPointerInputChange12)) {
                                                indirectPointerInputEventSmoother.a = 0;
                                                mutableObjectList.k();
                                            }
                                            if (!IndirectPointerInputDragCycleDetectorKt.a(indirectPointerInputChange12) && !IndirectPointerInputDragCycleDetectorKt.b(indirectPointerInputChange12)) {
                                                if (mutableObjectList.b == 3) {
                                                    int i10 = indirectPointerInputEventSmoother.a;
                                                    indirectPointerInputEventSmoother.a = i10 + 1;
                                                    mutableObjectList.p(i10, indirectPointerInputChange12);
                                                } else {
                                                    mutableObjectList.g(indirectPointerInputChange12);
                                                }
                                                if (indirectPointerInputEventSmoother.a == 3) {
                                                    indirectPointerInputEventSmoother.a = 0;
                                                }
                                                Object[] objArr = mutableObjectList.a;
                                                int i11 = mutableObjectList.b;
                                                float f4 = f;
                                                for (int i12 = 0; i12 < i11; i12++) {
                                                    f4 += Float.intBitsToFloat((int) (((IndirectPointerInputChange) objArr[i12]).c >> 32));
                                                }
                                                int i13 = mutableObjectList.b;
                                                intBitsToFloat2 = f4 / i13;
                                                Object[] objArr2 = mutableObjectList.a;
                                                float f5 = f;
                                                for (int i14 = 0; i14 < i13; i14++) {
                                                    f5 += Float.intBitsToFloat((int) (((IndirectPointerInputChange) objArr2[i14]).c & 4294967295L));
                                                }
                                                intBitsToFloat3 = f5 / mutableObjectList.b;
                                            }
                                            long floatToRawIntBits3 = (Float.floatToRawIntBits(intBitsToFloat3) & 4294967295L) | (Float.floatToRawIntBits(intBitsToFloat2) << 32);
                                            if (orientation != null) {
                                                int i15 = indirectPointerEventPrimaryDirectionalMotionAxis.a;
                                                if (i15 == 1) {
                                                    intBitsToFloat = Float.intBitsToFloat((int) (floatToRawIntBits3 >> 32));
                                                } else if (i15 == 2) {
                                                    intBitsToFloat = Float.intBitsToFloat((int) (floatToRawIntBits3 & 4294967295L));
                                                }
                                                if (orientation == Orientation.k) {
                                                    floatToRawIntBits = Float.floatToRawIntBits(intBitsToFloat);
                                                    floatToRawIntBits2 = Float.floatToRawIntBits(f);
                                                } else {
                                                    floatToRawIntBits = Float.floatToRawIntBits(f);
                                                    floatToRawIntBits2 = Float.floatToRawIntBits(intBitsToFloat);
                                                }
                                                floatToRawIntBits3 = (floatToRawIntBits2 & 4294967295L) | (floatToRawIntBits << 32);
                                            }
                                            d2.a.a(indirectPointerInputChange12.b, floatToRawIntBits3);
                                            float e2 = ((ViewConfiguration) CompositionLocalConsumerModifierNodeKt.a(dragGestureNode, CompositionLocalsKt.t)).e();
                                            long a4 = indirectPointerInputDragCycleDetector2.d().a(VelocityKt.a(e2, e2));
                                            Lsq2VelocityTracker lsq2VelocityTracker = indirectPointerInputDragCycleDetector2.d().a;
                                            VelocityTracker1D velocityTracker1D = lsq2VelocityTracker.a;
                                            ArraysKt.m(0, r6.length, null, velocityTracker1D.d);
                                            velocityTracker1D.e = 0;
                                            VelocityTracker1D velocityTracker1D2 = lsq2VelocityTracker.b;
                                            ArraysKt.m(0, r6.length, null, velocityTracker1D2.d);
                                            velocityTracker1D2.e = 0;
                                            lsq2VelocityTracker.c = 0L;
                                            dragGestureNode.j1(new DragEvent.DragStopped(DraggableKt.b(a4), true));
                                        } else {
                                            dragGestureNode.j1(dragCancelled);
                                        }
                                        indirectPointerInputDragCycleDetector2.a();
                                        return;
                                    }
                                    dragging5.a = indirectPointerInputChange13.a;
                                    return;
                                }
                                if (indirectPointerInputChange12.i) {
                                    dragGestureNode.j1(dragCancelled);
                                    return;
                                } else {
                                    if (Offset.d(IndirectPointerInputDragCycleDetectorKt.c(indirectPointerInputChange12, dragGestureNode.z, new IndirectPointerEventPrimaryDirectionalMotionAxis(i), true)) != 0.0f) {
                                        indirectPointerInputDragCycleDetector2.e(indirectPointerInputChange12, new IndirectPointerEventPrimaryDirectionalMotionAxis(i), IndirectPointerInputDragCycleDetectorKt.c(indirectPointerInputChange12, dragGestureNode.z, new IndirectPointerEventPrimaryDirectionalMotionAxis(i), false));
                                        indirectPointerInputChange12.i = true;
                                        return;
                                    }
                                    return;
                                }
                            }
                            return;
                        }
                        return;
                    }
                    k8.e();
                    return;
                }
                u2.g("currentDragState should not be null");
            }
        }
    }

    public final Channel m1() {
        BufferedChannel bufferedChannel = this.D;
        if (bufferedChannel != null) {
            return bufferedChannel;
        }
        u2.g("Events channel not initialized.");
        return null;
    }

    public final VelocityTracker n1() {
        VelocityTracker velocityTracker = this.P;
        if (velocityTracker != null) {
            return velocityTracker;
        }
        u2.g("Velocity Tracker not initialized.");
        return null;
    }

    public final void o1(long j, PointerInputChange pointerInputChange) {
        this.I = Offset.f(this.I, j);
        VelocityTrackerKt.a(n1(), pointerInputChange);
        m1().j(new DragEvent.DragDelta(j, false));
    }

    public final void p1(PointerInputChange pointerInputChange, PointerInputChange pointerInputChange2, long j) {
        if (this.P == null) {
            this.P = new VelocityTracker();
        }
        VelocityTrackerKt.a(n1(), pointerInputChange);
        long e = Offset.e(pointerInputChange2.c, j);
        if (((Boolean) this.A.b(new PointerType(pointerInputChange.i))).booleanValue()) {
            if (!this.F) {
                if (this.D == null) {
                    this.D = ChannelKt.a(Integer.MAX_VALUE, 6, null);
                }
                r1();
            }
            m1().j(new DragEvent.DragStarted(e));
        }
    }

    public abstract boolean q1();

    public final void r1() {
        this.F = true;
        if (this.D == null) {
            this.D = ChannelKt.a(Integer.MAX_VALUE, 6, null);
        }
        BuildersKt.c(M0(), null, null, new DragGestureNode$startListeningForEvents$1(this, null), 3);
    }

    public final void s1(Function1 function1, boolean z, MutableInteractionSource mutableInteractionSource, Orientation orientation, boolean z2) {
        this.A = function1;
        boolean z3 = true;
        if (this.B != z) {
            this.B = z;
            if (!z) {
                DelegatableNode delegatableNode = this.K;
                if (delegatableNode != null) {
                    Z0(delegatableNode);
                }
                DelegatableNode delegatableNode2 = this.J;
                if (delegatableNode2 != null) {
                    Z0(delegatableNode2);
                }
                this.K = null;
                this.J = null;
                e1();
                this.R = null;
            }
            z2 = true;
        }
        if (!Intrinsics.a(this.C, mutableInteractionSource)) {
            e1();
            this.C = mutableInteractionSource;
        }
        if (this.z != orientation) {
            this.z = orientation;
        } else {
            z3 = z2;
        }
        if (z3) {
            boolean z4 = this.G;
            DragEvent.DragCancelled dragCancelled = DragEvent.DragCancelled.a;
            if (z4) {
                g1();
                if (this.F) {
                    m1().j(dragCancelled);
                }
                this.P = null;
            }
            IndirectPointerInputDragCycleDetector indirectPointerInputDragCycleDetector = this.R;
            if (indirectPointerInputDragCycleDetector != null) {
                indirectPointerInputDragCycleDetector.a();
                DragGestureNode dragGestureNode = indirectPointerInputDragCycleDetector.j;
                if (dragGestureNode.F) {
                    dragGestureNode.j1(dragCancelled);
                }
                indirectPointerInputDragCycleDetector.p = null;
                OffsetSmoother offsetSmoother = indirectPointerInputDragCycleDetector.s;
                offsetSmoother.a = 0;
                offsetSmoother.b.b = 0;
            }
        }
    }
}
