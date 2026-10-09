package net.blip.libblip;

import androidx.compose.foundation.text.KeyModifiers;
import androidx.datastore.preferences.PreferencesProto$Value;
import com.squareup.wire.FieldEncoding;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoAdapterKt$commonBool$1;
import com.squareup.wire.ProtoAdapterKt$commonBytes$1;
import com.squareup.wire.ProtoAdapterKt$commonString$1;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import defpackage.hh;
import defpackage.q;
import java.time.Instant;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Intrinsics;
import okio.ByteString;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class User$Companion$ADAPTER$1 extends ProtoAdapter<User> {
    public static final /* synthetic */ int w = 0;
    public final Lazy v;

    public User$Companion$ADAPTER$1(ClassReference classReference) {
        super(FieldEncoding.m, classReference, "type.googleapis.com/blip.User", Syntax.l, null, 0);
        this.v = LazyKt.b(new hh(3));
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:20:0x003f. Please report as an issue. */
    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        String str;
        String str2;
        protoReader.getClass();
        ByteString byteString = ByteString.m;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Object obj = PlanKind.m;
        long d = protoReader.d();
        Object obj2 = obj;
        String str3 = "";
        String str4 = str3;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        Object obj3 = null;
        Object obj4 = null;
        ByteString byteString2 = byteString;
        ByteString byteString3 = byteString2;
        String str5 = str4;
        while (true) {
            int h = protoReader.h();
            if (h != -1) {
                ProtoAdapterKt$commonString$1 protoAdapterKt$commonString$1 = ProtoAdapter.p;
                if (h != 1) {
                    if (h != 2) {
                        ByteString byteString4 = byteString2;
                        ProtoAdapter protoAdapter = ProtoAdapter.u;
                        if (h != 9999) {
                            ProtoAdapterKt$commonBytes$1 protoAdapterKt$commonBytes$1 = ProtoAdapter.o;
                            ProtoAdapterKt$commonBool$1 protoAdapterKt$commonBool$1 = ProtoAdapter.g;
                            switch (h) {
                                case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                                    protoAdapterKt$commonBytes$1.getClass();
                                    byteString2 = protoReader.k();
                                    break;
                                case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                                    protoAdapterKt$commonBytes$1.getClass();
                                    byteString3 = protoReader.k();
                                    break;
                                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                                    str = str5;
                                    str2 = str3;
                                    linkedHashMap.putAll((Map) ((ProtoAdapter) this.v.getValue()).c(protoReader));
                                    byteString2 = byteString4;
                                    str5 = str;
                                    str3 = str2;
                                    break;
                                case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                                    protoAdapterKt$commonString$1.getClass();
                                    str5 = protoReader.n();
                                    break;
                                case KeyModifiers.a /* 9 */:
                                    z = ((Boolean) protoAdapterKt$commonBool$1.c(protoReader)).booleanValue();
                                    break;
                                case KeyModifiers.b /* 10 */:
                                    z2 = ((Boolean) protoAdapterKt$commonBool$1.c(protoReader)).booleanValue();
                                    break;
                                case 11:
                                    z3 = ((Boolean) protoAdapterKt$commonBool$1.c(protoReader)).booleanValue();
                                    break;
                                case KeyModifiers.c /* 12 */:
                                    try {
                                        obj2 = PlanKind.l.c(protoReader);
                                        break;
                                    } catch (ProtoAdapter.EnumConstantNotFoundException e) {
                                        str = str5;
                                        str2 = str3;
                                        protoReader.a(h, FieldEncoding.k, Long.valueOf(e.j));
                                        break;
                                    }
                                case 13:
                                    obj3 = protoAdapter.c(protoReader);
                                    break;
                                default:
                                    protoReader.o(h);
                                    str = str5;
                                    str2 = str3;
                                    byteString2 = byteString4;
                                    str5 = str;
                                    str3 = str2;
                                    break;
                            }
                        } else {
                            obj4 = protoAdapter.c(protoReader);
                        }
                        byteString2 = byteString4;
                    } else {
                        protoAdapterKt$commonString$1.getClass();
                        str4 = protoReader.n();
                    }
                } else {
                    protoAdapterKt$commonString$1.getClass();
                    str3 = protoReader.n();
                }
            } else {
                return new User(str5, str3, str4, byteString2, byteString3, linkedHashMap, z, z2, z3, (PlanKind) obj2, (Instant) obj3, (Instant) obj4, protoReader.f(d));
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        User user = (User) obj;
        protoWriter.getClass();
        user.getClass();
        ByteString byteString = user.q;
        ByteString byteString2 = user.p;
        String str = user.o;
        String str2 = user.n;
        String str3 = user.m;
        boolean a = Intrinsics.a(str3, "");
        ProtoAdapterKt$commonString$1 protoAdapterKt$commonString$1 = ProtoAdapter.p;
        if (!a) {
            protoAdapterKt$commonString$1.f(protoWriter, 8, str3);
        }
        if (!Intrinsics.a(str2, "")) {
            protoAdapterKt$commonString$1.f(protoWriter, 1, str2);
        }
        if (!Intrinsics.a(str, "")) {
            protoAdapterKt$commonString$1.f(protoWriter, 2, str);
        }
        ByteString byteString3 = ByteString.m;
        boolean a2 = Intrinsics.a(byteString2, byteString3);
        ProtoAdapterKt$commonBytes$1 protoAdapterKt$commonBytes$1 = ProtoAdapter.o;
        if (!a2) {
            protoAdapterKt$commonBytes$1.f(protoWriter, 5, byteString2);
        }
        if (!Intrinsics.a(byteString, byteString3)) {
            protoAdapterKt$commonBytes$1.f(protoWriter, 6, byteString);
        }
        ((ProtoAdapter) this.v.getValue()).f(protoWriter, 7, user.x);
        boolean z = user.r;
        ProtoAdapterKt$commonBool$1 protoAdapterKt$commonBool$1 = ProtoAdapter.g;
        if (z) {
            protoAdapterKt$commonBool$1.f(protoWriter, 9, Boolean.valueOf(z));
        }
        boolean z2 = user.s;
        if (z2) {
            protoAdapterKt$commonBool$1.f(protoWriter, 10, Boolean.valueOf(z2));
        }
        boolean z3 = user.t;
        if (z3) {
            protoAdapterKt$commonBool$1.f(protoWriter, 11, Boolean.valueOf(z3));
        }
        PlanKind planKind = user.u;
        if (planKind != PlanKind.m) {
            PlanKind.l.f(protoWriter, 12, planKind);
        }
        Instant instant = user.v;
        ProtoAdapter protoAdapter = ProtoAdapter.u;
        if (instant != null) {
            protoAdapter.f(protoWriter, 13, instant);
        }
        Instant instant2 = user.w;
        if (instant2 != null) {
            protoAdapter.f(protoWriter, 9999, instant2);
        }
        protoWriter.a(user.a());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        User user = (User) obj;
        reverseProtoWriter.getClass();
        user.getClass();
        String str = user.m;
        String str2 = user.n;
        String str3 = user.o;
        ByteString byteString = user.p;
        ByteString byteString2 = user.q;
        reverseProtoWriter.d(user.a());
        Instant instant = user.w;
        ProtoAdapter protoAdapter = ProtoAdapter.u;
        if (instant != null) {
            protoAdapter.g(reverseProtoWriter, 9999, instant);
        }
        Instant instant2 = user.v;
        if (instant2 != null) {
            protoAdapter.g(reverseProtoWriter, 13, instant2);
        }
        PlanKind planKind = user.u;
        if (planKind != PlanKind.m) {
            PlanKind.l.g(reverseProtoWriter, 12, planKind);
        }
        boolean z = user.t;
        ProtoAdapterKt$commonBool$1 protoAdapterKt$commonBool$1 = ProtoAdapter.g;
        if (z) {
            protoAdapterKt$commonBool$1.g(reverseProtoWriter, 11, Boolean.valueOf(z));
        }
        boolean z2 = user.s;
        if (z2) {
            protoAdapterKt$commonBool$1.g(reverseProtoWriter, 10, Boolean.valueOf(z2));
        }
        boolean z3 = user.r;
        if (z3) {
            protoAdapterKt$commonBool$1.g(reverseProtoWriter, 9, Boolean.valueOf(z3));
        }
        ((ProtoAdapter) this.v.getValue()).g(reverseProtoWriter, 7, user.x);
        ByteString byteString3 = ByteString.m;
        boolean a = Intrinsics.a(byteString2, byteString3);
        ProtoAdapterKt$commonBytes$1 protoAdapterKt$commonBytes$1 = ProtoAdapter.o;
        if (!a) {
            protoAdapterKt$commonBytes$1.g(reverseProtoWriter, 6, byteString2);
        }
        if (!Intrinsics.a(byteString, byteString3)) {
            protoAdapterKt$commonBytes$1.g(reverseProtoWriter, 5, byteString);
        }
        boolean a2 = Intrinsics.a(str3, "");
        ProtoAdapterKt$commonString$1 protoAdapterKt$commonString$1 = ProtoAdapter.p;
        if (!a2) {
            protoAdapterKt$commonString$1.g(reverseProtoWriter, 2, str3);
        }
        if (!Intrinsics.a(str2, "")) {
            protoAdapterKt$commonString$1.g(reverseProtoWriter, 1, str2);
        }
        if (!Intrinsics.a(str, "")) {
            protoAdapterKt$commonString$1.g(reverseProtoWriter, 8, str);
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        User user = (User) obj;
        user.getClass();
        ByteString byteString = user.q;
        ByteString byteString2 = user.p;
        String str = user.o;
        String str2 = user.n;
        int e = user.a().e();
        String str3 = user.m;
        boolean a = Intrinsics.a(str3, "");
        ProtoAdapterKt$commonString$1 protoAdapterKt$commonString$1 = ProtoAdapter.p;
        if (!a) {
            e += protoAdapterKt$commonString$1.i(8, str3);
        }
        if (!Intrinsics.a(str2, "")) {
            e += protoAdapterKt$commonString$1.i(1, str2);
        }
        if (!Intrinsics.a(str, "")) {
            e += protoAdapterKt$commonString$1.i(2, str);
        }
        ByteString byteString3 = ByteString.m;
        boolean a2 = Intrinsics.a(byteString2, byteString3);
        ProtoAdapterKt$commonBytes$1 protoAdapterKt$commonBytes$1 = ProtoAdapter.o;
        if (!a2) {
            e += protoAdapterKt$commonBytes$1.i(5, byteString2);
        }
        if (!Intrinsics.a(byteString, byteString3)) {
            e += protoAdapterKt$commonBytes$1.i(6, byteString);
        }
        int i = ((ProtoAdapter) this.v.getValue()).i(7, user.x) + e;
        boolean z = user.r;
        ProtoAdapterKt$commonBool$1 protoAdapterKt$commonBool$1 = ProtoAdapter.g;
        if (z) {
            i = q.c(z, protoAdapterKt$commonBool$1, 9, i);
        }
        boolean z2 = user.s;
        if (z2) {
            i = q.c(z2, protoAdapterKt$commonBool$1, 10, i);
        }
        boolean z3 = user.t;
        if (z3) {
            i = q.c(z3, protoAdapterKt$commonBool$1, 11, i);
        }
        PlanKind planKind = user.u;
        if (planKind != PlanKind.m) {
            i += PlanKind.l.i(12, planKind);
        }
        Instant instant = user.v;
        ProtoAdapter protoAdapter = ProtoAdapter.u;
        if (instant != null) {
            i += protoAdapter.i(13, instant);
        }
        Instant instant2 = user.w;
        if (instant2 != null) {
            return protoAdapter.i(9999, instant2) + i;
        }
        return i;
    }
}
