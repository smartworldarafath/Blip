package androidx.compose.foundation.text.selection;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SingleSelectionLayout implements SelectionLayout {
    public final boolean a;
    public final Selection b;
    public final SelectableInfo c;

    public SingleSelectionLayout(boolean z, Selection selection, SelectableInfo selectableInfo) {
        this.a = z;
        this.b = selection;
        this.c = selectableInfo;
    }

    public final CrossStatus a() {
        SelectableInfo selectableInfo = this.c;
        int i = selectableInfo.a;
        int i2 = selectableInfo.b;
        if (i < i2) {
            return CrossStatus.k;
        }
        if (i > i2) {
            return CrossStatus.j;
        }
        return CrossStatus.l;
    }

    public final String toString() {
        return "SingleSelectionLayout(isStartHandle=" + this.a + ", crossed=" + a() + ", info=\n\t" + this.c + ")";
    }
}
