package net.blip.libblip.frontend;

import androidx.compose.foundation.text.KeyModifiers;
import androidx.datastore.preferences.PreferencesProto$Value;
import com.squareup.wire.EnumAdapter;
import com.squareup.wire.WireEnum;
import net.blip.libblip.frontend.Transfer;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Transfer$Status$Companion$ADAPTER$1 extends EnumAdapter<Transfer.Status> {
    @Override // com.squareup.wire.EnumAdapter
    public final WireEnum j(int i) {
        Transfer.Status.k.getClass();
        switch (i) {
            case 0:
                return Transfer.Status.m;
            case 1:
                return Transfer.Status.n;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                return Transfer.Status.o;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                return Transfer.Status.p;
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                return Transfer.Status.q;
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                return Transfer.Status.r;
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                return Transfer.Status.s;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return Transfer.Status.t;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                return Transfer.Status.u;
            case KeyModifiers.a /* 9 */:
                return Transfer.Status.v;
            default:
                return null;
        }
    }
}
