package net.blip.libblip.frontend;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.Syntax;
import com.squareup.wire.internal.Internal;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import okio.ByteString;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Users extends Message {
    public static final Users$Companion$ADAPTER$1 p;
    public final Map m;
    public final Map n;
    public final List o;

    static {
        FieldEncoding fieldEncoding = FieldEncoding.k;
        ClassReference a = Reflection.a(Users.class);
        Syntax syntax = Syntax.k;
        p = new Users$Companion$ADAPTER$1(a);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Users(Map map, Map map2, List list, ByteString byteString) {
        super(p, byteString);
        list.getClass();
        byteString.getClass();
        this.m = Internal.b("discovered", map);
        this.n = Internal.b("contacts", map2);
        this.o = Internal.a("recent_interactions", list);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Users)) {
            return false;
        }
        Users users = (Users) obj;
        if (Intrinsics.a(a(), users.a()) && Intrinsics.a(this.m, users.m) && Intrinsics.a(this.n, users.n) && Intrinsics.a(this.o, users.o)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i = this.l;
        if (i == 0) {
            int hashCode = this.o.hashCode() + ((this.n.hashCode() + ((this.m.hashCode() + (a().hashCode() * 37)) * 37)) * 37);
            this.l = hashCode;
            return hashCode;
        }
        return i;
    }

    public final String toString() {
        ArrayList arrayList = new ArrayList();
        Map map = this.m;
        if (!map.isEmpty()) {
            arrayList.add("discovered=" + map);
        }
        Map map2 = this.n;
        if (!map2.isEmpty()) {
            arrayList.add("contacts=" + map2);
        }
        List list = this.o;
        if (!list.isEmpty()) {
            arrayList.add("recent_interactions=" + list);
        }
        return CollectionsKt.y(arrayList, ", ", "Users{", "}", null, 56);
    }
}
