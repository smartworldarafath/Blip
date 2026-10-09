package io.sentry.protocol;

import androidx.compose.foundation.text.KeyModifiers;
import androidx.datastore.preferences.PreferencesProto$Value;
import io.sentry.ILogger;
import io.sentry.ISentryLifecycleToken;
import io.sentry.JsonDeserializer;
import io.sentry.JsonObjectWriter;
import io.sentry.JsonSerializable;
import io.sentry.ObjectReader;
import io.sentry.ObjectWriter;
import io.sentry.ProfileContext;
import io.sentry.SpanContext;
import io.sentry.protocol.App;
import io.sentry.protocol.Browser;
import io.sentry.protocol.Device;
import io.sentry.protocol.Feedback;
import io.sentry.protocol.Gpu;
import io.sentry.protocol.OperatingSystem;
import io.sentry.protocol.SentryRuntime;
import io.sentry.util.AutoClosableReentrantLock;
import io.sentry.util.CollectionUtils;
import io.sentry.util.Objects;
import io.sentry.vendor.gson.stream.JsonToken;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class Contexts implements JsonSerializable {
    public final ConcurrentHashMap j = new ConcurrentHashMap();
    public final AutoClosableReentrantLock k = new ReentrantLock();

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Deserializer implements JsonDeserializer<Contexts> {
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [io.sentry.protocol.Contexts] */
        /* JADX WARN: Type inference failed for: r12v0, types: [io.sentry.ObjectReader] */
        /* JADX WARN: Type inference failed for: r1v3, types: [java.lang.Object, io.sentry.protocol.Spring] */
        /* JADX WARN: Type inference failed for: r1v4, types: [io.sentry.protocol.Response, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r2v54, types: [io.sentry.JsonDeserializer, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r4v11 */
        /* JADX WARN: Type inference failed for: r4v14 */
        /* JADX WARN: Type inference failed for: r4v17 */
        /* JADX WARN: Type inference failed for: r4v18 */
        /* JADX WARN: Type inference failed for: r4v19 */
        /* JADX WARN: Type inference failed for: r4v5 */
        /* JADX WARN: Type inference failed for: r4v8 */
        public static Contexts b(ObjectReader objectReader, ILogger iLogger) {
            char c;
            ?? r4;
            ?? contexts = new Contexts();
            objectReader.H0();
            while (objectReader.peek() == JsonToken.NAME) {
                String e0 = objectReader.e0();
                e0.getClass();
                switch (e0.hashCode()) {
                    case -1335157162:
                        if (e0.equals("device")) {
                            c = 0;
                            break;
                        }
                        break;
                    case -895679987:
                        if (e0.equals("spring")) {
                            c = 1;
                            break;
                        }
                        break;
                    case -340323263:
                        if (e0.equals("response")) {
                            c = 2;
                            break;
                        }
                        break;
                    case -309425751:
                        if (e0.equals("profile")) {
                            c = 3;
                            break;
                        }
                        break;
                    case -191501435:
                        if (e0.equals("feedback")) {
                            c = 4;
                            break;
                        }
                        break;
                    case 3556:
                        if (e0.equals("os")) {
                            c = 5;
                            break;
                        }
                        break;
                    case 96801:
                        if (e0.equals("app")) {
                            c = 6;
                            break;
                        }
                        break;
                    case 102572:
                        if (e0.equals("gpu")) {
                            c = 7;
                            break;
                        }
                        break;
                    case 97513095:
                        if (e0.equals("flags")) {
                            c = '\b';
                            break;
                        }
                        break;
                    case 110620997:
                        if (e0.equals("trace")) {
                            c = '\t';
                            break;
                        }
                        break;
                    case 150940456:
                        if (e0.equals("browser")) {
                            c = '\n';
                            break;
                        }
                        break;
                    case 1550962648:
                        if (e0.equals("runtime")) {
                            c = 11;
                            break;
                        }
                        break;
                }
                c = 65535;
                ConcurrentHashMap concurrentHashMap = null;
                ArrayList arrayList = null;
                ConcurrentHashMap concurrentHashMap2 = null;
                switch (c) {
                    case 0:
                        contexts.o(Device.Deserializer.b(objectReader, iLogger));
                        break;
                    case 1:
                        objectReader.H0();
                        ?? obj = new Object();
                        while (objectReader.peek() == JsonToken.NAME) {
                            String e02 = objectReader.e0();
                            e02.getClass();
                            if (!e02.equals("active_profiles")) {
                                if (concurrentHashMap == null) {
                                    concurrentHashMap = new ConcurrentHashMap();
                                }
                                objectReader.D(iLogger, concurrentHashMap, e02);
                            } else {
                                List list = (List) objectReader.G0();
                                if (list != null) {
                                    String[] strArr = new String[list.size()];
                                    list.toArray(strArr);
                                    obj.j = strArr;
                                }
                            }
                        }
                        obj.k = concurrentHashMap;
                        objectReader.i0();
                        contexts.u(obj);
                        break;
                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                        objectReader.H0();
                        ?? obj2 = new Object();
                        while (objectReader.peek() == JsonToken.NAME) {
                            String e03 = objectReader.e0();
                            e03.getClass();
                            switch (e03.hashCode()) {
                                case -891699686:
                                    if (e03.equals("status_code")) {
                                        r4 = false;
                                        break;
                                    }
                                    break;
                                case 3076010:
                                    if (e03.equals("data")) {
                                        r4 = true;
                                        break;
                                    }
                                    break;
                                case 795307910:
                                    if (e03.equals("headers")) {
                                        r4 = 2;
                                        break;
                                    }
                                    break;
                                case 952189583:
                                    if (e03.equals("cookies")) {
                                        r4 = 3;
                                        break;
                                    }
                                    break;
                                case 1252988030:
                                    if (e03.equals("body_size")) {
                                        r4 = 4;
                                        break;
                                    }
                                    break;
                            }
                            r4 = -1;
                            switch (r4) {
                                case 0:
                                    obj2.l = objectReader.y();
                                    break;
                                case 1:
                                    obj2.n = objectReader.G0();
                                    break;
                                case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                                    Map map = (Map) objectReader.G0();
                                    if (map == null) {
                                        break;
                                    } else {
                                        obj2.k = CollectionUtils.a(map);
                                        break;
                                    }
                                case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                                    obj2.j = objectReader.L();
                                    break;
                                case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                                    obj2.m = objectReader.F();
                                    break;
                                default:
                                    if (concurrentHashMap2 == null) {
                                        concurrentHashMap2 = new ConcurrentHashMap();
                                    }
                                    objectReader.D(iLogger, concurrentHashMap2, e03);
                                    break;
                            }
                        }
                        obj2.o = concurrentHashMap2;
                        objectReader.i0();
                        contexts.s(obj2);
                        break;
                    case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                        contexts.k(ProfileContext.Deserializer.b(objectReader, iLogger), "profile");
                        break;
                    case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                        contexts.k(Feedback.Deserializer.b(objectReader, iLogger), "feedback");
                        break;
                    case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                        contexts.r(OperatingSystem.Deserializer.b(objectReader, iLogger));
                        break;
                    case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                        contexts.m(App.Deserializer.b(objectReader, iLogger));
                        break;
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        contexts.q(Gpu.Deserializer.b(objectReader, iLogger));
                        break;
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        objectReader.H0();
                        ConcurrentHashMap concurrentHashMap3 = null;
                        while (objectReader.peek() == JsonToken.NAME) {
                            String e04 = objectReader.e0();
                            e04.getClass();
                            if (!e04.equals("values")) {
                                if (concurrentHashMap3 == null) {
                                    concurrentHashMap3 = new ConcurrentHashMap();
                                }
                                objectReader.D(iLogger, concurrentHashMap3, e04);
                            } else {
                                arrayList = objectReader.R0(iLogger, new Object());
                            }
                        }
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                        }
                        FeatureFlags featureFlags = new FeatureFlags(arrayList);
                        featureFlags.k = concurrentHashMap3;
                        objectReader.i0();
                        contexts.p(featureFlags);
                        break;
                    case KeyModifiers.a /* 9 */:
                        contexts.v(SpanContext.Deserializer.b(objectReader, iLogger));
                        break;
                    case KeyModifiers.b /* 10 */:
                        contexts.n(Browser.Deserializer.b(objectReader, iLogger));
                        break;
                    case 11:
                        contexts.t(SentryRuntime.Deserializer.b(objectReader, iLogger));
                        break;
                    default:
                        Object G0 = objectReader.G0();
                        if (G0 == null) {
                            break;
                        } else {
                            contexts.k(G0, e0);
                            break;
                        }
                }
            }
            objectReader.i0();
            return contexts;
        }

        @Override // io.sentry.JsonDeserializer
        public final /* bridge */ /* synthetic */ Object a(ObjectReader objectReader, ILogger iLogger) {
            return b(objectReader, iLogger);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.concurrent.locks.ReentrantLock, io.sentry.util.AutoClosableReentrantLock] */
    /* JADX WARN: Type inference failed for: r0v11, types: [io.sentry.protocol.Gpu, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v12, types: [java.lang.Object, io.sentry.protocol.Feedback] */
    /* JADX WARN: Type inference failed for: r0v13, types: [io.sentry.protocol.SentryRuntime, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v14, types: [java.lang.Object, io.sentry.protocol.OperatingSystem] */
    /* JADX WARN: Type inference failed for: r0v15, types: [io.sentry.protocol.Device, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v16, types: [io.sentry.protocol.Browser, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v17, types: [io.sentry.protocol.App, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v7, types: [java.lang.Object, io.sentry.protocol.Spring] */
    /* JADX WARN: Type inference failed for: r0v8, types: [io.sentry.protocol.Response, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v9, types: [java.lang.Object, io.sentry.ProfileContext] */
    public Contexts(Contexts contexts) {
        String[] strArr;
        for (Map.Entry entry : contexts.b()) {
            if (entry != null) {
                Object value = entry.getValue();
                if ("app".equals(entry.getKey()) && (value instanceof App)) {
                    App app = (App) value;
                    ?? obj = new Object();
                    obj.p = app.p;
                    obj.j = app.j;
                    obj.n = app.n;
                    obj.k = app.k;
                    obj.o = app.o;
                    obj.m = app.m;
                    obj.l = app.l;
                    obj.q = CollectionUtils.a(app.q);
                    obj.t = app.t;
                    List list = app.r;
                    obj.r = list != null ? new ArrayList(list) : null;
                    obj.s = app.s;
                    obj.u = app.u;
                    obj.v = app.v;
                    obj.w = CollectionUtils.a(app.w);
                    m(obj);
                } else if ("browser".equals(entry.getKey()) && (value instanceof Browser)) {
                    Browser browser = (Browser) value;
                    ?? obj2 = new Object();
                    obj2.j = browser.j;
                    obj2.k = browser.k;
                    obj2.l = CollectionUtils.a(browser.l);
                    n(obj2);
                } else if ("device".equals(entry.getKey()) && (value instanceof Device)) {
                    Device device = (Device) value;
                    ?? obj3 = new Object();
                    obj3.j = device.j;
                    obj3.k = device.k;
                    obj3.l = device.l;
                    obj3.m = device.m;
                    obj3.n = device.n;
                    obj3.o = device.o;
                    obj3.r = device.r;
                    obj3.s = device.s;
                    obj3.t = device.t;
                    obj3.u = device.u;
                    obj3.v = device.v;
                    obj3.w = device.w;
                    obj3.x = device.x;
                    obj3.y = device.y;
                    obj3.z = device.z;
                    obj3.A = device.A;
                    obj3.B = device.B;
                    obj3.C = device.C;
                    obj3.D = device.D;
                    obj3.E = device.E;
                    obj3.F = device.F;
                    obj3.G = device.G;
                    obj3.H = device.H;
                    obj3.J = device.J;
                    obj3.L = device.L;
                    obj3.M = device.M;
                    obj3.q = device.q;
                    String[] strArr2 = device.p;
                    if (strArr2 != null) {
                        strArr = (String[]) strArr2.clone();
                    } else {
                        strArr = null;
                    }
                    obj3.p = strArr;
                    obj3.K = device.K;
                    TimeZone timeZone = device.I;
                    obj3.I = timeZone != null ? (TimeZone) timeZone.clone() : null;
                    obj3.N = device.N;
                    obj3.O = device.O;
                    obj3.P = device.P;
                    obj3.Q = device.Q;
                    obj3.R = CollectionUtils.a(device.R);
                    o(obj3);
                } else if ("os".equals(entry.getKey()) && (value instanceof OperatingSystem)) {
                    OperatingSystem operatingSystem = (OperatingSystem) value;
                    ?? obj4 = new Object();
                    obj4.j = operatingSystem.j;
                    obj4.k = operatingSystem.k;
                    obj4.l = operatingSystem.l;
                    obj4.m = operatingSystem.m;
                    obj4.n = operatingSystem.n;
                    obj4.o = operatingSystem.o;
                    obj4.p = CollectionUtils.a(operatingSystem.p);
                    r(obj4);
                } else if ("runtime".equals(entry.getKey()) && (value instanceof SentryRuntime)) {
                    SentryRuntime sentryRuntime = (SentryRuntime) value;
                    ?? obj5 = new Object();
                    obj5.j = sentryRuntime.j;
                    obj5.k = sentryRuntime.k;
                    obj5.l = sentryRuntime.l;
                    obj5.m = CollectionUtils.a(sentryRuntime.m);
                    t(obj5);
                } else if ("feedback".equals(entry.getKey()) && (value instanceof Feedback)) {
                    Feedback feedback = (Feedback) value;
                    ?? obj6 = new Object();
                    obj6.j = feedback.j;
                    obj6.k = feedback.k;
                    obj6.l = feedback.l;
                    obj6.m = feedback.m;
                    obj6.n = feedback.n;
                    obj6.o = feedback.o;
                    obj6.p = CollectionUtils.a(feedback.p);
                    k(obj6, "feedback");
                } else if ("gpu".equals(entry.getKey()) && (value instanceof Gpu)) {
                    Gpu gpu = (Gpu) value;
                    ?? obj7 = new Object();
                    obj7.j = gpu.j;
                    obj7.k = gpu.k;
                    obj7.l = gpu.l;
                    obj7.m = gpu.m;
                    obj7.n = gpu.n;
                    obj7.o = gpu.o;
                    obj7.p = gpu.p;
                    obj7.q = gpu.q;
                    obj7.r = gpu.r;
                    obj7.s = CollectionUtils.a(gpu.s);
                    q(obj7);
                } else if ("trace".equals(entry.getKey()) && (value instanceof SpanContext)) {
                    v(new SpanContext((SpanContext) value));
                } else if ("profile".equals(entry.getKey()) && (value instanceof ProfileContext)) {
                    ProfileContext profileContext = (ProfileContext) value;
                    ?? obj8 = new Object();
                    obj8.j = profileContext.j;
                    ConcurrentHashMap a = CollectionUtils.a(profileContext.k);
                    if (a != null) {
                        obj8.k = a;
                    }
                    k(obj8, "profile");
                } else if ("response".equals(entry.getKey()) && (value instanceof Response)) {
                    Response response = (Response) value;
                    ?? obj9 = new Object();
                    obj9.j = response.j;
                    obj9.k = CollectionUtils.a(response.k);
                    obj9.o = CollectionUtils.a(response.o);
                    obj9.l = response.l;
                    obj9.m = response.m;
                    obj9.n = response.n;
                    s(obj9);
                } else if ("spring".equals(entry.getKey()) && (value instanceof Spring)) {
                    Spring spring = (Spring) value;
                    ?? obj10 = new Object();
                    obj10.j = spring.j;
                    obj10.k = CollectionUtils.a(spring.k);
                    u(obj10);
                } else {
                    k(value, (String) entry.getKey());
                }
            }
        }
    }

    public boolean a(Object obj) {
        if (obj == null) {
            return false;
        }
        return this.j.containsKey(obj);
    }

    public Set b() {
        return this.j.entrySet();
    }

    public Object c(Object obj) {
        if (obj == null) {
            return null;
        }
        return this.j.get(obj);
    }

    public App d() {
        return (App) w(App.class, "app");
    }

    public Device e() {
        return (Device) w(Device.class, "device");
    }

    public final boolean equals(Object obj) {
        if (obj != null && (obj instanceof Contexts)) {
            return this.j.equals(((Contexts) obj).j);
        }
        return false;
    }

    public FeatureFlags f() {
        return (FeatureFlags) w(FeatureFlags.class, "flags");
    }

    public OperatingSystem g() {
        return (OperatingSystem) w(OperatingSystem.class, "os");
    }

    public SentryRuntime h() {
        return (SentryRuntime) w(SentryRuntime.class, "runtime");
    }

    public final int hashCode() {
        return this.j.hashCode();
    }

    public SpanContext i() {
        return (SpanContext) w(SpanContext.class, "trace");
    }

    public Enumeration j() {
        return this.j.keys();
    }

    public Object k(Object obj, String str) {
        if (str == null) {
            return null;
        }
        ConcurrentHashMap concurrentHashMap = this.j;
        if (obj == null) {
            return concurrentHashMap.remove(str);
        }
        return concurrentHashMap.put(str, obj);
    }

    public void l(Contexts contexts) {
        if (contexts == null) {
            return;
        }
        this.j.putAll(contexts.j);
    }

    public void m(App app) {
        k(app, "app");
    }

    public void n(Browser browser) {
        k(browser, "browser");
    }

    public void o(Device device) {
        k(device, "device");
    }

    public void p(FeatureFlags featureFlags) {
        k(featureFlags, "flags");
    }

    public void q(Gpu gpu) {
        k(gpu, "gpu");
    }

    public void r(OperatingSystem operatingSystem) {
        k(operatingSystem, "os");
    }

    public void s(Response response) {
        ISentryLifecycleToken a = this.k.a();
        try {
            k(response, "response");
            a.close();
        } catch (Throwable th) {
            try {
                a.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    @Override // io.sentry.JsonSerializable
    public void serialize(ObjectWriter objectWriter, ILogger iLogger) {
        JsonObjectWriter jsonObjectWriter = (JsonObjectWriter) objectWriter;
        jsonObjectWriter.a();
        ArrayList<String> list = Collections.list(j());
        Collections.sort(list);
        for (String str : list) {
            Object c = c(str);
            if (c != null) {
                jsonObjectWriter.c(str);
                jsonObjectWriter.g(iLogger, c);
            }
        }
        jsonObjectWriter.b();
    }

    public void t(SentryRuntime sentryRuntime) {
        k(sentryRuntime, "runtime");
    }

    public void u(Spring spring) {
        k(spring, "spring");
    }

    public void v(SpanContext spanContext) {
        Objects.b(spanContext, "traceContext is required");
        k(spanContext, "trace");
    }

    public final Object w(Class cls, String str) {
        Object c = c(str);
        if (cls.isInstance(c)) {
            return cls.cast(c);
        }
        return null;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.concurrent.locks.ReentrantLock, io.sentry.util.AutoClosableReentrantLock] */
    public Contexts() {
    }
}
