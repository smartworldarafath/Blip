package com.google.android.gms.common.internal;

import android.content.Context;
import android.util.SparseIntArray;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.Api;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class zao {
    public final SparseIntArray a;
    public final GoogleApiAvailability b;

    public zao() {
        GoogleApiAvailability googleApiAvailability = GoogleApiAvailability.d;
        this.a = new SparseIntArray();
        this.b = googleApiAvailability;
    }

    public final int a(Context context, Api.Client client) {
        int i;
        int i2;
        Preconditions.e(context);
        Preconditions.e(client);
        int a = client.a();
        SparseIntArray sparseIntArray = this.a;
        synchronized (sparseIntArray) {
            i = sparseIntArray.get(a, -1);
        }
        if (i != -1) {
            return i;
        }
        SparseIntArray sparseIntArray2 = this.a;
        synchronized (sparseIntArray2) {
            i2 = 0;
            int i3 = 0;
            while (true) {
                try {
                    if (i3 < sparseIntArray2.size()) {
                        int keyAt = sparseIntArray2.keyAt(i3);
                        if (keyAt > a && sparseIntArray2.get(keyAt) == 0) {
                            break;
                        }
                        i3++;
                    } else {
                        i2 = -1;
                        break;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (i2 == -1) {
                i2 = this.b.b(context, a);
            }
            sparseIntArray2.put(a, i2);
        }
        return i2;
    }
}
