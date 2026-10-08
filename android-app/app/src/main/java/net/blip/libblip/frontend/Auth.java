package net.blip.libblip.frontend;

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
public final class Auth extends Message {
    public static final Auth$Companion$ADAPTER$1 q = new ProtoAdapter(FieldEncoding.m, Reflection.a(Auth.class), "type.googleapis.com/frontend.Auth", Syntax.l, null, 0);
    public final ByteString m;
    public final String n;
    public final String o;
    public final String p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Auth(ByteString byteString, String str, String str2, String str3, ByteString byteString2) {
        super(q, byteString2);
        byteString.getClass();
        str.getClass();
        str2.getClass();
        str3.getClass();
        byteString2.getClass();
        this.m = byteString;
        this.n = str;
        this.o = str2;
        this.p = str3;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Auth)) {
            return false;
        }
        Auth auth = (Auth) obj;
        if (Intrinsics.a(a(), auth.a()) && Intrinsics.a(this.m, auth.m) && Intrinsics.a(this.n, auth.n) && Intrinsics.a(this.o, auth.o) && Intrinsics.a(this.p, auth.p)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i = this.l;
        if (i == 0) {
            int hashCode = this.p.hashCode() + jb.c(this.o, jb.c(this.n, (this.m.hashCode() + (a().hashCode() * 37)) * 37, 37), 37);
            this.l = hashCode;
            return hashCode;
        }
        return i;
    }

    public final String toString() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("token=" + this.m);
        q.z(this.n, "user_id=", arrayList);
        q.z(this.o, "email=", arrayList);
        q.z(this.p, "device_id=", arrayList);
        return CollectionsKt.y(arrayList, ", ", "Auth{", "}", null, 56);
    }
}
