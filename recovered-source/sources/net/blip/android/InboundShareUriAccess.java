package net.blip.android;

import defpackage.jb;
import defpackage.q;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class InboundShareUriAccess {
    public final int a;
    public final String b;
    public final String c;
    public final boolean d;
    public final boolean e;
    public final boolean f;
    public final boolean g;
    public final Boolean h;
    public final String i;

    public InboundShareUriAccess(int i, String str, String str2, boolean z, boolean z2, boolean z3, boolean z4, Boolean bool, String str3) {
        this.a = i;
        this.b = str;
        this.c = str2;
        this.d = z;
        this.e = z2;
        this.f = z3;
        this.g = z4;
        this.h = bool;
        this.i = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof InboundShareUriAccess)) {
            return false;
        }
        InboundShareUriAccess inboundShareUriAccess = (InboundShareUriAccess) obj;
        if (this.a == inboundShareUriAccess.a && Intrinsics.a(this.b, inboundShareUriAccess.b) && Intrinsics.a(this.c, inboundShareUriAccess.c) && this.d == inboundShareUriAccess.d && this.e == inboundShareUriAccess.e && this.f == inboundShareUriAccess.f && this.g == inboundShareUriAccess.g && Intrinsics.a(this.h, inboundShareUriAccess.h) && Intrinsics.a(this.i, inboundShareUriAccess.i)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int hashCode4 = Integer.hashCode(this.a) * 31;
        int i = 0;
        String str = this.b;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int i2 = (hashCode4 + hashCode) * 31;
        String str2 = this.c;
        if (str2 == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = str2.hashCode();
        }
        int b = jb.b(jb.b(jb.b(jb.b((i2 + hashCode2) * 31, 31, this.d), 31, this.e), 31, this.f), 31, this.g);
        Boolean bool = this.h;
        if (bool == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = bool.hashCode();
        }
        int i3 = (b + hashCode3) * 31;
        String str3 = this.i;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return i3 + i;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("InboundShareUriAccess(itemIndex=");
        sb.append(this.a);
        sb.append(", authority=");
        sb.append(this.b);
        sb.append(", scheme=");
        sb.append(this.c);
        sb.append(", intentHasReadFlag=");
        sb.append(this.d);
        sb.append(", intentHasPersistableFlag=");
        sb.append(this.e);
        sb.append(", clipDataContainsUri=");
        sb.append(this.f);
        sb.append(", readPermissionGranted=");
        sb.append(this.g);
        sb.append(", queryReadable=");
        sb.append(this.h);
        sb.append(", queryError=");
        return q.l(sb, this.i, ")");
    }
}
