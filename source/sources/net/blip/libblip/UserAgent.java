package net.blip.libblip;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.Syntax;
import defpackage.jb;
import defpackage.q;
import java.util.ArrayList;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import okio.ByteString;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class UserAgent extends Message {
    public static final UserAgent$Companion$ADAPTER$1 v = new ProtoAdapter(FieldEncoding.m, Reflection.a(UserAgent.class), "type.googleapis.com/blip.UserAgent", Syntax.l, null, 0);
    public final String m;
    public final String n;
    public final DeviceKind o;
    public final String p;
    public final String q;
    public final String r;
    public final String s;
    public final String t;
    public final String u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UserAgent(String str, String str2, DeviceKind deviceKind, String str3, String str4, String str5, String str6, String str7, String str8, ByteString byteString) {
        super(v, byteString);
        str.getClass();
        str2.getClass();
        deviceKind.getClass();
        str3.getClass();
        str4.getClass();
        str5.getClass();
        str6.getClass();
        str7.getClass();
        str8.getClass();
        byteString.getClass();
        this.m = str;
        this.n = str2;
        this.o = deviceKind;
        this.p = str3;
        this.q = str4;
        this.r = str5;
        this.s = str6;
        this.t = str7;
        this.u = str8;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof UserAgent)) {
            return false;
        }
        UserAgent userAgent = (UserAgent) obj;
        if (Intrinsics.a(a(), userAgent.a()) && Intrinsics.a(this.m, userAgent.m) && Intrinsics.a(this.n, userAgent.n) && this.o == userAgent.o && Intrinsics.a(this.p, userAgent.p) && Intrinsics.a(this.q, userAgent.q) && Intrinsics.a(this.r, userAgent.r) && Intrinsics.a(this.s, userAgent.s) && Intrinsics.a(this.t, userAgent.t) && Intrinsics.a(this.u, userAgent.u)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i = this.l;
        if (i == 0) {
            int hashCode = this.u.hashCode() + jb.c(this.t, jb.c(this.s, jb.c(this.r, jb.c(this.q, jb.c(this.p, (this.o.hashCode() + jb.c(this.n, jb.c(this.m, a().hashCode() * 37, 37), 37)) * 37, 37), 37), 37), 37), 37);
            this.l = hashCode;
            return hashCode;
        }
        return i;
    }

    public final String toString() {
        ArrayList arrayList = new ArrayList();
        q.z(this.m, "device_make=", arrayList);
        q.z(this.n, "device_model=", arrayList);
        arrayList.add("device_kind=" + this.o);
        q.z(this.p, "os_name=", arrayList);
        q.z(this.q, "os_version=", arrayList);
        q.z(this.r, "app_id=", arrayList);
        q.z(this.s, "app_name=", arrayList);
        q.z(this.t, "app_version=", arrayList);
        q.z(this.u, "app_build=", arrayList);
        return CollectionsKt.y(arrayList, ", ", "UserAgent{", "}", null, 56);
    }
}
