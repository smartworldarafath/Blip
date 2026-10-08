package net.blip.libblip;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.Syntax;
import com.squareup.wire.internal.Internal;
import defpackage.jb;
import defpackage.q;
import java.time.Instant;
import java.util.ArrayList;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyMap;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import okio.ByteString;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class User extends Message {
    public static final User$Companion$ADAPTER$1 y;
    public final String m;
    public final String n;
    public final String o;
    public final ByteString p;
    public final ByteString q;
    public final boolean r;
    public final boolean s;
    public final boolean t;
    public final PlanKind u;
    public final Instant v;
    public final Instant w;
    public final Map x;

    static {
        FieldEncoding fieldEncoding = FieldEncoding.k;
        ClassReference a = Reflection.a(User.class);
        Syntax syntax = Syntax.k;
        y = new User$Companion$ADAPTER$1(a);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public User(String str, String str2, String str3, ByteString byteString, ByteString byteString2, Map map, boolean z, boolean z2, boolean z3, PlanKind planKind, Instant instant, Instant instant2, ByteString byteString3) {
        super(y, byteString3);
        str.getClass();
        str2.getClass();
        str3.getClass();
        byteString.getClass();
        byteString2.getClass();
        map.getClass();
        planKind.getClass();
        byteString3.getClass();
        this.m = str;
        this.n = str2;
        this.o = str3;
        this.p = byteString;
        this.q = byteString2;
        this.r = z;
        this.s = z2;
        this.t = z3;
        this.u = planKind;
        this.v = instant;
        this.w = instant2;
        this.x = Internal.b("devices", map);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof User)) {
            return false;
        }
        User user = (User) obj;
        if (Intrinsics.a(a(), user.a()) && Intrinsics.a(this.m, user.m) && Intrinsics.a(this.n, user.n) && Intrinsics.a(this.o, user.o) && Intrinsics.a(this.p, user.p) && Intrinsics.a(this.q, user.q) && Intrinsics.a(this.x, user.x) && this.r == user.r && this.s == user.s && this.t == user.t && this.u == user.u && Intrinsics.a(this.v, user.v) && Intrinsics.a(this.w, user.w)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i;
        int i2 = this.l;
        if (i2 == 0) {
            int hashCode = (this.u.hashCode() + jb.b(jb.b(jb.b((this.x.hashCode() + ((this.q.hashCode() + ((this.p.hashCode() + jb.c(this.o, jb.c(this.n, jb.c(this.m, a().hashCode() * 37, 37), 37), 37)) * 37)) * 37)) * 37, 37, this.r), 37, this.s), 37, this.t)) * 37;
            int i3 = 0;
            Instant instant = this.v;
            if (instant != null) {
                i = instant.hashCode();
            } else {
                i = 0;
            }
            int i4 = (hashCode + i) * 37;
            Instant instant2 = this.w;
            if (instant2 != null) {
                i3 = instant2.hashCode();
            }
            int i5 = i4 + i3;
            this.l = i5;
            return i5;
        }
        return i2;
    }

    public final String toString() {
        ArrayList arrayList = new ArrayList();
        q.z(this.m, "user_id=", arrayList);
        q.z(this.n, "email=", arrayList);
        q.z(this.o, "name=", arrayList);
        arrayList.add("avatar_uuid=" + this.p);
        arrayList.add("avatar_micro_rep=" + this.q);
        Map map = this.x;
        if (!map.isEmpty()) {
            arrayList.add("devices=" + map);
        }
        q.A("is_contact=", this.r, arrayList);
        q.A("is_self=", this.s, arrayList);
        q.A("is_searchable=", this.t, arrayList);
        arrayList.add("plan_kind=" + this.u);
        Instant instant = this.v;
        if (instant != null) {
            arrayList.add("created_at=" + instant);
        }
        Instant instant2 = this.w;
        if (instant2 != null) {
            arrayList.add("enriched_at=" + instant2);
        }
        return CollectionsKt.y(arrayList, ", ", "User{", "}", null, 56);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ User(String str, int i) {
        this("", "", r4, r5, r5, r7, false, false, false, PlanKind.m, null, null, r5);
        Map map;
        String str2 = (i & 4) != 0 ? "" : str;
        ByteString byteString = ByteString.m;
        map = EmptyMap.j;
    }
}
