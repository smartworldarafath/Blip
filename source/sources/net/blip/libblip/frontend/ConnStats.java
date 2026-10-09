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
public final class ConnStats extends Message {
    public static final ConnStats$Companion$ADAPTER$1 s = new ProtoAdapter(FieldEncoding.m, Reflection.a(ConnStats.class), "type.googleapis.com/frontend.ConnStats", Syntax.l, null, 0);
    public final double m;
    public final boolean n;
    public final boolean o;
    public final boolean p;
    public final boolean q;
    public final int r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConnStats(double d, boolean z, boolean z2, boolean z3, boolean z4, int i, ByteString byteString) {
        super(s, byteString);
        byteString.getClass();
        this.m = d;
        this.n = z;
        this.o = z2;
        this.p = z3;
        this.q = z4;
        this.r = i;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ConnStats)) {
            return false;
        }
        ConnStats connStats = (ConnStats) obj;
        if (Intrinsics.a(a(), connStats.a()) && this.m == connStats.m && this.n == connStats.n && this.o == connStats.o && this.p == connStats.p && this.q == connStats.q && this.r == connStats.r) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i = this.l;
        if (i == 0) {
            int hashCode = Integer.hashCode(this.r) + jb.b(jb.b(jb.b(jb.b((Double.hashCode(this.m) + (a().hashCode() * 37)) * 37, 37, this.n), 37, this.o), 37, this.p), 37, this.q);
            this.l = hashCode;
            return hashCode;
        }
        return i;
    }

    public final String toString() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("kbps=" + this.m);
        q.A("is_relayed=", this.n, arrayList);
        q.A("is_wan=", this.o, arrayList);
        q.A("is_end_to_end_encrypted=", this.p, arrayList);
        q.A("is_starved=", this.q, arrayList);
        arrayList.add("stripes=" + this.r);
        return CollectionsKt.y(arrayList, ", ", "ConnStats{", "}", null, 56);
    }
}
