package bsarchive;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import defpackage.x9;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.internal.ClassReference;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Metadata$Companion$ADAPTER$1 extends ProtoAdapter<Metadata> {
    public static final /* synthetic */ int x = 0;
    public final Lazy v;
    public final Lazy w;

    public Metadata$Companion$ADAPTER$1(ClassReference classReference) {
        super(FieldEncoding.m, classReference, "type.googleapis.com/bsarchive.Metadata", Syntax.l, null, 0);
        this.v = LazyKt.b(new x9(18));
        this.w = LazyKt.b(new x9(19));
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        protoReader.getClass();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        long d = protoReader.d();
        while (true) {
            int h = protoReader.h();
            if (h != -1) {
                if (h != 1) {
                    if (h != 2) {
                        protoReader.o(h);
                    } else {
                        linkedHashMap2.putAll((Map) ((ProtoAdapter) this.w.getValue()).c(protoReader));
                    }
                } else {
                    linkedHashMap.putAll((Map) ((ProtoAdapter) this.v.getValue()).c(protoReader));
                }
            } else {
                return new Metadata(linkedHashMap, linkedHashMap2, protoReader.f(d));
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        Metadata metadata = (Metadata) obj;
        protoWriter.getClass();
        metadata.getClass();
        ((ProtoAdapter) this.v.getValue()).f(protoWriter, 1, metadata.m);
        ((ProtoAdapter) this.w.getValue()).f(protoWriter, 2, metadata.n);
        protoWriter.a(metadata.a());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        Metadata metadata = (Metadata) obj;
        reverseProtoWriter.getClass();
        metadata.getClass();
        reverseProtoWriter.d(metadata.a());
        ((ProtoAdapter) this.w.getValue()).g(reverseProtoWriter, 2, metadata.n);
        ((ProtoAdapter) this.v.getValue()).g(reverseProtoWriter, 1, metadata.m);
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        Metadata metadata = (Metadata) obj;
        metadata.getClass();
        return ((ProtoAdapter) this.w.getValue()).i(2, metadata.n) + ((ProtoAdapter) this.v.getValue()).i(1, metadata.m) + metadata.a().e();
    }
}
