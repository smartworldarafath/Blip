package bsarchive;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.Syntax;
import com.squareup.wire.internal.Internal;
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
public final class Metadata extends Message {
    public static final Metadata$Companion$ADAPTER$1 o;
    public final Map m;
    public final Map n;

    static {
        FieldEncoding fieldEncoding = FieldEncoding.k;
        ClassReference a = Reflection.a(Metadata.class);
        Syntax syntax = Syntax.k;
        o = new Metadata$Companion$ADAPTER$1(a);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Metadata(Map map, Map map2, ByteString byteString) {
        super(o, byteString);
        byteString.getClass();
        this.m = Internal.b("items", map);
        this.n = Internal.b("disk_locations", map2);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Metadata)) {
            return false;
        }
        Metadata metadata = (Metadata) obj;
        if (Intrinsics.a(a(), metadata.a()) && Intrinsics.a(this.m, metadata.m) && Intrinsics.a(this.n, metadata.n)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i = this.l;
        if (i == 0) {
            int hashCode = this.n.hashCode() + ((this.m.hashCode() + (a().hashCode() * 37)) * 37);
            this.l = hashCode;
            return hashCode;
        }
        return i;
    }

    public final String toString() {
        ArrayList arrayList = new ArrayList();
        Map map = this.m;
        if (!map.isEmpty()) {
            arrayList.add("items=" + map);
        }
        Map map2 = this.n;
        if (!map2.isEmpty()) {
            arrayList.add("disk_locations=" + map2);
        }
        return CollectionsKt.y(arrayList, ", ", "Metadata{", "}", null, 56);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ Metadata() {
        this(r0, r1, ByteString.m);
        Map map;
        Map map2;
        map = EmptyMap.j;
        map2 = EmptyMap.j;
    }
}
