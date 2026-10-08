package net.blip.libblip.frontend;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import defpackage.hh;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.internal.ClassReference;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Users$Companion$ADAPTER$1 extends ProtoAdapter<Users> {
    public static final /* synthetic */ int x = 0;
    public final Lazy v;
    public final Lazy w;

    public Users$Companion$ADAPTER$1(ClassReference classReference) {
        super(FieldEncoding.m, classReference, "type.googleapis.com/frontend.Users", Syntax.l, null, 0);
        this.v = LazyKt.b(new hh(4));
        this.w = LazyKt.b(new hh(5));
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        protoReader.getClass();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        ArrayList arrayList = new ArrayList();
        long d = protoReader.d();
        while (true) {
            int h = protoReader.h();
            if (h != -1) {
                if (h != 1) {
                    if (h != 3) {
                        if (h != 4) {
                            protoReader.o(h);
                        } else {
                            arrayList.add(PeerInteraction.p.c(protoReader));
                        }
                    } else {
                        linkedHashMap2.putAll((Map) ((ProtoAdapter) this.w.getValue()).c(protoReader));
                    }
                } else {
                    linkedHashMap.putAll((Map) ((ProtoAdapter) this.v.getValue()).c(protoReader));
                }
            } else {
                return new Users(linkedHashMap, linkedHashMap2, arrayList, protoReader.f(d));
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        Users users = (Users) obj;
        protoWriter.getClass();
        users.getClass();
        ((ProtoAdapter) this.v.getValue()).f(protoWriter, 1, users.m);
        ((ProtoAdapter) this.w.getValue()).f(protoWriter, 3, users.n);
        PeerInteraction.p.a().f(protoWriter, 4, users.o);
        protoWriter.a(users.a());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        Users users = (Users) obj;
        reverseProtoWriter.getClass();
        users.getClass();
        reverseProtoWriter.d(users.a());
        PeerInteraction.p.a().g(reverseProtoWriter, 4, users.o);
        ((ProtoAdapter) this.w.getValue()).g(reverseProtoWriter, 3, users.n);
        ((ProtoAdapter) this.v.getValue()).g(reverseProtoWriter, 1, users.m);
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        Users users = (Users) obj;
        users.getClass();
        return PeerInteraction.p.a().i(4, users.o) + ((ProtoAdapter) this.w.getValue()).i(3, users.n) + ((ProtoAdapter) this.v.getValue()).i(1, users.m) + users.a().e();
    }
}
