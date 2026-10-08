package androidx.compose.foundation.internal;

import android.os.Parcel;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitType;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class EncodeHelper {
    public Parcel a;

    public final void a(byte b) {
        this.a.writeByte(b);
    }

    public final void b(float f) {
        this.a.writeFloat(f);
    }

    public final void c(long j) {
        long b = TextUnit.b(j);
        byte b2 = 0;
        if (!TextUnitType.a(b, 0L)) {
            if (TextUnitType.a(b, 4294967296L)) {
                b2 = 1;
            } else if (TextUnitType.a(b, 8589934592L)) {
                b2 = 2;
            }
        }
        a(b2);
        if (!TextUnitType.a(TextUnit.b(j), 0L)) {
            b(TextUnit.c(j));
        }
    }
}
