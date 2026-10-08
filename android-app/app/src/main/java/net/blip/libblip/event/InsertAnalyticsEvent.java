package net.blip.libblip.event;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.Syntax;
import com.squareup.wire.internal.Internal;
import defpackage.jb;
import defpackage.q;
import java.util.ArrayList;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import okio.ByteString;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class InsertAnalyticsEvent extends Message {
    public static final InsertAnalyticsEvent$Companion$ADAPTER$1 o;
    public final String m;
    public final Map n;

    static {
        FieldEncoding fieldEncoding = FieldEncoding.k;
        ClassReference a = Reflection.a(InsertAnalyticsEvent.class);
        Syntax syntax = Syntax.k;
        o = new InsertAnalyticsEvent$Companion$ADAPTER$1(a);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InsertAnalyticsEvent(String str, Map map, ByteString byteString) {
        super(o, byteString);
        str.getClass();
        byteString.getClass();
        this.m = str;
        this.n = Internal.b("props", map);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof InsertAnalyticsEvent)) {
            return false;
        }
        InsertAnalyticsEvent insertAnalyticsEvent = (InsertAnalyticsEvent) obj;
        if (Intrinsics.a(a(), insertAnalyticsEvent.a()) && Intrinsics.a(this.m, insertAnalyticsEvent.m) && Intrinsics.a(this.n, insertAnalyticsEvent.n)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i = this.l;
        if (i == 0) {
            int hashCode = this.n.hashCode() + jb.c(this.m, a().hashCode() * 37, 37);
            this.l = hashCode;
            return hashCode;
        }
        return i;
    }

    public final String toString() {
        ArrayList arrayList = new ArrayList();
        q.z(this.m, "name=", arrayList);
        Map map = this.n;
        if (!map.isEmpty()) {
            arrayList.add("props=" + map);
        }
        return CollectionsKt.y(arrayList, ", ", "InsertAnalyticsEvent{", "}", null, 56);
    }
}
