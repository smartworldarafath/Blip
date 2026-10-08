package androidx.work.impl.model;

import androidx.work.BackoffPolicy;
import androidx.work.Constraints;
import androidx.work.Data;
import androidx.work.Logger;
import androidx.work.OutOfQuotaPolicy;
import androidx.work.OverwritingInputMerger;
import androidx.work.WorkInfo$State;
import defpackage.jb;
import defpackage.q;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class WorkSpec {
    public final String a;
    public WorkInfo$State b;
    public final String c;
    public final String d;
    public Data e;
    public final Data f;
    public long g;
    public final long h;
    public final long i;
    public Constraints j;
    public final int k;
    public final BackoffPolicy l;
    public final long m;
    public long n;
    public final long o;
    public final long p;
    public boolean q;
    public OutOfQuotaPolicy r;
    public final int s;
    public final int t;
    public final long u;
    public final int v;
    public final int w;
    public String x;
    public final Boolean y;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class IdAndState {
        public String a;
        public WorkInfo$State b;

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof IdAndState)) {
                return false;
            }
            IdAndState idAndState = (IdAndState) obj;
            if (Intrinsics.a(this.a, idAndState.a) && this.b == idAndState.b) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return this.b.hashCode() + (this.a.hashCode() * 31);
        }

        public final String toString() {
            return "IdAndState(id=" + this.a + ", state=" + this.b + ')';
        }
    }

    static {
        Logger.f("WorkSpec");
    }

    public /* synthetic */ WorkSpec(String str, WorkInfo$State workInfo$State, String str2, String str3, Data data, Data data2, long j, long j2, long j3, Constraints constraints, int i, BackoffPolicy backoffPolicy, long j4, long j5, long j6, long j7, boolean z, OutOfQuotaPolicy outOfQuotaPolicy, int i2, long j8, int i3, int i4, String str4, Boolean bool, int i5) {
        this(str, (i5 & 2) != 0 ? WorkInfo$State.j : workInfo$State, str2, (i5 & 8) != 0 ? OverwritingInputMerger.class.getName() : str3, (i5 & 16) != 0 ? Data.b : data, (i5 & 32) != 0 ? Data.b : data2, (i5 & 64) != 0 ? 0L : j, (i5 & 128) != 0 ? 0L : j2, (i5 & 256) != 0 ? 0L : j3, (i5 & 512) != 0 ? Constraints.j : constraints, (i5 & 1024) != 0 ? 0 : i, (i5 & 2048) != 0 ? BackoffPolicy.j : backoffPolicy, (i5 & 4096) != 0 ? 30000L : j4, (i5 & 8192) != 0 ? -1L : j5, (i5 & 16384) == 0 ? j6 : 0L, (32768 & i5) != 0 ? -1L : j7, (65536 & i5) != 0 ? false : z, (131072 & i5) != 0 ? OutOfQuotaPolicy.j : outOfQuotaPolicy, (262144 & i5) != 0 ? 0 : i2, 0, (1048576 & i5) != 0 ? Long.MAX_VALUE : j8, (2097152 & i5) != 0 ? 0 : i3, (4194304 & i5) != 0 ? -256 : i4, (8388608 & i5) != 0 ? null : str4, (i5 & 16777216) != 0 ? Boolean.FALSE : bool);
    }

    public final long a() {
        boolean z;
        long j;
        long scalb;
        WorkInfo$State workInfo$State = this.b;
        WorkInfo$State workInfo$State2 = WorkInfo$State.j;
        int i = this.k;
        if (workInfo$State == workInfo$State2 && i > 0) {
            z = true;
        } else {
            z = false;
        }
        long j2 = this.n;
        boolean b = b();
        long j3 = this.g;
        BackoffPolicy backoffPolicy = this.l;
        backoffPolicy.getClass();
        long j4 = this.u;
        int i2 = this.s;
        if (j4 != Long.MAX_VALUE && b) {
            if (i2 != 0) {
                long j5 = j2 + 900000;
                if (j4 < j5) {
                    return j5;
                }
            }
            return j4;
        }
        if (z) {
            BackoffPolicy backoffPolicy2 = BackoffPolicy.k;
            long j6 = this.m;
            if (backoffPolicy == backoffPolicy2) {
                scalb = j6 * i;
            } else {
                scalb = Math.scalb((float) j6, i - 1);
            }
            if (scalb > 18000000) {
                scalb = 18000000;
            }
            return j2 + scalb;
        }
        if (b) {
            long j7 = this.h;
            if (i2 == 0) {
                j = j2 + j3;
            } else {
                j = j2 + j7;
            }
            long j8 = this.i;
            if (j8 != j7 && i2 == 0) {
                return (j7 - j8) + j;
            }
            return j;
        }
        if (j2 == -1) {
            return Long.MAX_VALUE;
        }
        return j2 + j3;
    }

    public final boolean b() {
        if (this.h != 0) {
            return true;
        }
        return false;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof WorkSpec)) {
            return false;
        }
        WorkSpec workSpec = (WorkSpec) obj;
        if (Intrinsics.a(this.a, workSpec.a) && this.b == workSpec.b && Intrinsics.a(this.c, workSpec.c) && Intrinsics.a(this.d, workSpec.d) && Intrinsics.a(this.e, workSpec.e) && Intrinsics.a(this.f, workSpec.f) && this.g == workSpec.g && this.h == workSpec.h && this.i == workSpec.i && Intrinsics.a(this.j, workSpec.j) && this.k == workSpec.k && this.l == workSpec.l && this.m == workSpec.m && this.n == workSpec.n && this.o == workSpec.o && this.p == workSpec.p && this.q == workSpec.q && this.r == workSpec.r && this.s == workSpec.s && this.t == workSpec.t && this.u == workSpec.u && this.v == workSpec.v && this.w == workSpec.w && Intrinsics.a(this.x, workSpec.x) && Intrinsics.a(this.y, workSpec.y)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int hashCode;
        int b = q.b(this.w, q.b(this.v, jb.a(q.b(this.t, q.b(this.s, (this.r.hashCode() + jb.b(jb.a(jb.a(jb.a(jb.a((this.l.hashCode() + q.b(this.k, (this.j.hashCode() + jb.a(jb.a(jb.a((this.f.hashCode() + ((this.e.hashCode() + jb.c(this.d, jb.c(this.c, (this.b.hashCode() + (this.a.hashCode() * 31)) * 31, 31), 31)) * 31)) * 31, 31, this.g), 31, this.h), 31, this.i)) * 31, 31)) * 31, 31, this.m), 31, this.n), 31, this.o), 31, this.p), 31, this.q)) * 31, 31), 31), 31, this.u), 31), 31);
        String str = this.x;
        int i = 0;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int i2 = (b + hashCode) * 31;
        Boolean bool = this.y;
        if (bool != null) {
            i = bool.hashCode();
        }
        return i2 + i;
    }

    public final String toString() {
        return "{WorkSpec: " + this.a + '}';
    }

    public WorkSpec(String str, WorkInfo$State workInfo$State, String str2, String str3, Data data, Data data2, long j, long j2, long j3, Constraints constraints, int i, BackoffPolicy backoffPolicy, long j4, long j5, long j6, long j7, boolean z, OutOfQuotaPolicy outOfQuotaPolicy, int i2, int i3, long j8, int i4, int i5, String str4, Boolean bool) {
        str.getClass();
        workInfo$State.getClass();
        str2.getClass();
        str3.getClass();
        data.getClass();
        data2.getClass();
        constraints.getClass();
        backoffPolicy.getClass();
        outOfQuotaPolicy.getClass();
        this.a = str;
        this.b = workInfo$State;
        this.c = str2;
        this.d = str3;
        this.e = data;
        this.f = data2;
        this.g = j;
        this.h = j2;
        this.i = j3;
        this.j = constraints;
        this.k = i;
        this.l = backoffPolicy;
        this.m = j4;
        this.n = j5;
        this.o = j6;
        this.p = j7;
        this.q = z;
        this.r = outOfQuotaPolicy;
        this.s = i2;
        this.t = i3;
        this.u = j8;
        this.v = i4;
        this.w = i5;
        this.x = str4;
        this.y = bool;
    }
}
