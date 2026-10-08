package net.blip.libblip.event;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.Syntax;
import java.util.ArrayList;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import okio.ByteString;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class NetworkUnavailable extends Message {
    public static final NetworkUnavailable$Companion$ADAPTER$1 n = new ProtoAdapter(FieldEncoding.m, Reflection.a(NetworkUnavailable.class), "type.googleapis.com/event.NetworkUnavailable", Syntax.l, null, 0);
    public final long m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NetworkUnavailable(long j, ByteString byteString) {
        super(n, byteString);
        byteString.getClass();
        this.m = j;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof NetworkUnavailable)) {
            return false;
        }
        NetworkUnavailable networkUnavailable = (NetworkUnavailable) obj;
        if (Intrinsics.a(a(), networkUnavailable.a()) && this.m == networkUnavailable.m) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i = this.l;
        if (i == 0) {
            int hashCode = Long.hashCode(this.m) + (a().hashCode() * 37);
            this.l = hashCode;
            return hashCode;
        }
        return i;
    }

    public final String toString() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("generation=" + this.m);
        return CollectionsKt.y(arrayList, ", ", "NetworkUnavailable{", "}", null, 56);
    }
}
