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
public final class SystemInfo extends Message {
    public static final SystemInfo$Companion$ADAPTER$1 q = new ProtoAdapter(FieldEncoding.m, Reflection.a(SystemInfo.class), "type.googleapis.com/frontend.SystemInfo", Syntax.l, null, 0);
    public final boolean m;
    public final boolean n;
    public final String o;
    public final long p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SystemInfo(boolean z, boolean z2, String str, long j, ByteString byteString) {
        super(q, byteString);
        str.getClass();
        byteString.getClass();
        this.m = z;
        this.n = z2;
        this.o = str;
        this.p = j;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SystemInfo)) {
            return false;
        }
        SystemInfo systemInfo = (SystemInfo) obj;
        if (Intrinsics.a(a(), systemInfo.a()) && this.m == systemInfo.m && this.n == systemInfo.n && Intrinsics.a(this.o, systemInfo.o) && this.p == systemInfo.p) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i = this.l;
        if (i == 0) {
            int hashCode = Long.hashCode(this.p) + jb.c(this.o, jb.b(jb.b(a().hashCode() * 37, 37, this.m), 37, this.n), 37);
            this.l = hashCode;
            return hashCode;
        }
        return i;
    }

    public final String toString() {
        ArrayList arrayList = new ArrayList();
        q.A("is_asleep=", this.m, arrayList);
        q.A("is_network_available=", this.n, arrayList);
        q.z(this.o, "available_network_kind=", arrayList);
        arrayList.add("network_generation=" + this.p);
        return CollectionsKt.y(arrayList, ", ", "SystemInfo{", "}", null, 56);
    }
}
