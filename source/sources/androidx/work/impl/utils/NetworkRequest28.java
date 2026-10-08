package androidx.work.impl.utils;

import android.net.NetworkRequest;
import android.util.Log;
import androidx.work.Logger;
import kotlin.collections.ArraysKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class NetworkRequest28 {
    public static NetworkRequestCompat a(int[] iArr, int[] iArr2) {
        NetworkRequest.Builder builder = new NetworkRequest.Builder();
        for (int i : iArr) {
            try {
                builder.addCapability(i);
            } catch (IllegalArgumentException e) {
                Logger d = Logger.d();
                String str = NetworkRequestCompat.b;
                String str2 = NetworkRequestCompat.b;
                String str3 = "Ignoring adding capability '" + i + '\'';
                if (((Logger.LogcatLogger) d).c <= 5) {
                    Log.w(str2, str3, e);
                }
            }
        }
        for (int i2 = 0; i2 < 3; i2++) {
            int i3 = NetworkRequestCompatKt.a[i2];
            if (!ArraysKt.b(iArr, i3)) {
                try {
                    builder.removeCapability(i3);
                } catch (IllegalArgumentException e2) {
                    Logger d2 = Logger.d();
                    String str4 = NetworkRequestCompat.b;
                    String str5 = NetworkRequestCompat.b;
                    String str6 = "Ignoring removing default capability '" + i3 + '\'';
                    if (((Logger.LogcatLogger) d2).c <= 5) {
                        Log.w(str5, str6, e2);
                    }
                }
            }
        }
        for (int i4 : iArr2) {
            builder.addTransportType(i4);
        }
        NetworkRequest build = builder.build();
        build.getClass();
        return new NetworkRequestCompat(build);
    }
}
