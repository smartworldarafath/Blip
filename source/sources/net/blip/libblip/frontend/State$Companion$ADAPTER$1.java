package net.blip.libblip.frontend;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.ProtoAdapterKt$commonString$1;
import com.squareup.wire.ProtoReader;
import com.squareup.wire.ProtoWriter;
import com.squareup.wire.ReverseProtoWriter;
import com.squareup.wire.Syntax;
import defpackage.q;
import defpackage.vc;
import java.time.Instant;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Intrinsics;
import net.blip.libblip.Plan;
import net.blip.libblip.UserAgent;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class State$Companion$ADAPTER$1 extends ProtoAdapter<State> {
    public static final /* synthetic */ int y = 0;
    public final Lazy v;
    public final Lazy w;
    public final Lazy x;

    public State$Companion$ADAPTER$1(ClassReference classReference) {
        super(FieldEncoding.m, classReference, "type.googleapis.com/frontend.State", Syntax.l, null, 0);
        this.v = LazyKt.b(new vc(22));
        this.w = LazyKt.b(new vc(23));
        this.x = LazyKt.b(new vc(24));
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final Object c(ProtoReader protoReader) {
        protoReader.getClass();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        LinkedHashMap linkedHashMap3 = new LinkedHashMap();
        long d = protoReader.d();
        Object obj = null;
        boolean z = false;
        int i = 0;
        Object obj2 = null;
        Object obj3 = null;
        Object obj4 = null;
        Object obj5 = null;
        Object obj6 = null;
        Object obj7 = null;
        Object obj8 = null;
        Object obj9 = null;
        Object obj10 = null;
        String str = "";
        String str2 = str;
        Object obj11 = null;
        while (true) {
            int h = protoReader.h();
            Object obj12 = obj;
            if (h != -1) {
                ProtoAdapterKt$commonString$1 protoAdapterKt$commonString$1 = ProtoAdapter.p;
                switch (h) {
                    case 1:
                        ProtoAdapter.h.getClass();
                        i = protoReader.p();
                        break;
                    case 50:
                        obj = UserAgent.v.c(protoReader);
                        continue;
                    case 51:
                        protoAdapterKt$commonString$1.getClass();
                        str = protoReader.n();
                        break;
                    case 100:
                        obj11 = Config.r.c(protoReader);
                        break;
                    case 200:
                        obj2 = Registration.r.c(protoReader);
                        break;
                    case 201:
                        obj3 = Auth.q.c(protoReader);
                        break;
                    case 300:
                        obj4 = Onboarding.s.c(protoReader);
                        break;
                    case 400:
                        obj5 = Messaging.r.c(protoReader);
                        break;
                    case 500:
                        obj6 = Users.p.c(protoReader);
                        break;
                    case 600:
                        linkedHashMap.putAll((Map) ((ProtoAdapter) this.v.getValue()).c(protoReader));
                        break;
                    case 700:
                        linkedHashMap2.putAll((Map) ((ProtoAdapter) this.w.getValue()).c(protoReader));
                        break;
                    case 800:
                        linkedHashMap3.putAll((Map) ((ProtoAdapter) this.x.getValue()).c(protoReader));
                        break;
                    case 901:
                        obj7 = PushNotifications.p.c(protoReader);
                        break;
                    case 1000:
                        obj8 = Plan.n.c(protoReader);
                        break;
                    case 1100:
                        obj9 = SystemInfo.q.c(protoReader);
                        break;
                    case 90000:
                        obj10 = ProtoAdapter.u.c(protoReader);
                        break;
                    case 90001:
                        z = ((Boolean) ProtoAdapter.g.c(protoReader)).booleanValue();
                        break;
                    case 99999:
                        protoAdapterKt$commonString$1.getClass();
                        str2 = protoReader.n();
                        break;
                    default:
                        protoReader.o(h);
                        break;
                }
                obj = obj12;
            } else {
                return new State(i, (UserAgent) obj12, str, (Config) obj11, (Registration) obj2, (Auth) obj3, (Onboarding) obj4, (Messaging) obj5, (Users) obj6, linkedHashMap, linkedHashMap2, linkedHashMap3, (PushNotifications) obj7, (Plan) obj8, (SystemInfo) obj9, (Instant) obj10, z, str2, protoReader.f(d));
            }
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void d(ProtoWriter protoWriter, Object obj) {
        State state = (State) obj;
        protoWriter.getClass();
        state.getClass();
        String str = state.A;
        String str2 = state.o;
        int i = state.m;
        if (i != 0) {
            ProtoAdapter.h.f(protoWriter, 1, Integer.valueOf(i));
        }
        UserAgent userAgent = state.n;
        if (userAgent != null) {
            UserAgent.v.f(protoWriter, 50, userAgent);
        }
        boolean a = Intrinsics.a(str2, "");
        ProtoAdapterKt$commonString$1 protoAdapterKt$commonString$1 = ProtoAdapter.p;
        if (!a) {
            protoAdapterKt$commonString$1.f(protoWriter, 51, str2);
        }
        Config config = state.p;
        if (config != null) {
            Config.r.f(protoWriter, 100, config);
        }
        Onboarding onboarding = state.s;
        if (onboarding != null) {
            Onboarding.s.f(protoWriter, 300, onboarding);
        }
        Messaging messaging = state.t;
        if (messaging != null) {
            Messaging.r.f(protoWriter, 400, messaging);
        }
        Users users = state.u;
        if (users != null) {
            Users.p.f(protoWriter, 500, users);
        }
        ((ProtoAdapter) this.v.getValue()).f(protoWriter, 600, state.B);
        ((ProtoAdapter) this.w.getValue()).f(protoWriter, 700, state.C);
        ((ProtoAdapter) this.x.getValue()).f(protoWriter, 800, state.D);
        PushNotifications pushNotifications = state.v;
        if (pushNotifications != null) {
            PushNotifications.p.f(protoWriter, 901, pushNotifications);
        }
        Plan plan = state.w;
        if (plan != null) {
            Plan.n.f(protoWriter, 1000, plan);
        }
        SystemInfo systemInfo = state.x;
        if (systemInfo != null) {
            SystemInfo.q.f(protoWriter, 1100, systemInfo);
        }
        Instant instant = state.y;
        if (instant != null) {
            ProtoAdapter.u.f(protoWriter, 90000, instant);
        }
        boolean z = state.z;
        if (z) {
            ProtoAdapter.g.f(protoWriter, 90001, Boolean.valueOf(z));
        }
        if (!Intrinsics.a(str, "")) {
            protoAdapterKt$commonString$1.f(protoWriter, 99999, str);
        }
        Registration.r.f(protoWriter, 200, state.q);
        Auth.q.f(protoWriter, 201, state.r);
        protoWriter.a(state.a());
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final void e(ReverseProtoWriter reverseProtoWriter, Object obj) {
        State state = (State) obj;
        reverseProtoWriter.getClass();
        state.getClass();
        String str = state.o;
        reverseProtoWriter.d(state.a());
        Auth.q.g(reverseProtoWriter, 201, state.r);
        Registration.r.g(reverseProtoWriter, 200, state.q);
        String str2 = state.A;
        boolean a = Intrinsics.a(str2, "");
        ProtoAdapterKt$commonString$1 protoAdapterKt$commonString$1 = ProtoAdapter.p;
        if (!a) {
            protoAdapterKt$commonString$1.g(reverseProtoWriter, 99999, str2);
        }
        boolean z = state.z;
        if (z) {
            ProtoAdapter.g.g(reverseProtoWriter, 90001, Boolean.valueOf(z));
        }
        Instant instant = state.y;
        if (instant != null) {
            ProtoAdapter.u.g(reverseProtoWriter, 90000, instant);
        }
        SystemInfo systemInfo = state.x;
        if (systemInfo != null) {
            SystemInfo.q.g(reverseProtoWriter, 1100, systemInfo);
        }
        Plan plan = state.w;
        if (plan != null) {
            Plan.n.g(reverseProtoWriter, 1000, plan);
        }
        PushNotifications pushNotifications = state.v;
        if (pushNotifications != null) {
            PushNotifications.p.g(reverseProtoWriter, 901, pushNotifications);
        }
        ((ProtoAdapter) this.x.getValue()).g(reverseProtoWriter, 800, state.D);
        ((ProtoAdapter) this.w.getValue()).g(reverseProtoWriter, 700, state.C);
        ((ProtoAdapter) this.v.getValue()).g(reverseProtoWriter, 600, state.B);
        Users users = state.u;
        if (users != null) {
            Users.p.g(reverseProtoWriter, 500, users);
        }
        Messaging messaging = state.t;
        if (messaging != null) {
            Messaging.r.g(reverseProtoWriter, 400, messaging);
        }
        Onboarding onboarding = state.s;
        if (onboarding != null) {
            Onboarding.s.g(reverseProtoWriter, 300, onboarding);
        }
        Config config = state.p;
        if (config != null) {
            Config.r.g(reverseProtoWriter, 100, config);
        }
        if (!Intrinsics.a(str, "")) {
            protoAdapterKt$commonString$1.g(reverseProtoWriter, 51, str);
        }
        UserAgent userAgent = state.n;
        if (userAgent != null) {
            UserAgent.v.g(reverseProtoWriter, 50, userAgent);
        }
        int i = state.m;
        if (i != 0) {
            ProtoAdapter.h.g(reverseProtoWriter, 1, Integer.valueOf(i));
        }
    }

    @Override // com.squareup.wire.ProtoAdapter
    public final int h(Object obj) {
        State state = (State) obj;
        state.getClass();
        String str = state.A;
        String str2 = state.o;
        int e = state.a().e();
        int i = state.m;
        if (i != 0) {
            e += ProtoAdapter.h.i(1, Integer.valueOf(i));
        }
        UserAgent userAgent = state.n;
        if (userAgent != null) {
            e += UserAgent.v.i(50, userAgent);
        }
        boolean a = Intrinsics.a(str2, "");
        ProtoAdapterKt$commonString$1 protoAdapterKt$commonString$1 = ProtoAdapter.p;
        if (!a) {
            e += protoAdapterKt$commonString$1.i(51, str2);
        }
        Config config = state.p;
        if (config != null) {
            e += Config.r.i(100, config);
        }
        int i2 = Auth.q.i(201, state.r) + Registration.r.i(200, state.q) + e;
        Onboarding onboarding = state.s;
        if (onboarding != null) {
            i2 += Onboarding.s.i(300, onboarding);
        }
        Messaging messaging = state.t;
        if (messaging != null) {
            i2 += Messaging.r.i(400, messaging);
        }
        Users users = state.u;
        if (users != null) {
            i2 += Users.p.i(500, users);
        }
        int i3 = ((ProtoAdapter) this.x.getValue()).i(800, state.D) + ((ProtoAdapter) this.w.getValue()).i(700, state.C) + ((ProtoAdapter) this.v.getValue()).i(600, state.B) + i2;
        PushNotifications pushNotifications = state.v;
        if (pushNotifications != null) {
            i3 += PushNotifications.p.i(901, pushNotifications);
        }
        Plan plan = state.w;
        if (plan != null) {
            i3 += Plan.n.i(1000, plan);
        }
        SystemInfo systemInfo = state.x;
        if (systemInfo != null) {
            i3 += SystemInfo.q.i(1100, systemInfo);
        }
        Instant instant = state.y;
        if (instant != null) {
            i3 += ProtoAdapter.u.i(90000, instant);
        }
        boolean z = state.z;
        if (z) {
            i3 = q.c(z, ProtoAdapter.g, 90001, i3);
        }
        if (!Intrinsics.a(str, "")) {
            return protoAdapterKt$commonString$1.i(99999, str) + i3;
        }
        return i3;
    }
}
