package androidx.compose.foundation.text;

import androidx.compose.foundation.text.selection.SelectionAdjustment;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface TextDragObserver {
    void a(long j, SelectionAdjustment selectionAdjustment);

    void b();

    void c();

    void d();

    void e(long j);

    void onCancel();
}
