package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.Feature;
import com.google.android.gms.common.internal.Preconditions;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class TaskApiCall<A, ResultT> {
    public final Feature[] a;
    public final boolean b;
    public final int c;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Builder<A, ResultT> {
        public RemoteCall a;
        public boolean b;
        public Feature[] c;
        public int d;

        public final TaskApiCall a() {
            boolean z;
            if (this.a != null) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.a("execute parameter required", z);
            return new zacn(this, this.c, this.b, this.d);
        }
    }

    public TaskApiCall(Feature[] featureArr, boolean z, int i) {
        this.a = featureArr;
        boolean z2 = false;
        if (featureArr != null && z) {
            z2 = true;
        }
        this.b = z2;
        this.c = i;
    }
}
