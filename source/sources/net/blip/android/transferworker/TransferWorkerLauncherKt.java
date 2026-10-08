package net.blip.android.transferworker;

import androidx.datastore.preferences.PreferencesProto$Value;
import net.blip.libblip.frontend.Transfer;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class TransferWorkerLauncherKt {
    public static final boolean a(Transfer transfer) {
        transfer.getClass();
        switch (transfer.w.ordinal()) {
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                if (transfer.v == Transfer.Direction.o) {
                    return true;
                }
                return false;
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return true;
            default:
                return false;
        }
    }
}
