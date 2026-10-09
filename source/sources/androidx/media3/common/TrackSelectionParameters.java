package androidx.media3.common;

import androidx.media3.common.util.Util;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Maps;
import defpackage.q;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class TrackSelectionParameters {
    public final int a;
    public final int b;
    public final int c;
    public final int d;
    public final int e;
    public final int f;
    public final boolean g;
    public final boolean h;
    public final ImmutableList i;
    public final ImmutableList j;
    public final ImmutableList k;
    public final ImmutableList l;
    public final ImmutableList m;
    public final int n;
    public final int o;
    public final ImmutableList p;
    public final AudioOffloadPreferences q;
    public final ImmutableList r;
    public final ImmutableList s;
    public final boolean t;
    public final int u;
    public final ImmutableMap v;
    public final ImmutableSet w;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class AudioOffloadPreferences {
        public static final AudioOffloadPreferences a = new Object();

        /* JADX WARN: Type inference failed for: r0v0, types: [androidx.media3.common.TrackSelectionParameters$AudioOffloadPreferences, java.lang.Object] */
        static {
            Util.z(1);
            Util.z(2);
            Util.z(3);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && AudioOffloadPreferences.class == obj.getClass()) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return 29791;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Builder {
        public int a = Integer.MAX_VALUE;
        public int b = Integer.MAX_VALUE;
        public int c = Integer.MAX_VALUE;
        public int d = Integer.MAX_VALUE;
        public int e = Integer.MAX_VALUE;
        public int f = Integer.MAX_VALUE;
        public boolean g = true;
        public boolean h = true;
        public ImmutableList i = ImmutableList.r();
        public ImmutableList j = ImmutableList.r();
        public ImmutableList k = ImmutableList.r();
        public ImmutableList l = ImmutableList.r();
        public ImmutableList m = ImmutableList.r();
        public int n = Integer.MAX_VALUE;
        public int o = Integer.MAX_VALUE;
        public ImmutableList p = ImmutableList.r();
        public AudioOffloadPreferences q = AudioOffloadPreferences.a;
        public ImmutableList r = ImmutableList.r();
        public boolean s = true;
        public ImmutableList t = ImmutableList.r();
        public int u = 0;
        public HashMap v = new HashMap();
        public HashSet w = new HashSet();

        public TrackSelectionParameters a() {
            return new TrackSelectionParameters(this);
        }

        public Builder b(int i) {
            Iterator it = this.v.values().iterator();
            while (it.hasNext()) {
                if (((TrackSelectionOverride) it.next()).a.c == i) {
                    it.remove();
                }
            }
            return this;
        }

        public final void c(TrackSelectionParameters trackSelectionParameters) {
            this.a = trackSelectionParameters.a;
            this.b = trackSelectionParameters.b;
            this.c = trackSelectionParameters.c;
            this.d = trackSelectionParameters.d;
            this.e = trackSelectionParameters.e;
            this.f = trackSelectionParameters.f;
            this.g = trackSelectionParameters.g;
            this.h = trackSelectionParameters.h;
            this.j = trackSelectionParameters.j;
            this.i = trackSelectionParameters.i;
            this.k = trackSelectionParameters.k;
            this.l = trackSelectionParameters.l;
            this.m = trackSelectionParameters.m;
            this.n = trackSelectionParameters.n;
            this.o = trackSelectionParameters.o;
            this.p = trackSelectionParameters.p;
            this.q = trackSelectionParameters.q;
            this.r = trackSelectionParameters.r;
            this.s = trackSelectionParameters.t;
            this.t = trackSelectionParameters.s;
            this.u = trackSelectionParameters.u;
            this.w = new HashSet(trackSelectionParameters.w);
            this.v = new HashMap(trackSelectionParameters.v);
        }

        public Builder d() {
            this.u = -3;
            return this;
        }

        public Builder e(TrackSelectionOverride trackSelectionOverride) {
            TrackGroup trackGroup = trackSelectionOverride.a;
            b(trackGroup.c);
            this.v.put(trackGroup, trackSelectionOverride);
            return this;
        }

        public Builder f() {
            return g(new String[0]);
        }

        public Builder g(String... strArr) {
            ImmutableList.Builder k = ImmutableList.k();
            for (String str : strArr) {
                str.getClass();
                k.d(Util.E(str));
            }
            this.r = k.i();
            this.s = false;
            return this;
        }

        public Builder h() {
            this.s = false;
            return this;
        }

        public Builder i(int i, boolean z) {
            HashSet hashSet = this.w;
            if (z) {
                hashSet.add(Integer.valueOf(i));
                return this;
            }
            hashSet.remove(Integer.valueOf(i));
            return this;
        }
    }

    static {
        new TrackSelectionParameters(new Builder());
        Util.z(1);
        Util.z(2);
        Util.z(3);
        Util.z(4);
        q.q(5, 6, 7, 8, 9);
        q.q(10, 11, 12, 13, 14);
        q.q(15, 16, 17, 18, 19);
        q.q(20, 21, 22, 23, 24);
        q.q(25, 26, 27, 28, 29);
        q.q(30, 31, 32, 33, 34);
        Util.z(35);
        Util.z(36);
        Util.z(37);
        Util.z(38);
    }

    public TrackSelectionParameters(Builder builder) {
        this.a = builder.a;
        this.b = builder.b;
        this.c = builder.c;
        this.d = builder.d;
        this.e = builder.e;
        this.f = builder.f;
        this.g = builder.g;
        this.h = builder.h;
        this.i = builder.i;
        this.j = builder.j;
        this.k = builder.k;
        this.l = builder.l;
        this.n = builder.n;
        this.m = builder.m;
        this.o = builder.o;
        this.p = builder.p;
        this.q = builder.q;
        this.r = builder.r;
        this.t = builder.s;
        this.s = builder.t;
        this.u = builder.u;
        this.v = ImmutableMap.a(builder.v);
        this.w = ImmutableSet.m(builder.w);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, androidx.media3.common.TrackSelectionParameters$Builder] */
    public Builder a() {
        ?? obj = new Object();
        obj.c(this);
        return obj;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj != null && getClass() == obj.getClass()) {
                TrackSelectionParameters trackSelectionParameters = (TrackSelectionParameters) obj;
                if (this.a == trackSelectionParameters.a && this.b == trackSelectionParameters.b && this.c == trackSelectionParameters.c && this.d == trackSelectionParameters.d && this.h == trackSelectionParameters.h && this.e == trackSelectionParameters.e && this.f == trackSelectionParameters.f && this.g == trackSelectionParameters.g && this.i.equals(trackSelectionParameters.i) && this.j.equals(trackSelectionParameters.j) && this.k.equals(trackSelectionParameters.k) && this.l.equals(trackSelectionParameters.l) && this.n == trackSelectionParameters.n && this.m.equals(trackSelectionParameters.m) && this.o == trackSelectionParameters.o && this.p.equals(trackSelectionParameters.p) && this.q.equals(trackSelectionParameters.q) && this.s.equals(trackSelectionParameters.s) && this.r.equals(trackSelectionParameters.r) && this.t == trackSelectionParameters.t && this.u == trackSelectionParameters.u) {
                    ImmutableMap immutableMap = trackSelectionParameters.v;
                    ImmutableMap immutableMap2 = this.v;
                    immutableMap2.getClass();
                    if (Maps.a(immutableMap, immutableMap2) && this.w.equals(trackSelectionParameters.w)) {
                        return true;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        int hashCode = (this.p.hashCode() + ((((this.m.hashCode() + ((((this.l.hashCode() + ((this.k.hashCode() + ((this.j.hashCode() + ((this.i.hashCode() + ((((((((((((((((this.a + 31) * 31) + this.b) * 31) + this.c) * 31) + this.d) * 28629151) + (this.h ? 1 : 0)) * 31) + this.e) * 31) + this.f) * 31) + (this.g ? 1 : 0)) * 31)) * 31)) * 31)) * 961)) * 961) + this.n) * 31)) * 31) + this.o) * 31)) * 31;
        this.q.getClass();
        return this.w.hashCode() + ((this.v.hashCode() + ((((this.s.hashCode() + ((((this.r.hashCode() + ((hashCode + 29791) * 961)) * 961) + (this.t ? 1 : 0)) * 31)) * 31) + this.u) * 28629151)) * 31);
    }
}
