package androidx.compose.foundation.internal;

import android.os.Parcel;
import android.util.Base64;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitKt;
import androidx.compose.ui.unit.TextUnitType;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DecodeHelper {
    public final Parcel a;

    public DecodeHelper(String str) {
        Parcel obtain = Parcel.obtain();
        this.a = obtain;
        byte[] decode = Base64.decode(str, 0);
        obtain.unmarshall(decode, 0, decode.length);
        obtain.setDataPosition(0);
    }

    public final long a() {
        long j;
        Parcel parcel = this.a;
        byte readByte = parcel.readByte();
        if (readByte == 1) {
            j = 4294967296L;
        } else if (readByte == 2) {
            j = 8589934592L;
        } else {
            j = 0;
        }
        if (TextUnitType.a(j, 0L)) {
            return TextUnit.c;
        }
        return TextUnitKt.e(j, parcel.readFloat());
    }
}
