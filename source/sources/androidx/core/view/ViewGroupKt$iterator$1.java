package androidx.core.view;

import android.view.View;
import android.view.ViewGroup;
import java.util.Iterator;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ViewGroupKt$iterator$1 implements Iterator<View>, KMappedMarker {
    public int j;
    public final /* synthetic */ ViewGroup k;

    public ViewGroupKt$iterator$1(ViewGroup viewGroup) {
        this.k = viewGroup;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.j < this.k.getChildCount()) {
            return true;
        }
        return false;
    }

    @Override // java.util.Iterator
    public final View next() {
        int i = this.j;
        this.j = i + 1;
        View childAt = this.k.getChildAt(i);
        if (childAt != null) {
            return childAt;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // java.util.Iterator
    public final void remove() {
        int i = this.j - 1;
        this.j = i;
        this.k.removeViewAt(i);
    }
}
