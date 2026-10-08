package net.blip.libblip.frontend;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.Syntax;
import com.squareup.wire.internal.Internal;
import defpackage.jb;
import defpackage.q;
import defpackage.u2;
import java.time.Instant;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import net.blip.libblip.Plan;
import net.blip.libblip.UserAgent;
import okio.ByteString;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class State extends Message {
    public static final State$Companion$ADAPTER$1 E;
    public final String A;
    public final Map B;
    public final Map C;
    public final Map D;
    public final int m;
    public final UserAgent n;
    public final String o;
    public final Config p;
    public final Registration q;
    public final Auth r;
    public final Onboarding s;
    public final Messaging t;
    public final Users u;
    public final PushNotifications v;
    public final Plan w;
    public final SystemInfo x;
    public final Instant y;
    public final boolean z;

    static {
        FieldEncoding fieldEncoding = FieldEncoding.k;
        ClassReference a = Reflection.a(State.class);
        Syntax syntax = Syntax.k;
        E = new State$Companion$ADAPTER$1(a);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public State(int i, UserAgent userAgent, String str, Config config, Registration registration, Auth auth, Onboarding onboarding, Messaging messaging, Users users, LinkedHashMap linkedHashMap, LinkedHashMap linkedHashMap2, LinkedHashMap linkedHashMap3, PushNotifications pushNotifications, Plan plan, SystemInfo systemInfo, Instant instant, boolean z, String str2, ByteString byteString) {
        super(E, byteString);
        int i2;
        str.getClass();
        str2.getClass();
        byteString.getClass();
        this.m = i;
        this.n = userAgent;
        this.o = str;
        this.p = config;
        this.q = registration;
        this.r = auth;
        this.s = onboarding;
        this.t = messaging;
        this.u = users;
        this.v = pushNotifications;
        this.w = plan;
        this.x = systemInfo;
        this.y = instant;
        this.z = z;
        this.A = str2;
        this.B = Internal.b("transfers", linkedHashMap);
        this.C = Internal.b("transfer_notification_responses", linkedHashMap2);
        this.D = Internal.b("searches", linkedHashMap3);
        if (registration != null) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        if (i2 + (auth != null ? 1 : 0) <= 1) {
            return;
        }
        u2.g("At most one of registration, auth may be non-null");
        throw null;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof State)) {
            return false;
        }
        State state = (State) obj;
        if (Intrinsics.a(a(), state.a()) && this.m == state.m && Intrinsics.a(this.n, state.n) && Intrinsics.a(this.o, state.o) && Intrinsics.a(this.p, state.p) && Intrinsics.a(this.q, state.q) && Intrinsics.a(this.r, state.r) && Intrinsics.a(this.s, state.s) && Intrinsics.a(this.t, state.t) && Intrinsics.a(this.u, state.u) && Intrinsics.a(this.B, state.B) && Intrinsics.a(this.C, state.C) && Intrinsics.a(this.D, state.D) && Intrinsics.a(this.v, state.v) && Intrinsics.a(this.w, state.w) && Intrinsics.a(this.x, state.x) && Intrinsics.a(this.y, state.y) && this.z == state.z && Intrinsics.a(this.A, state.A)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11 = this.l;
        if (i11 == 0) {
            int b = q.b(this.m, a().hashCode() * 37, 37);
            int i12 = 0;
            UserAgent userAgent = this.n;
            if (userAgent != null) {
                i = userAgent.hashCode();
            } else {
                i = 0;
            }
            int c = jb.c(this.o, (b + i) * 37, 37);
            Config config = this.p;
            if (config != null) {
                i2 = config.hashCode();
            } else {
                i2 = 0;
            }
            int i13 = (c + i2) * 37;
            Registration registration = this.q;
            if (registration != null) {
                i3 = registration.hashCode();
            } else {
                i3 = 0;
            }
            int i14 = (i13 + i3) * 37;
            Auth auth = this.r;
            if (auth != null) {
                i4 = auth.hashCode();
            } else {
                i4 = 0;
            }
            int i15 = (i14 + i4) * 37;
            Onboarding onboarding = this.s;
            if (onboarding != null) {
                i5 = onboarding.hashCode();
            } else {
                i5 = 0;
            }
            int i16 = (i15 + i5) * 37;
            Messaging messaging = this.t;
            if (messaging != null) {
                i6 = messaging.hashCode();
            } else {
                i6 = 0;
            }
            int i17 = (i16 + i6) * 37;
            Users users = this.u;
            if (users != null) {
                i7 = users.hashCode();
            } else {
                i7 = 0;
            }
            int hashCode = (this.D.hashCode() + ((this.C.hashCode() + ((this.B.hashCode() + ((i17 + i7) * 37)) * 37)) * 37)) * 37;
            PushNotifications pushNotifications = this.v;
            if (pushNotifications != null) {
                i8 = pushNotifications.hashCode();
            } else {
                i8 = 0;
            }
            int i18 = (hashCode + i8) * 37;
            Plan plan = this.w;
            if (plan != null) {
                i9 = plan.hashCode();
            } else {
                i9 = 0;
            }
            int i19 = (i18 + i9) * 37;
            SystemInfo systemInfo = this.x;
            if (systemInfo != null) {
                i10 = systemInfo.hashCode();
            } else {
                i10 = 0;
            }
            int i20 = (i19 + i10) * 37;
            Instant instant = this.y;
            if (instant != null) {
                i12 = instant.hashCode();
            }
            int hashCode2 = this.A.hashCode() + jb.b((i20 + i12) * 37, 37, this.z);
            this.l = hashCode2;
            return hashCode2;
        }
        return i11;
    }

    public final String toString() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("version=" + this.m);
        UserAgent userAgent = this.n;
        if (userAgent != null) {
            arrayList.add("user_agent=" + userAgent);
        }
        q.z(this.o, "locale=", arrayList);
        Config config = this.p;
        if (config != null) {
            arrayList.add("config=" + config);
        }
        Registration registration = this.q;
        if (registration != null) {
            arrayList.add("registration=" + registration);
        }
        Auth auth = this.r;
        if (auth != null) {
            arrayList.add("auth=" + auth);
        }
        Onboarding onboarding = this.s;
        if (onboarding != null) {
            arrayList.add("onboarding=" + onboarding);
        }
        Messaging messaging = this.t;
        if (messaging != null) {
            arrayList.add("messaging=" + messaging);
        }
        Users users = this.u;
        if (users != null) {
            arrayList.add("users=" + users);
        }
        Map map = this.B;
        if (!map.isEmpty()) {
            arrayList.add("transfers=" + map);
        }
        Map map2 = this.C;
        if (!map2.isEmpty()) {
            arrayList.add("transfer_notification_responses=" + map2);
        }
        Map map3 = this.D;
        if (!map3.isEmpty()) {
            arrayList.add("searches=" + map3);
        }
        PushNotifications pushNotifications = this.v;
        if (pushNotifications != null) {
            arrayList.add("notifications=" + pushNotifications);
        }
        Plan plan = this.w;
        if (plan != null) {
            arrayList.add("plan=" + plan);
        }
        SystemInfo systemInfo = this.x;
        if (systemInfo != null) {
            arrayList.add("system_info=" + systemInfo);
        }
        Instant instant = this.y;
        if (instant != null) {
            arrayList.add("launch_time=" + instant);
        }
        q.A("shutting_down=", this.z, arrayList);
        q.z(this.A, "test_plain_text=", arrayList);
        return CollectionsKt.y(arrayList, ", ", "State{", "}", null, 56);
    }
}
