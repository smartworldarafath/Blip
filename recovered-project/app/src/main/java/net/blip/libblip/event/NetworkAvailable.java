package net.blip.libblip.event;

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
public final class NetworkAvailable extends Message {
    public static final NetworkAvailable$Companion$ADAPTER$1 o = new ProtoAdapter(FieldEncoding.m, Reflection.a(NetworkAvailable.class), "type.googleapis.com/event.NetworkAvailable", Syntax.l, null, 0);
    public final String m;
    public final long n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NetworkAvailable(String str, long j, ByteString byteString) {
        super(o, byteString);
        str.getClass();
        byteString.getClass();
        this.m = str;
        this.n = j;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof NetworkAvailable)) {
            return false;
        }
        NetworkAvailable networkAvailable = (NetworkAvailable) obj;
        if (Intrinsics.a(a(), networkAvailable.a()) && Intrinsics.a(this.m, networkAvailable.m) && this.n == networkAvailable.n) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i = this.l;
        if (i == 0) {
            int hashCode = Long.hashCode(this.n) + jb.c(this.m, a().hashCode() * 37, 37);
            this.l = hashCode;
            return hashCode;
        }
        return i;
    }

    public final String toString() {
        ArrayList arrayList = new ArrayList();
        q.z(this.m, "kind=", arrayList);
        arrayList.add("generation=" + this.n);
        return CollectionsKt.y(arrayList, ", ", "NetworkAvailable{", "}", null, 56);
    }
}
