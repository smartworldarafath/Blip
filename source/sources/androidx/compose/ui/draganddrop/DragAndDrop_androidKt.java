package androidx.compose.ui.draganddrop;

import android.view.DragEvent;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class DragAndDrop_androidKt {
    public static final long a(DragAndDropEvent dragAndDropEvent) {
        DragEvent dragEvent = dragAndDropEvent.a;
        float x = dragEvent.getX();
        float y = dragEvent.getY();
        return (Float.floatToRawIntBits(x) << 32) | (Float.floatToRawIntBits(y) & 4294967295L);
    }
}
