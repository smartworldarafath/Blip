package androidx.compose.ui.input.pointer;

import androidx.compose.ui.geometry.Offset;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class HistoricalChange {
    public final long a;
    public final long b;
    public final float c;
    public final long d;
    public final long e;

    public HistoricalChange(long j, long j2, float f, long j3, long j4) {
        this.a = j;
        this.b = j2;
        this.c = f;
        this.d = j3;
        this.e = j4;
    }

    public final String toString() {
        return "HistoricalChange(uptimeMillis=" + this.a + ", position=" + Offset.h(this.b) + ", scaleFactor=" + this.c + ", panOffset=" + Offset.h(this.d) + ")";
    }
}
