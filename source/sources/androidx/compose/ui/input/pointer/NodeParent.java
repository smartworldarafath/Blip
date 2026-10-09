package androidx.compose.ui.input.pointer;

import androidx.collection.LongSparseArray;
import androidx.collection.MutableObjectList;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.layout.LayoutCoordinates;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class NodeParent {
    public final MutableVector a = new MutableVector(new Node[16]);
    public final MutableObjectList b = new MutableObjectList(10);

    public boolean a(LongSparseArray longSparseArray, LayoutCoordinates layoutCoordinates, InternalPointerEvent internalPointerEvent, boolean z) {
        MutableVector mutableVector = this.a;
        Object[] objArr = mutableVector.j;
        int i = mutableVector.l;
        boolean z2 = false;
        for (int i2 = 0; i2 < i; i2++) {
            if (!((Node) objArr[i2]).a(longSparseArray, layoutCoordinates, internalPointerEvent, z) && !z2) {
                z2 = false;
            } else {
                z2 = true;
            }
        }
        return z2;
    }

    public void b(InternalPointerEvent internalPointerEvent) {
        MutableVector mutableVector = this.a;
        int i = mutableVector.l;
        while (true) {
            i--;
            if (-1 < i) {
                if (((Node) mutableVector.j[i]).d.a == 0) {
                    mutableVector.k(i);
                }
            } else {
                return;
            }
        }
    }
}
