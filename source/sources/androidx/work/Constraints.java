package androidx.work;

import android.net.NetworkRequest;
import android.net.Uri;
import androidx.work.impl.utils.NetworkRequestCompat;
import java.util.Set;
import kotlin.collections.EmptySet;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Constraints {
    public static final Constraints j = new Constraints();
    public final NetworkType a;
    public final NetworkRequestCompat b;
    public final boolean c;
    public final boolean d;
    public final boolean e;
    public final boolean f;
    public final long g;
    public final long h;
    public final Set i;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Builder {
        public boolean a;
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class ContentUriTrigger {
        public final Uri a;
        public final boolean b;

        public ContentUriTrigger(boolean z, Uri uri) {
            this.a = uri;
            this.b = z;
        }

        public final boolean equals(Object obj) {
            Class<?> cls;
            if (this != obj) {
                if (obj != null) {
                    cls = obj.getClass();
                } else {
                    cls = null;
                }
                if (ContentUriTrigger.class.equals(cls)) {
                    obj.getClass();
                    ContentUriTrigger contentUriTrigger = (ContentUriTrigger) obj;
                    if (!this.a.equals(contentUriTrigger.a) || this.b != contentUriTrigger.b) {
                        return false;
                    }
                    return true;
                }
                return false;
            }
            return true;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.b) + (this.a.hashCode() * 31);
        }
    }

    public Constraints(Constraints constraints) {
        constraints.getClass();
        this.c = constraints.c;
        this.d = constraints.d;
        this.b = constraints.b;
        this.a = constraints.a;
        this.e = constraints.e;
        this.f = constraints.f;
        this.i = constraints.i;
        this.g = constraints.g;
        this.h = constraints.h;
    }

    public final NetworkRequest a() {
        return (NetworkRequest) this.b.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !Constraints.class.equals(obj.getClass())) {
            return false;
        }
        Constraints constraints = (Constraints) obj;
        if (this.c != constraints.c || this.d != constraints.d || this.e != constraints.e || this.f != constraints.f || this.g != constraints.g || this.h != constraints.h || !Intrinsics.a(a(), constraints.a()) || this.a != constraints.a) {
            return false;
        }
        return Intrinsics.a(this.i, constraints.i);
    }

    public final int hashCode() {
        int i;
        int hashCode = ((((((((this.a.hashCode() * 31) + (this.c ? 1 : 0)) * 31) + (this.d ? 1 : 0)) * 31) + (this.e ? 1 : 0)) * 31) + (this.f ? 1 : 0)) * 31;
        long j2 = this.g;
        int i2 = (hashCode + ((int) (j2 ^ (j2 >>> 32)))) * 31;
        long j3 = this.h;
        int hashCode2 = (this.i.hashCode() + ((i2 + ((int) (j3 ^ (j3 >>> 32)))) * 31)) * 31;
        NetworkRequest a = a();
        if (a != null) {
            i = a.hashCode();
        } else {
            i = 0;
        }
        return hashCode2 + i;
    }

    public final String toString() {
        return "Constraints{requiredNetworkType=" + this.a + ", requiresCharging=" + this.c + ", requiresDeviceIdle=" + this.d + ", requiresBatteryNotLow=" + this.e + ", requiresStorageNotLow=" + this.f + ", contentTriggerUpdateDelayMillis=" + this.g + ", contentTriggerMaxDelayMillis=" + this.h + ", contentUriTriggers=" + this.i + ", }";
    }

    public Constraints(NetworkRequestCompat networkRequestCompat, NetworkType networkType, boolean z, boolean z2, boolean z3, boolean z4, long j2, long j3, Set set) {
        networkRequestCompat.getClass();
        this.b = networkRequestCompat;
        this.a = networkType;
        this.c = z;
        this.d = z2;
        this.e = z3;
        this.f = z4;
        this.g = j2;
        this.h = j3;
        this.i = set;
    }

    public Constraints() {
        NetworkType networkType = NetworkType.j;
        this.b = new NetworkRequestCompat(null);
        this.a = networkType;
        this.c = false;
        this.d = false;
        this.e = false;
        this.f = false;
        this.g = -1L;
        this.h = -1L;
        this.i = EmptySet.j;
    }
}
