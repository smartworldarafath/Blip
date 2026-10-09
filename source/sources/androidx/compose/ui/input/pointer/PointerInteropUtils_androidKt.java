package androidx.compose.ui.input.pointer;

import android.view.MotionEvent;
import defpackage.u2;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class PointerInteropUtils_androidKt {
    public static final void a(PointerEvent pointerEvent, long j, Function1 function1, boolean z) {
        MotionEvent a = pointerEvent.a();
        if (a != null) {
            int action = a.getAction();
            if (z) {
                a.setAction(3);
            }
            int i = (int) (j >> 32);
            int i2 = (int) (j & 4294967295L);
            a.offsetLocation(-Float.intBitsToFloat(i), -Float.intBitsToFloat(i2));
            function1.b(a);
            a.offsetLocation(Float.intBitsToFloat(i), Float.intBitsToFloat(i2));
            a.setAction(action);
            return;
        }
        u2.g("The PointerEvent receiver cannot have a null MotionEvent.");
    }
}
