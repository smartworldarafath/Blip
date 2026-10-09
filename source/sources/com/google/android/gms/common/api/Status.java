package com.google.android.gms.common.api;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.compose.foundation.text.KeyModifiers;
import androidx.datastore.preferences.PreferencesProto$Value;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.Arrays;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Status extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<Status> CREATOR = new Object();
    public final int j;
    public final String k;
    public final PendingIntent l;
    public final ConnectionResult m;

    public Status(int i, String str, PendingIntent pendingIntent, ConnectionResult connectionResult) {
        this.j = i;
        this.k = str;
        this.l = pendingIntent;
        this.m = connectionResult;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof Status)) {
            return false;
        }
        Status status = (Status) obj;
        if (this.j != status.j || !Objects.a(this.k, status.k) || !Objects.a(this.l, status.l) || !Objects.a(this.m, status.m)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.j), this.k, this.l, this.m});
    }

    public final String toString() {
        Objects.ToStringHelper toStringHelper = new Objects.ToStringHelper(this);
        String str = this.k;
        if (str == null) {
            int i = this.j;
            switch (i) {
                case -1:
                    str = "SUCCESS_CACHE";
                    break;
                case 0:
                    str = "SUCCESS";
                    break;
                case 1:
                case KeyModifiers.a /* 9 */:
                case 11:
                case KeyModifiers.c /* 12 */:
                default:
                    StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 21);
                    sb.append("unknown status code: ");
                    sb.append(i);
                    str = sb.toString();
                    break;
                case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                    str = "SERVICE_VERSION_UPDATE_REQUIRED";
                    break;
                case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                    str = "SERVICE_DISABLED";
                    break;
                case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                    str = "SIGN_IN_REQUIRED";
                    break;
                case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                    str = "INVALID_ACCOUNT";
                    break;
                case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                    str = "RESOLUTION_REQUIRED";
                    break;
                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                    str = "NETWORK_ERROR";
                    break;
                case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                    str = "INTERNAL_ERROR";
                    break;
                case KeyModifiers.b /* 10 */:
                    str = "DEVELOPER_ERROR";
                    break;
                case 13:
                    str = "ERROR";
                    break;
                case 14:
                    str = "INTERRUPTED";
                    break;
                case 15:
                    str = "TIMEOUT";
                    break;
                case 16:
                    str = "CANCELED";
                    break;
                case 17:
                    str = "API_NOT_CONNECTED";
                    break;
                case 18:
                    str = "DEAD_CLIENT";
                    break;
                case 19:
                    str = "REMOTE_EXCEPTION";
                    break;
                case 20:
                    str = "CONNECTION_SUSPENDED_DURING_CALL";
                    break;
                case 21:
                    str = "RECONNECTION_TIMED_OUT_DURING_UPDATE";
                    break;
                case 22:
                    str = "RECONNECTION_TIMED_OUT";
                    break;
            }
        }
        toStringHelper.a(str, "statusCode");
        toStringHelper.a(this.l, "resolution");
        return toStringHelper.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int g = SafeParcelWriter.g(parcel, 20293);
        SafeParcelWriter.f(parcel, 1, 4);
        parcel.writeInt(this.j);
        SafeParcelWriter.c(parcel, 2, this.k);
        SafeParcelWriter.b(parcel, 3, this.l, i);
        SafeParcelWriter.b(parcel, 4, this.m, i);
        SafeParcelWriter.h(parcel, g);
    }
}
