package androidx.compose.foundation.text.selection;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SelectionAdjustment$Companion$Word$1$1 implements BoundaryFunction {
    public static final SelectionAdjustment$Companion$Word$1$1 a = new Object();

    @Override // androidx.compose.foundation.text.selection.BoundaryFunction
    public final long a(SelectableInfo selectableInfo, int i) {
        return selectableInfo.d.i(i);
    }
}
