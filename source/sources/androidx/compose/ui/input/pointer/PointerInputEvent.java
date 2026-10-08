package androidx.compose.ui.input.pointer;

import android.view.MotionEvent;
import java.util.ArrayList;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PointerInputEvent {
    public final List a;
    public MotionEvent b;

    public PointerInputEvent(ArrayList arrayList, MotionEvent motionEvent) {
        this.a = arrayList;
        this.b = motionEvent;
    }
}
