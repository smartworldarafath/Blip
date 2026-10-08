package com.google.android.gms.common;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.compose.foundation.text.KeyModifiers;
import androidx.datastore.preferences.PreferencesProto$Value;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import java.util.Arrays;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ConnectionResult extends AbstractSafeParcelable {
    public final int j;
    public final int k;
    public final PendingIntent l;
    public final String m;
    public final Integer n;
    public static final ConnectionResult o = new ConnectionResult(0, null, null);
    public static final Parcelable.Creator<ConnectionResult> CREATOR = new Object();

    public ConnectionResult(int i, int i2, PendingIntent pendingIntent, String str, Integer num) {
        this.j = i;
        this.k = i2;
        this.l = pendingIntent;
        this.m = str;
        this.n = num;
    }

    public static String a(int i) {
        if (i != 99) {
            if (i != 1500) {
                switch (i) {
                    case -1:
                        return "UNKNOWN";
                    case 0:
                        return "SUCCESS";
                    case 1:
                        return "SERVICE_MISSING";
                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                        return "SERVICE_VERSION_UPDATE_REQUIRED";
                    case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                        return "SERVICE_DISABLED";
                    case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                        return "SIGN_IN_REQUIRED";
                    case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                        return "INVALID_ACCOUNT";
                    case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                        return "RESOLUTION_REQUIRED";
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return "NETWORK_ERROR";
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return "INTERNAL_ERROR";
                    case KeyModifiers.a /* 9 */:
                        return "SERVICE_INVALID";
                    case KeyModifiers.b /* 10 */:
                        return "DEVELOPER_ERROR";
                    case 11:
                        return "LICENSE_CHECK_FAILED";
                    default:
                        switch (i) {
                            case 13:
                                return "CANCELED";
                            case 14:
                                return "TIMEOUT";
                            case 15:
                                return "INTERRUPTED";
                            case 16:
                                return "API_UNAVAILABLE";
                            case 17:
                                return "SIGN_IN_FAILED";
                            case 18:
                                return "SERVICE_UPDATING";
                            case 19:
                                return "SERVICE_MISSING_PERMISSION";
                            case 20:
                                return "RESTRICTED_PROFILE";
                            case 21:
                                return "API_VERSION_UPDATE_REQUIRED";
                            case 22:
                                return "RESOLUTION_ACTIVITY_NOT_FOUND";
                            case 23:
                                return "API_DISABLED";
                            case 24:
                                return "API_DISABLED_FOR_CONNECTION";
                            case 25:
                                return "API_INSTALL_REQUIRED";
                            default:
                                StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 20);
                                sb.append("UNKNOWN_ERROR_CODE(");
                                sb.append(i);
                                sb.append(")");
                                return sb.toString();
                        }
                }
            }
            return "DRIVE_EXTERNAL_STORAGE_REQUIRED";
        }
        return "UNFINISHED";
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ConnectionResult)) {
            return false;
        }
        ConnectionResult connectionResult = (ConnectionResult) obj;
        if (this.k == connectionResult.k && Objects.a(this.l, connectionResult.l) && Objects.a(this.m, connectionResult.m) && Objects.a(this.n, connectionResult.n)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.k), this.l, this.m, this.n});
    }

    public final String toString() {
        Objects.ToStringHelper toStringHelper = new Objects.ToStringHelper(this);
        toStringHelper.a(a(this.k), "statusCode");
        toStringHelper.a(this.l, "resolution");
        toStringHelper.a(this.m, "message");
        toStringHelper.a(this.n, "clientMethodKey");
        return toStringHelper.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int g = SafeParcelWriter.g(parcel, 20293);
        SafeParcelWriter.f(parcel, 1, 4);
        parcel.writeInt(this.j);
        SafeParcelWriter.f(parcel, 2, 4);
        parcel.writeInt(this.k);
        SafeParcelWriter.b(parcel, 3, this.l, i);
        SafeParcelWriter.c(parcel, 4, this.m);
        Integer num = this.n;
        if (num != null) {
            SafeParcelWriter.f(parcel, 5, 4);
            parcel.writeInt(num.intValue());
        }
        SafeParcelWriter.h(parcel, g);
    }

    public ConnectionResult(int i, PendingIntent pendingIntent, String str) {
        this(1, i, pendingIntent, str, null);
    }
}
