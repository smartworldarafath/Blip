package androidx.compose.foundation.gestures;

import androidx.collection.MutableLongList;
import androidx.collection.MutableObjectList;
import androidx.compose.foundation.gestures.DragEvent;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.indirect.IndirectPointerEventPrimaryDirectionalMotionAxis;
import androidx.compose.ui.input.indirect.IndirectPointerInputChange;
import androidx.compose.ui.input.pointer.PointerType;
import androidx.compose.ui.input.pointer.util.VelocityTracker;
import defpackage.u2;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function3;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class IndirectPointerInputDragCycleDetector implements DraggableGestureConnection {
    public final DragGestureNode j;
    public DragDetectionState.AwaitDown k;
    public DragDetectionState.Dragging l;
    public DragDetectionState.AwaitTouchSlop m;
    public DragDetectionState.AwaitGesturePickup n;
    public DragDetectionState o;
    public VelocityTracker p;
    public TouchSlopDetector q;
    public final IndirectPointerInputEventSmoother r;
    public final OffsetSmoother s;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static abstract class DragDetectionState {

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* loaded from: classes.dex */
        public static final class AwaitDown extends DragDetectionState {
            public AwaitTouchSlop a;
            public boolean b;
            public boolean c;

            /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
            /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
            /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
            /* loaded from: classes.dex */
            public static final class AwaitTouchSlop {
                public static final AwaitTouchSlop j;
                public static final AwaitTouchSlop k;
                public static final AwaitTouchSlop l;
                public static final /* synthetic */ AwaitTouchSlop[] m;

                /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, androidx.compose.foundation.gestures.IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown$AwaitTouchSlop] */
                /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, androidx.compose.foundation.gestures.IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown$AwaitTouchSlop] */
                /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, androidx.compose.foundation.gestures.IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown$AwaitTouchSlop] */
                static {
                    ?? r0 = new Enum("Yes", 0);
                    j = r0;
                    ?? r1 = new Enum("No", 1);
                    k = r1;
                    ?? r2 = new Enum("NotInitialized", 2);
                    l = r2;
                    AwaitTouchSlop[] awaitTouchSlopArr = {r0, r1, r2};
                    m = awaitTouchSlopArr;
                    EnumEntriesKt.a(awaitTouchSlopArr);
                }

                public static AwaitTouchSlop valueOf(String str) {
                    return (AwaitTouchSlop) Enum.valueOf(AwaitTouchSlop.class, str);
                }

                public static AwaitTouchSlop[] values() {
                    return (AwaitTouchSlop[]) m.clone();
                }
            }
        }

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* loaded from: classes.dex */
        public static final class AwaitGesturePickup extends DragDetectionState {
            public IndirectPointerInputChange a;
            public long b;
        }

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* loaded from: classes.dex */
        public static final class AwaitTouchSlop extends DragDetectionState {
            public IndirectPointerInputChange a;
            public long b;
            public boolean c;
        }

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* loaded from: classes.dex */
        public static final class Dragging extends DragDetectionState {
            public long a;
        }
    }

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

    /* JADX WARN: Type inference failed for: r2v1, types: [androidx.compose.foundation.gestures.IndirectPointerInputEventSmoother, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Object, androidx.compose.foundation.gestures.OffsetSmoother] */
    public IndirectPointerInputDragCycleDetector(DragGestureNode dragGestureNode) {
        this.j = dragGestureNode;
        ?? obj = new Object();
        obj.b = new MutableObjectList();
        this.r = obj;
        ?? obj2 = new Object();
        obj2.b = new MutableLongList();
        this.s = obj2;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, androidx.compose.foundation.gestures.IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitTouchSlop] */
    public static void c(IndirectPointerInputDragCycleDetector indirectPointerInputDragCycleDetector, IndirectPointerInputChange indirectPointerInputChange, long j, long j2, int i) {
        if ((i & 4) != 0) {
            j2 = 0;
        }
        DragGestureNode dragGestureNode = indirectPointerInputDragCycleDetector.j;
        DragDetectionState.AwaitTouchSlop awaitTouchSlop = indirectPointerInputDragCycleDetector.m;
        DragDetectionState.AwaitTouchSlop awaitTouchSlop2 = awaitTouchSlop;
        if (awaitTouchSlop == null) {
            ?? obj = new Object();
            obj.a = null;
            obj.b = Long.MAX_VALUE;
            obj.c = false;
            indirectPointerInputDragCycleDetector.m = obj;
            awaitTouchSlop2 = obj;
        }
        awaitTouchSlop2.a = indirectPointerInputChange;
        awaitTouchSlop2.b = j;
        TouchSlopDetector touchSlopDetector = indirectPointerInputDragCycleDetector.q;
        Orientation orientation = dragGestureNode.z;
        if (touchSlopDetector == null) {
            indirectPointerInputDragCycleDetector.q = new TouchSlopDetector(orientation);
        } else {
            touchSlopDetector.a = orientation;
            touchSlopDetector.b = j2;
        }
        awaitTouchSlop2.c = false;
        indirectPointerInputDragCycleDetector.o = awaitTouchSlop2;
    }

    @Override // androidx.compose.foundation.GestureConnection
    public final String T() {
        DragDetectionState dragDetectionState = this.o;
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

    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, androidx.compose.foundation.gestures.IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitDown] */
    public final void a() {
        DragDetectionState.AwaitDown awaitDown = this.k;
        DragDetectionState.AwaitDown awaitDown2 = awaitDown;
        if (awaitDown == null) {
            DragDetectionState.AwaitDown.AwaitTouchSlop awaitTouchSlop = DragDetectionState.AwaitDown.AwaitTouchSlop.l;
            ?? obj = new Object();
            obj.a = awaitTouchSlop;
            obj.b = false;
            obj.c = false;
            this.k = obj;
            awaitDown2 = obj;
        }
        awaitDown2.a = DragDetectionState.AwaitDown.AwaitTouchSlop.l;
        awaitDown2.b = false;
        awaitDown2.c = false;
        this.o = awaitDown2;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [androidx.compose.foundation.gestures.IndirectPointerInputDragCycleDetector$DragDetectionState$AwaitGesturePickup, java.lang.Object] */
    public final void b(IndirectPointerInputChange indirectPointerInputChange, long j, TouchSlopDetector touchSlopDetector) {
        DragDetectionState.AwaitGesturePickup awaitGesturePickup = this.n;
        DragDetectionState.AwaitGesturePickup awaitGesturePickup2 = awaitGesturePickup;
        if (awaitGesturePickup == null) {
            ?? obj = new Object();
            obj.a = null;
            obj.b = Long.MAX_VALUE;
            this.n = obj;
            awaitGesturePickup2 = obj;
        }
        awaitGesturePickup2.a = indirectPointerInputChange;
        awaitGesturePickup2.b = j;
        touchSlopDetector.b = 0L;
        this.o = awaitGesturePickup2;
    }

    @Override // androidx.compose.foundation.gestures.DraggableGestureConnection
    public final Orientation b0() {
        return this.j.z;
    }

    public final VelocityTracker d() {
        VelocityTracker velocityTracker = this.p;
        if (velocityTracker != null) {
            return velocityTracker;
        }
        u2.g("Velocity Tracker not initialized.");
        return null;
    }

    public final void e(IndirectPointerInputChange indirectPointerInputChange, IndirectPointerEventPrimaryDirectionalMotionAxis indirectPointerEventPrimaryDirectionalMotionAxis, long j) {
        long j2;
        long j3;
        float intBitsToFloat;
        long j4 = indirectPointerInputChange.c;
        DragGestureNode dragGestureNode = this.j;
        Orientation orientation = dragGestureNode.z;
        orientation.getClass();
        Function3 function3 = DraggableKt.a;
        long j5 = 4294967295L;
        if (orientation == Orientation.j) {
            j2 = j & 4294967295L;
        } else {
            j2 = j >> 32;
        }
        if (Math.abs(Float.intBitsToFloat((int) j2)) > 2.0f) {
            VelocityTracker d = d();
            Orientation orientation2 = dragGestureNode.z;
            IndirectPointerInputEventSmoother indirectPointerInputEventSmoother = this.r;
            MutableObjectList mutableObjectList = indirectPointerInputEventSmoother.b;
            float intBitsToFloat2 = Float.intBitsToFloat((int) (j4 >> 32));
            float intBitsToFloat3 = Float.intBitsToFloat((int) (j4 & 4294967295L));
            if (IndirectPointerInputDragCycleDetectorKt.b(indirectPointerInputChange)) {
                indirectPointerInputEventSmoother.a = 0;
                mutableObjectList.k();
            }
            float f = 0.0f;
            if (!IndirectPointerInputDragCycleDetectorKt.a(indirectPointerInputChange) && !IndirectPointerInputDragCycleDetectorKt.b(indirectPointerInputChange)) {
                if (mutableObjectList.b == 3) {
                    int i = indirectPointerInputEventSmoother.a;
                    indirectPointerInputEventSmoother.a = i + 1;
                    mutableObjectList.p(i, indirectPointerInputChange);
                } else {
                    mutableObjectList.g(indirectPointerInputChange);
                }
                if (indirectPointerInputEventSmoother.a == 3) {
                    indirectPointerInputEventSmoother.a = 0;
                }
                Object[] objArr = mutableObjectList.a;
                int i2 = mutableObjectList.b;
                int i3 = 0;
                float f2 = 0.0f;
                while (i3 < i2) {
                    f2 += Float.intBitsToFloat((int) (((IndirectPointerInputChange) objArr[i3]).c >> 32));
                    i3++;
                    j5 = j5;
                }
                j3 = j5;
                int i4 = mutableObjectList.b;
                intBitsToFloat2 = f2 / i4;
                Object[] objArr2 = mutableObjectList.a;
                float f3 = 0.0f;
                for (int i5 = 0; i5 < i4; i5++) {
                    f3 += Float.intBitsToFloat((int) (((IndirectPointerInputChange) objArr2[i5]).c & j3));
                }
                intBitsToFloat3 = f3 / mutableObjectList.b;
            } else {
                j3 = 4294967295L;
            }
            long floatToRawIntBits = (Float.floatToRawIntBits(intBitsToFloat3) & j3) | (Float.floatToRawIntBits(intBitsToFloat2) << 32);
            if (orientation2 != null) {
                int i6 = indirectPointerEventPrimaryDirectionalMotionAxis.a;
                if (i6 == 1) {
                    intBitsToFloat = Float.intBitsToFloat((int) (floatToRawIntBits >> 32));
                } else if (i6 == 2) {
                    intBitsToFloat = Float.intBitsToFloat((int) (floatToRawIntBits & j3));
                }
                floatToRawIntBits = orientation2 == Orientation.k ? (Float.floatToRawIntBits(intBitsToFloat) << 32) | (Float.floatToRawIntBits(0.0f) & j3) : (Float.floatToRawIntBits(intBitsToFloat) & j3) | (Float.floatToRawIntBits(0.0f) << 32);
            }
            d.a.a(indirectPointerInputChange.b, floatToRawIntBits);
            OffsetSmoother offsetSmoother = this.s;
            MutableLongList mutableLongList = offsetSmoother.b;
            int i7 = mutableLongList.b;
            if (i7 == 3) {
                int i8 = offsetSmoother.a;
                offsetSmoother.a = i8 + 1;
                if (i8 >= 0 && i8 < i7) {
                    long[] jArr = mutableLongList.a;
                    long j6 = jArr[i8];
                    jArr[i8] = j;
                } else {
                    u2.o("Index must be between 0 and size");
                    return;
                }
            } else {
                mutableLongList.a(j);
            }
            if (offsetSmoother.a == 3) {
                offsetSmoother.a = 0;
            }
            long[] jArr2 = mutableLongList.a;
            int i9 = mutableLongList.b;
            float f4 = 0.0f;
            for (int i10 = 0; i10 < i9; i10++) {
                f4 += Float.intBitsToFloat((int) (jArr2[i10] >> 32));
            }
            int i11 = mutableLongList.b;
            float f5 = f4 / i11;
            long[] jArr3 = mutableLongList.a;
            for (int i12 = 0; i12 < i11; i12++) {
                f = Float.intBitsToFloat((int) (jArr3[i12] & j3)) + f;
            }
            float f6 = f / mutableLongList.b;
            dragGestureNode.j1(new DragEvent.DragDelta((Float.floatToRawIntBits(f5) << 32) | (Float.floatToRawIntBits(f6) & j3), true));
        }
    }

    public final void f(IndirectPointerInputChange indirectPointerInputChange, IndirectPointerInputChange indirectPointerInputChange2, IndirectPointerEventPrimaryDirectionalMotionAxis indirectPointerEventPrimaryDirectionalMotionAxis, long j) {
        char c;
        long j2;
        float intBitsToFloat;
        if (this.p == null) {
            this.p = new VelocityTracker();
        }
        VelocityTracker d = d();
        DragGestureNode dragGestureNode = this.j;
        Orientation orientation = dragGestureNode.z;
        IndirectPointerInputEventSmoother indirectPointerInputEventSmoother = this.r;
        MutableObjectList mutableObjectList = indirectPointerInputEventSmoother.b;
        char c2 = ' ';
        float intBitsToFloat2 = Float.intBitsToFloat((int) (indirectPointerInputChange.c >> 32));
        long j3 = 4294967295L;
        float intBitsToFloat3 = Float.intBitsToFloat((int) (indirectPointerInputChange.c & 4294967295L));
        if (IndirectPointerInputDragCycleDetectorKt.b(indirectPointerInputChange)) {
            indirectPointerInputEventSmoother.a = 0;
            mutableObjectList.k();
        }
        if (!IndirectPointerInputDragCycleDetectorKt.a(indirectPointerInputChange) && !IndirectPointerInputDragCycleDetectorKt.b(indirectPointerInputChange)) {
            if (mutableObjectList.b == 3) {
                int i = indirectPointerInputEventSmoother.a;
                indirectPointerInputEventSmoother.a = i + 1;
                mutableObjectList.p(i, indirectPointerInputChange);
            } else {
                mutableObjectList.g(indirectPointerInputChange);
            }
            if (indirectPointerInputEventSmoother.a == 3) {
                indirectPointerInputEventSmoother.a = 0;
            }
            Object[] objArr = mutableObjectList.a;
            int i2 = mutableObjectList.b;
            int i3 = 0;
            float f = 0.0f;
            while (i3 < i2) {
                char c3 = c2;
                f += Float.intBitsToFloat((int) (((IndirectPointerInputChange) objArr[i3]).c >> c3));
                i3++;
                c2 = c3;
                j3 = j3;
            }
            c = c2;
            j2 = j3;
            int i4 = mutableObjectList.b;
            intBitsToFloat2 = f / i4;
            Object[] objArr2 = mutableObjectList.a;
            float f2 = 0.0f;
            for (int i5 = 0; i5 < i4; i5++) {
                f2 += Float.intBitsToFloat((int) (((IndirectPointerInputChange) objArr2[i5]).c & j2));
            }
            intBitsToFloat3 = f2 / mutableObjectList.b;
        } else {
            c = ' ';
            j2 = 4294967295L;
        }
        long floatToRawIntBits = (Float.floatToRawIntBits(intBitsToFloat2) << c) | (Float.floatToRawIntBits(intBitsToFloat3) & j2);
        if (orientation != null) {
            int i6 = indirectPointerEventPrimaryDirectionalMotionAxis.a;
            if (i6 == 1) {
                intBitsToFloat = Float.intBitsToFloat((int) (floatToRawIntBits >> c));
            } else if (i6 == 2) {
                intBitsToFloat = Float.intBitsToFloat((int) (floatToRawIntBits & j2));
            }
            floatToRawIntBits = orientation == Orientation.k ? (Float.floatToRawIntBits(intBitsToFloat) << c) | (Float.floatToRawIntBits(0.0f) & j2) : (Float.floatToRawIntBits(0.0f) << c) | (Float.floatToRawIntBits(intBitsToFloat) & j2);
        }
        d.a.a(indirectPointerInputChange.b, floatToRawIntBits);
        long e = Offset.e(IndirectPointerInputDragCycleDetectorKt.d(indirectPointerInputChange2, dragGestureNode.z, indirectPointerEventPrimaryDirectionalMotionAxis), j);
        if (((Boolean) dragGestureNode.A.b(new PointerType(1))).booleanValue()) {
            dragGestureNode.j1(new DragEvent.DragStarted(e));
        }
        OffsetSmoother offsetSmoother = this.s;
        offsetSmoother.a = 0;
        offsetSmoother.b.b = 0;
    }
}
