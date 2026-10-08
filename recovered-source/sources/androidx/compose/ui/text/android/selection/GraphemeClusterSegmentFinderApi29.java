package androidx.compose.ui.text.android.selection;

import android.text.TextPaint;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class GraphemeClusterSegmentFinderApi29 extends GraphemeClusterSegmentFinder {
    public final CharSequence a;
    public final TextPaint b;

    public GraphemeClusterSegmentFinderApi29(CharSequence charSequence, TextPaint textPaint) {
        this.a = charSequence;
        this.b = textPaint;
    }

    @Override // androidx.compose.ui.text.android.selection.GraphemeClusterSegmentFinder
    public final int e(int i) {
        int textRunCursor;
        CharSequence charSequence = this.a;
        textRunCursor = this.b.getTextRunCursor(charSequence, 0, charSequence.length(), false, i, 0);
        return textRunCursor;
    }

    @Override // androidx.compose.ui.text.android.selection.GraphemeClusterSegmentFinder
    public final int f(int i) {
        int textRunCursor;
        CharSequence charSequence = this.a;
        textRunCursor = this.b.getTextRunCursor(charSequence, 0, charSequence.length(), false, i, 2);
        return textRunCursor;
    }
}
