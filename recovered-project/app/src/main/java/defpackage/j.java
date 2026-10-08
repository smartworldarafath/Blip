package defpackage;

import android.app.ApplicationExitInfo;
import android.media.RouteDiscoveryPreference;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract /* synthetic */ class j {
    public static /* synthetic */ void B() {
    }

    public static /* bridge */ /* synthetic */ ApplicationExitInfo e(Object obj) {
        return (ApplicationExitInfo) obj;
    }

    public static /* synthetic */ RouteDiscoveryPreference.Builder i(List list) {
        return new RouteDiscoveryPreference.Builder(list, false);
    }
}
