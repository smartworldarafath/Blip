package androidx.compose.ui.text.android.selection;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class GraphemeClusterSegmentFinder implements SegmentFinder {
    @Override // androidx.compose.ui.text.android.selection.SegmentFinder
    public final int a(int i) {
        int e = e(i);
        if (e == -1 || e(e) == -1) {
            return -1;
        }
        return e;
    }

    @Override // androidx.compose.ui.text.android.selection.SegmentFinder
    public final int b(int i) {
        int f = f(i);
        if (f == -1 || f(f) == -1) {
            return -1;
        }
        return f;
    }

    @Override // androidx.compose.ui.text.android.selection.SegmentFinder
    public final int c(int i) {
        return f(i);
    }

    @Override // androidx.compose.ui.text.android.selection.SegmentFinder
    public final int d(int i) {
        return e(i);
    }

    public abstract int e(int i);

    public abstract int f(int i);
}
