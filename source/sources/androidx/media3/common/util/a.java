package androidx.media3.common.util;

import android.content.Context;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.PowerManager;
import android.telephony.TelephonyManager;
import androidx.compose.foundation.text.KeyModifiers;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.media3.common.util.NetworkTypeObserver;
import androidx.media3.common.util.WakeLockManager;
import defpackage.b4;
import defpackage.d7;
import defpackage.db;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class a implements Runnable {
    public final /* synthetic */ int j;
    public final /* synthetic */ Object k;
    public final /* synthetic */ Object l;

    public /* synthetic */ a(int i, Object obj, Object obj2) {
        this.j = i;
        this.k = obj;
        this.l = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        PowerManager.WakeLock wakeLock;
        int i = 1;
        switch (this.j) {
            case 0:
                BackgroundThreadStateHandler backgroundThreadStateHandler = (BackgroundThreadStateHandler) this.k;
                Object apply = ((d7) this.l).apply(backgroundThreadStateHandler.e);
                backgroundThreadStateHandler.e = apply;
                b4 b4Var = new b4(backgroundThreadStateHandler, apply, 1);
                SystemHandlerWrapper systemHandlerWrapper = (SystemHandlerWrapper) backgroundThreadStateHandler.b;
                if (systemHandlerWrapper.a.getLooper().getThread().isAlive()) {
                    systemHandlerWrapper.d(b4Var);
                    return;
                }
                return;
            case 1:
                NetworkTypeObserver networkTypeObserver = (NetworkTypeObserver) this.k;
                Context context = (Context) this.l;
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
                context.registerReceiver(new NetworkTypeObserver.Receiver(), intentFilter);
                return;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                NetworkTypeObserver.Receiver receiver = (NetworkTypeObserver.Receiver) this.k;
                Context context2 = (Context) this.l;
                NetworkTypeObserver networkTypeObserver2 = NetworkTypeObserver.this;
                ConnectivityManager connectivityManager = (ConnectivityManager) context2.getSystemService("connectivity");
                if (connectivityManager != null) {
                    try {
                        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                        if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
                            int type = activeNetworkInfo.getType();
                            if (type != 0) {
                                if (type != 1) {
                                    if (type != 4 && type != 5) {
                                        if (type != 6) {
                                            i = type != 9 ? 8 : 7;
                                        }
                                        i = 5;
                                    }
                                }
                                i = 2;
                            }
                            switch (activeNetworkInfo.getSubtype()) {
                                case 1:
                                case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                                    i = 3;
                                    break;
                                case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                                case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                                case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                                case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                                case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                                case KeyModifiers.a /* 9 */:
                                case KeyModifiers.b /* 10 */:
                                case 11:
                                case KeyModifiers.c /* 12 */:
                                case 14:
                                case 15:
                                case 17:
                                    i = 4;
                                    break;
                                case 13:
                                    i = 5;
                                    break;
                                case 16:
                                case 19:
                                default:
                                    i = 6;
                                    break;
                                case 18:
                                    i = 2;
                                    break;
                                case 20:
                                    if (Build.VERSION.SDK_INT >= 29) {
                                        i = 9;
                                        break;
                                    }
                                    break;
                            }
                        }
                    } catch (SecurityException unused) {
                    }
                    if (Build.VERSION.SDK_INT < 31 && i == 5) {
                        try {
                            TelephonyManager telephonyManager = (TelephonyManager) context2.getSystemService("phone");
                            telephonyManager.getClass();
                            NetworkTypeObserver$Api31$DisplayInfoCallback networkTypeObserver$Api31$DisplayInfoCallback = new NetworkTypeObserver$Api31$DisplayInfoCallback(networkTypeObserver2);
                            db.r(telephonyManager, networkTypeObserver2.a, networkTypeObserver$Api31$DisplayInfoCallback);
                            db.q(telephonyManager, networkTypeObserver$Api31$DisplayInfoCallback);
                            return;
                        } catch (RuntimeException unused2) {
                            networkTypeObserver2.d(5);
                            return;
                        }
                    }
                    networkTypeObserver2.d(i);
                    return;
                }
                i = 0;
                if (Build.VERSION.SDK_INT < 31) {
                }
                networkTypeObserver2.d(i);
                return;
            default:
                WakeLockManager.WakeLockManagerInternal wakeLockManagerInternal = (WakeLockManager.WakeLockManagerInternal) this.k;
                AtomicBoolean atomicBoolean = (AtomicBoolean) this.l;
                synchronized (wakeLockManagerInternal) {
                    if (atomicBoolean.get() && (wakeLock = wakeLockManagerInternal.b) != null) {
                        wakeLock.release();
                    }
                }
                return;
        }
    }
}
