package androidx.compose.ui.text;

import androidx.compose.runtime.State;
import androidx.compose.ui.text.font.TypefaceResult;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class TypefaceDirtyTrackerLinkedList {
    public final State a;
    public final TypefaceDirtyTrackerLinkedList b;
    public final Object c;

    public TypefaceDirtyTrackerLinkedList(TypefaceResult typefaceResult, TypefaceDirtyTrackerLinkedList typefaceDirtyTrackerLinkedList) {
        this.a = typefaceResult;
        this.b = typefaceDirtyTrackerLinkedList;
        this.c = typefaceResult.getValue();
    }

    public final boolean a() {
        if (this.a.getValue() == this.c) {
            TypefaceDirtyTrackerLinkedList typefaceDirtyTrackerLinkedList = this.b;
            if (typefaceDirtyTrackerLinkedList == null || !typefaceDirtyTrackerLinkedList.a()) {
                return false;
            }
            return true;
        }
        return true;
    }
}
