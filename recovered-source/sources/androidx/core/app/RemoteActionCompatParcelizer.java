package androidx.core.app;

import android.app.PendingIntent;
import androidx.core.graphics.drawable.IconCompat;
import androidx.versionedparcelable.VersionedParcel;
import androidx.versionedparcelable.VersionedParcelable;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class RemoteActionCompatParcelizer {
    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.core.app.RemoteActionCompat, java.lang.Object] */
    public static RemoteActionCompat read(VersionedParcel versionedParcel) {
        ?? obj = new Object();
        VersionedParcelable versionedParcelable = obj.a;
        if (versionedParcel.h(1)) {
            versionedParcelable = versionedParcel.l();
        }
        obj.a = (IconCompat) versionedParcelable;
        obj.b = versionedParcel.g(obj.b, 2);
        obj.c = versionedParcel.g(obj.c, 3);
        obj.d = (PendingIntent) versionedParcel.j(obj.d, 4);
        obj.e = versionedParcel.e(5, obj.e);
        obj.f = versionedParcel.e(6, obj.f);
        return obj;
    }

    public static void write(RemoteActionCompat remoteActionCompat, VersionedParcel versionedParcel) {
        versionedParcel.getClass();
        IconCompat iconCompat = remoteActionCompat.a;
        versionedParcel.m(1);
        versionedParcel.t(iconCompat);
        versionedParcel.p(remoteActionCompat.b, 2);
        versionedParcel.p(remoteActionCompat.c, 3);
        versionedParcel.r(remoteActionCompat.d, 4);
        versionedParcel.n(5, remoteActionCompat.e);
        versionedParcel.n(6, remoteActionCompat.f);
    }
}
