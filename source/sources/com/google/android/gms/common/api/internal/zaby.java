package com.google.android.gms.common.api.internal;

import android.os.SystemClock;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.ConnectionTelemetryConfiguration;
import com.google.android.gms.common.internal.MethodInvocation;
import com.google.android.gms.common.internal.RootTelemetryConfigManager;
import com.google.android.gms.common.internal.RootTelemetryConfiguration;
import com.google.android.gms.common.internal.zzj;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class zaby implements OnCompleteListener {
    public final GoogleApiManager j;
    public final int k;
    public final ApiKey l;
    public final long m;
    public final long n;

    public zaby(GoogleApiManager googleApiManager, int i, ApiKey apiKey, long j, long j2) {
        this.j = googleApiManager;
        this.k = i;
        this.l = apiKey;
        this.m = j;
        this.n = j2;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0031 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static ConnectionTelemetryConfiguration a(zabk zabkVar, BaseGmsClient baseGmsClient, int i) {
        ConnectionTelemetryConfiguration connectionTelemetryConfiguration;
        zzj zzjVar = baseGmsClient.v;
        if (zzjVar == null) {
            connectionTelemetryConfiguration = null;
        } else {
            connectionTelemetryConfiguration = zzjVar.m;
        }
        if (connectionTelemetryConfiguration != null && connectionTelemetryConfiguration.k) {
            int[] iArr = connectionTelemetryConfiguration.m;
            int i2 = 0;
            if (iArr == null) {
                int[] iArr2 = connectionTelemetryConfiguration.o;
                if (iArr2 != null) {
                    while (i2 < iArr2.length) {
                        if (iArr2[i2] == i) {
                            break;
                        }
                        i2++;
                    }
                }
                if (zabkVar.o >= connectionTelemetryConfiguration.n) {
                    return connectionTelemetryConfiguration;
                }
            } else {
                while (i2 < iArr.length) {
                    if (iArr[i2] == i) {
                        if (zabkVar.o >= connectionTelemetryConfiguration.n) {
                            break;
                        }
                    } else {
                        i2++;
                    }
                }
            }
        }
        return null;
    }

    @Override // com.google.android.gms.tasks.OnCompleteListener
    public final void h(Task task) {
        boolean z;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        long j;
        long j2;
        GoogleApiManager googleApiManager = this.j;
        if (googleApiManager.e()) {
            RootTelemetryConfiguration rootTelemetryConfiguration = RootTelemetryConfigManager.a().a;
            if (rootTelemetryConfiguration == null || rootTelemetryConfiguration.k) {
                zabk zabkVar = (zabk) googleApiManager.s.get(this.l);
                if (zabkVar != null) {
                    Object obj = zabkVar.e;
                    if (obj instanceof BaseGmsClient) {
                        BaseGmsClient baseGmsClient = (BaseGmsClient) obj;
                        long j3 = this.m;
                        boolean z2 = true;
                        int i6 = 0;
                        if (j3 > 0) {
                            z = true;
                        } else {
                            z = false;
                        }
                        int i7 = baseGmsClient.p;
                        if (rootTelemetryConfiguration != null) {
                            z &= rootTelemetryConfiguration.l;
                            i = rootTelemetryConfiguration.m;
                            i3 = rootTelemetryConfiguration.n;
                            i2 = rootTelemetryConfiguration.j;
                            if (baseGmsClient.v != null && !baseGmsClient.n()) {
                                ConnectionTelemetryConfiguration a = a(zabkVar, baseGmsClient, this.k);
                                if (a != null) {
                                    if (!a.l || j3 <= 0) {
                                        z2 = false;
                                    }
                                    i3 = a.n;
                                    z = z2;
                                } else {
                                    return;
                                }
                            }
                        } else {
                            i = 5000;
                            i2 = 0;
                            i3 = 100;
                        }
                        int i8 = i;
                        int i9 = -1;
                        if (task.k()) {
                            i5 = 0;
                        } else if (task.i()) {
                            i6 = -1;
                            i5 = 100;
                        } else {
                            Exception f = task.f();
                            if (f instanceof ApiException) {
                                Status status = ((ApiException) f).j;
                                i4 = status.j;
                                ConnectionResult connectionResult = status.m;
                                if (connectionResult != null) {
                                    i5 = i4;
                                    i6 = connectionResult.k;
                                }
                            } else {
                                i4 = 101;
                            }
                            i5 = i4;
                            i6 = -1;
                        }
                        if (z) {
                            long j4 = this.n;
                            long currentTimeMillis = System.currentTimeMillis();
                            i9 = (int) (SystemClock.elapsedRealtime() - j4);
                            j2 = currentTimeMillis;
                            j = j3;
                        } else {
                            j = 0;
                            j2 = 0;
                        }
                        zabz zabzVar = new zabz(new MethodInvocation(this.k, i5, i6, j, j2, null, null, i7, i9), i2, i8, i3);
                        com.google.android.gms.internal.base.zao zaoVar = googleApiManager.v;
                        zaoVar.sendMessage(zaoVar.obtainMessage(18, zabzVar));
                    }
                }
            }
        }
    }
}
