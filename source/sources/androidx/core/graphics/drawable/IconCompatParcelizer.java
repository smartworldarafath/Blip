package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.os.Parcelable;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.versionedparcelable.VersionedParcel;
import defpackage.u2;
import java.nio.charset.Charset;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class IconCompatParcelizer {
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.core.graphics.drawable.IconCompat, java.lang.Object] */
    public static IconCompat read(VersionedParcel versionedParcel) {
        ?? obj = new Object();
        obj.a = -1;
        obj.c = null;
        obj.d = null;
        obj.e = 0;
        obj.f = 0;
        obj.g = null;
        obj.h = IconCompat.k;
        obj.i = null;
        obj.a = versionedParcel.i(-1, 1);
        obj.c = versionedParcel.f(obj.c);
        obj.d = versionedParcel.j(obj.d, 3);
        obj.e = versionedParcel.i(obj.e, 4);
        obj.f = versionedParcel.i(obj.f, 5);
        obj.g = (ColorStateList) versionedParcel.j(obj.g, 6);
        obj.i = versionedParcel.k(7, obj.i);
        obj.j = versionedParcel.k(8, obj.j);
        obj.h = PorterDuff.Mode.valueOf(obj.i);
        switch (obj.a) {
            case -1:
                Parcelable parcelable = obj.d;
                if (parcelable != null) {
                    obj.b = parcelable;
                    return obj;
                }
                u2.g("Invalid icon");
                return null;
            case 0:
            default:
                return obj;
            case 1:
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                Parcelable parcelable2 = obj.d;
                if (parcelable2 != null) {
                    obj.b = parcelable2;
                    return obj;
                }
                byte[] bArr = obj.c;
                obj.b = bArr;
                obj.a = 3;
                obj.e = 0;
                obj.f = bArr.length;
                return obj;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                String str = new String(obj.c, Charset.forName("UTF-16"));
                obj.b = str;
                if (obj.a == 2 && obj.j == null) {
                    obj.j = str.split(":", -1)[0];
                }
                return obj;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                obj.b = obj.c;
                return obj;
        }
    }

    public static void write(IconCompat iconCompat, VersionedParcel versionedParcel) {
        versionedParcel.getClass();
        iconCompat.i = iconCompat.h.name();
        switch (iconCompat.a) {
            case -1:
                iconCompat.d = (Parcelable) iconCompat.b;
                break;
            case 1:
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                iconCompat.d = (Parcelable) iconCompat.b;
                break;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                iconCompat.c = ((String) iconCompat.b).getBytes(Charset.forName("UTF-16"));
                break;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                iconCompat.c = (byte[]) iconCompat.b;
                break;
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                iconCompat.c = iconCompat.b.toString().getBytes(Charset.forName("UTF-16"));
                break;
        }
        int i = iconCompat.a;
        if (-1 != i) {
            versionedParcel.q(i, 1);
        }
        byte[] bArr = iconCompat.c;
        if (bArr != null) {
            versionedParcel.o(bArr);
        }
        Parcelable parcelable = iconCompat.d;
        if (parcelable != null) {
            versionedParcel.r(parcelable, 3);
        }
        int i2 = iconCompat.e;
        if (i2 != 0) {
            versionedParcel.q(i2, 4);
        }
        int i3 = iconCompat.f;
        if (i3 != 0) {
            versionedParcel.q(i3, 5);
        }
        ColorStateList colorStateList = iconCompat.g;
        if (colorStateList != null) {
            versionedParcel.r(colorStateList, 6);
        }
        String str = iconCompat.i;
        if (str != null) {
            versionedParcel.s(7, str);
        }
        String str2 = iconCompat.j;
        if (str2 != null) {
            versionedParcel.s(8, str2);
        }
    }
}
