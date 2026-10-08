package androidx.media3.common.util;

import android.content.Context;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import androidx.media3.common.util.NetworkTypeObserver;
import androidx.media3.exoplayer.upstream.DefaultBandwidthMeter;
import androidx.media3.exoplayer.upstream.SlidingPercentile;
import com.google.common.base.Ascii;
import com.google.common.collect.ImmutableList;
import defpackage.i7;
import java.util.Locale;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class d implements Runnable {
    public final /* synthetic */ NetworkTypeObserver.ListenerHolder j;

    public /* synthetic */ d(NetworkTypeObserver.ListenerHolder listenerHolder) {
        this.j = listenerHolder;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i;
        String d;
        TelephonyManager telephonyManager;
        NetworkTypeObserver.ListenerHolder listenerHolder = this.j;
        NetworkTypeObserver.Listener listener = (NetworkTypeObserver.Listener) listenerHolder.a.get();
        if (listener != null) {
            int b = NetworkTypeObserver.this.b();
            DefaultBandwidthMeter defaultBandwidthMeter = ((i7) listener).a;
            ImmutableList immutableList = DefaultBandwidthMeter.p;
            synchronized (defaultBandwidthMeter) {
                int i2 = defaultBandwidthMeter.n;
                if (i2 != 0 && !defaultBandwidthMeter.e) {
                    return;
                }
                if (i2 == b && defaultBandwidthMeter.o != null) {
                    return;
                }
                defaultBandwidthMeter.n = b;
                if (b != 1 && b != 0 && b != 8) {
                    if (defaultBandwidthMeter.o == null) {
                        Context context = defaultBandwidthMeter.a;
                        String str = Util.a;
                        if (context != null && (telephonyManager = (TelephonyManager) context.getSystemService("phone")) != null) {
                            String networkCountryIso = telephonyManager.getNetworkCountryIso();
                            if (!TextUtils.isEmpty(networkCountryIso)) {
                                d = Ascii.d(networkCountryIso);
                                defaultBandwidthMeter.o = d;
                            }
                        }
                        d = Ascii.d(Locale.getDefault().getCountry());
                        defaultBandwidthMeter.o = d;
                    }
                    defaultBandwidthMeter.l = defaultBandwidthMeter.d(b);
                    ((SystemClock) defaultBandwidthMeter.d).getClass();
                    long elapsedRealtime = android.os.SystemClock.elapsedRealtime();
                    if (defaultBandwidthMeter.g > 0) {
                        i = (int) (elapsedRealtime - defaultBandwidthMeter.h);
                    } else {
                        i = 0;
                    }
                    defaultBandwidthMeter.e(i, defaultBandwidthMeter.i, defaultBandwidthMeter.l);
                    defaultBandwidthMeter.h = elapsedRealtime;
                    defaultBandwidthMeter.i = 0L;
                    defaultBandwidthMeter.k = 0L;
                    defaultBandwidthMeter.j = 0L;
                    SlidingPercentile slidingPercentile = defaultBandwidthMeter.f;
                    slidingPercentile.b.clear();
                    slidingPercentile.d = -1;
                    slidingPercentile.e = 0;
                    slidingPercentile.f = 0;
                }
            }
        }
    }
}
