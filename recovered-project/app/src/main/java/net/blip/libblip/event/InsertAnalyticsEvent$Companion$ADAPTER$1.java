package net.blip.libblip.event;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import defpackage.j6;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class InsertAnalyticsEvent$Companion$ADAPTER$1 extends ProtoAdapter<InsertAnalyticsEvent> {
    public static final /* synthetic */ int w = 0;
    public final Lazy v;

    public InsertAnalyticsEvent$Companion$ADAPTER$1(ClassReference classReference) {
        super(FieldEncoding.m, classReference, "type.googleapis.com/event.InsertAnalyticsEvent", Syntax.l, null, 0);
        this.v = LazyKt.b(new j6(27));
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        protoReader.getClass();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        long d = protoReader.d();
        String str = "";
        while (true) {
            int h = protoReader.h();
            if (h != -1) {
                if (h != 1) {
                    if (h != 2) {
                        protoReader.o(h);
                    } else {
                        linkedHashMap.putAll((Map) ((ProtoAdapter) this.v.getValue()).c(protoReader));
                    }
                } else {
                    ProtoAdapter.p.getClass();
                    str = protoReader.n();
                }
            } else {
                return new InsertAnalyticsEvent(str, linkedHashMap, protoReader.f(d));
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        InsertAnalyticsEvent insertAnalyticsEvent = (InsertAnalyticsEvent) obj;
        protoWriter.getClass();
        insertAnalyticsEvent.getClass();
        String str = insertAnalyticsEvent.m;
        if (!Intrinsics.a(str, "")) {
            ProtoAdapter.p.f(protoWriter, 1, str);
        }
        ((ProtoAdapter) this.v.getValue()).f(protoWriter, 2, insertAnalyticsEvent.n);
        protoWriter.a(insertAnalyticsEvent.a());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        InsertAnalyticsEvent insertAnalyticsEvent = (InsertAnalyticsEvent) obj;
        reverseProtoWriter.getClass();
        insertAnalyticsEvent.getClass();
        reverseProtoWriter.d(insertAnalyticsEvent.a());
        ((ProtoAdapter) this.v.getValue()).g(reverseProtoWriter, 2, insertAnalyticsEvent.n);
        String str = insertAnalyticsEvent.m;
        if (!Intrinsics.a(str, "")) {
            ProtoAdapter.p.g(reverseProtoWriter, 1, str);
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        InsertAnalyticsEvent insertAnalyticsEvent = (InsertAnalyticsEvent) obj;
        insertAnalyticsEvent.getClass();
        int e = insertAnalyticsEvent.a().e();
        String str = insertAnalyticsEvent.m;
        if (!Intrinsics.a(str, "")) {
            e += ProtoAdapter.p.i(1, str);
        }
        return ((ProtoAdapter) this.v.getValue()).i(2, insertAnalyticsEvent.n) + e;
    }
}
