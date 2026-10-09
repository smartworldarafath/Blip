package androidx.compose.ui.input.pointer;

import defpackage.m2;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PointerInteropFilter implements PointerInputModifier {
    public m2 b;
    public RequestDisallowInterceptTouchEvent c;
    public boolean d;
    public final PointerInteropFilter$pointerInputFilter$1 e = new PointerInteropFilter$pointerInputFilter$1(this);

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class DispatchToViewState {
        public static final DispatchToViewState j;
        public static final DispatchToViewState k;
        public static final DispatchToViewState l;
        public static final /* synthetic */ DispatchToViewState[] m;

        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, androidx.compose.ui.input.pointer.PointerInteropFilter$DispatchToViewState] */
        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, androidx.compose.ui.input.pointer.PointerInteropFilter$DispatchToViewState] */
        /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, androidx.compose.ui.input.pointer.PointerInteropFilter$DispatchToViewState] */
        static {
            ?? r0 = new Enum("Unknown", 0);
            j = r0;
            ?? r1 = new Enum("Dispatching", 1);
            k = r1;
            ?? r2 = new Enum("NotDispatching", 2);
            l = r2;
            DispatchToViewState[] dispatchToViewStateArr = {r0, r1, r2};
            m = dispatchToViewStateArr;
            EnumEntriesKt.a(dispatchToViewStateArr);
        }

        public static DispatchToViewState valueOf(String str) {
            return (DispatchToViewState) Enum.valueOf(DispatchToViewState.class, str);
        }

        public static DispatchToViewState[] values() {
            return (DispatchToViewState[]) m.clone();
        }
    }

    public final Function1 g() {
        m2 m2Var = this.b;
        if (m2Var != null) {
            return m2Var;
        }
        Intrinsics.e("onTouchEvent");
        throw null;
    }
}
