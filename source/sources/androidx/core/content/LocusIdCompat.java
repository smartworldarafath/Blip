package androidx.core.content;

import android.content.LocusId;
import android.os.Build;
import android.text.TextUtils;
import androidx.core.util.Preconditions;
import defpackage.u2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class LocusIdCompat {
    public final String a;
    public final LocusId b;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Api29Impl {
        public static LocusId a(String str) {
            return new LocusId(str);
        }

        public static String b(LocusId locusId) {
            return locusId.getId();
        }
    }

    public LocusIdCompat(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.a = str;
            if (Build.VERSION.SDK_INT >= 29) {
                this.b = Api29Impl.a(str);
                return;
            } else {
                this.b = null;
                return;
            }
        }
        u2.g("id cannot be empty");
        throw null;
    }

    public static LocusIdCompat a(LocusId locusId) {
        Preconditions.c(locusId, "locusId cannot be null");
        String b = Api29Impl.b(locusId);
        if (!TextUtils.isEmpty(b)) {
            return new LocusIdCompat(b);
        }
        u2.g("id cannot be empty");
        return null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || LocusIdCompat.class != obj.getClass()) {
            return false;
        }
        String str = ((LocusIdCompat) obj).a;
        String str2 = this.a;
        if (str2 == null) {
            if (str == null) {
                return true;
            }
            return false;
        }
        return str2.equals(str);
    }

    public final int hashCode() {
        int hashCode;
        String str = this.a;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        return 31 + hashCode;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("LocusIdCompat[");
        sb.append(this.a.length() + "_chars");
        sb.append("]");
        return sb.toString();
    }
}
