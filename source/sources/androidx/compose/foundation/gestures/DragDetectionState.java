package androidx.compose.foundation.gestures;

import androidx.compose.ui.input.pointer.PointerInputChange;
import kotlin.enums.EnumEntriesKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
abstract class DragDetectionState {

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

            /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, androidx.compose.foundation.gestures.DragDetectionState$AwaitDown$AwaitTouchSlop] */
            /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, androidx.compose.foundation.gestures.DragDetectionState$AwaitDown$AwaitTouchSlop] */
            /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, androidx.compose.foundation.gestures.DragDetectionState$AwaitDown$AwaitTouchSlop] */
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
        public PointerInputChange a;
        public long b;
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class AwaitTouchSlop extends DragDetectionState {
        public PointerInputChange a;
        public long b;
        public boolean c;
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Dragging extends DragDetectionState {
        public long a;
    }
}
