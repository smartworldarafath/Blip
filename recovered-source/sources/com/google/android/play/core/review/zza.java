package com.google.android.play.core.review;

import android.app.PendingIntent;
import io.sentry.d;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class zza extends ReviewInfo {
    public final PendingIntent j;
    public final boolean k;

    public zza(PendingIntent pendingIntent, boolean z) {
        if (pendingIntent != null) {
            this.j = pendingIntent;
            this.k = z;
        } else {
            d.f("Null pendingIntent");
            throw null;
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ReviewInfo) {
            zza zzaVar = (zza) ((ReviewInfo) obj);
            if (this.j.equals(zzaVar.j) && this.k == zzaVar.k) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i;
        int hashCode = this.j.hashCode() ^ 1000003;
        if (true != this.k) {
            i = 1237;
        } else {
            i = 1231;
        }
        return i ^ (hashCode * 1000003);
    }

    public final String toString() {
        return "ReviewInfo{pendingIntent=" + this.j.toString() + ", isNoOp=" + this.k + "}";
    }
}
