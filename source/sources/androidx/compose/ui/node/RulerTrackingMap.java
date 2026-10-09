package androidx.compose.ui.node;

import androidx.collection.MutableScatterSet;
import androidx.collection.ScatterSetKt;
import androidx.compose.ui.layout.Ruler;
import kotlin.collections.ArraysKt;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class RulerTrackingMap {
    public int a;
    public Ruler[] b = new Ruler[32];
    public float[] c = new float[32];
    public byte[] d = new byte[32];
    public final MutableScatterSet e;
    public final MutableScatterSet f;

    public RulerTrackingMap() {
        MutableScatterSet mutableScatterSet = ScatterSetKt.a;
        this.e = new MutableScatterSet();
        this.f = new MutableScatterSet();
    }

    public final void a(Ruler ruler) {
        int t = ArraysKt.t(this.b, ruler);
        if (t >= 0) {
            Ruler[] rulerArr = this.b;
            int i = t + 1;
            ArraysKt.g(t, i, this.a, rulerArr, rulerArr);
            Ruler[] rulerArr2 = this.b;
            int i2 = this.a;
            rulerArr2[i2 - 1] = null;
            float[] fArr = this.c;
            System.arraycopy(fArr, i, fArr, t, i2 - i);
            byte[] bArr = this.d;
            ArraysKt.e(t, i, this.a, bArr, bArr);
            this.a--;
        }
    }
}
