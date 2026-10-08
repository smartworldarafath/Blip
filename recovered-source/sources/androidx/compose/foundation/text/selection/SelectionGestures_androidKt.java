package androidx.compose.foundation.text.selection;

import android.view.MotionEvent;
import androidx.compose.foundation.text.selection.SelectionAdjustment;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerInputChange;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SelectionGestures_androidKt {
    public static final a a = SelectionAdjustment.Companion.b;

    public static final boolean a(PointerEvent pointerEvent) {
        MotionEvent a2;
        List list = pointerEvent.a;
        int size = list.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                break;
            }
            if (((PointerInputChange) list.get(i)).i == 2) {
                i++;
            } else {
                MotionEvent a3 = pointerEvent.a();
                if ((a3 == null || !a3.isFromSource(8194)) && ((a2 = pointerEvent.a()) == null || !a2.isFromSource(1048584))) {
                    return false;
                }
            }
        }
        return true;
    }
}
