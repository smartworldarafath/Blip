package androidx.compose.ui.input.indirect;

import android.view.MotionEvent;
import defpackage.u2;
import java.util.ArrayList;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AndroidIndirectPointerEvent {
    public final ArrayList a;
    public final int b;
    public final MotionEvent c;

    public AndroidIndirectPointerEvent(ArrayList arrayList, int i, MotionEvent motionEvent) {
        this.a = arrayList;
        this.b = i;
        this.c = motionEvent;
        if (!arrayList.isEmpty()) {
            return;
        }
        u2.g("changes cannot be empty");
        throw null;
    }
}
