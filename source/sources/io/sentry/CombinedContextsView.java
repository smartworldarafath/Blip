package io.sentry;

import io.sentry.protocol.App;
import io.sentry.protocol.Browser;
import io.sentry.protocol.Contexts;
import io.sentry.protocol.Device;
import io.sentry.protocol.FeatureFlags;
import io.sentry.protocol.Gpu;
import io.sentry.protocol.OperatingSystem;
import io.sentry.protocol.Response;
import io.sentry.protocol.SentryRuntime;
import io.sentry.protocol.Spring;
import java.util.Enumeration;
import java.util.Set;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class CombinedContextsView extends Contexts {
    public final Contexts l;
    public final Contexts m;
    public final Contexts n;
    public final ScopeType o;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: io.sentry.CombinedContextsView$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[ScopeType.values().length];
            a = iArr;
            try {
                iArr[ScopeType.CURRENT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[ScopeType.ISOLATION.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[ScopeType.GLOBAL.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public CombinedContextsView(Contexts contexts, Contexts contexts2, Contexts contexts3, ScopeType scopeType) {
        this.l = contexts;
        this.m = contexts2;
        this.n = contexts3;
        this.o = scopeType;
    }

    @Override // io.sentry.protocol.Contexts
    public final boolean a(Object obj) {
        throw null;
    }

    @Override // io.sentry.protocol.Contexts
    public final Set b() {
        return y().j.entrySet();
    }

    @Override // io.sentry.protocol.Contexts
    public final Object c(Object obj) {
        Object c = this.n.c(obj);
        if (c != null) {
            return c;
        }
        Object c2 = this.m.c(obj);
        if (c2 != null) {
            return c2;
        }
        return this.l.c(obj);
    }

    @Override // io.sentry.protocol.Contexts
    public final App d() {
        App d = this.n.d();
        if (d != null) {
            return d;
        }
        App d2 = this.m.d();
        if (d2 != null) {
            return d2;
        }
        return this.l.d();
    }

    @Override // io.sentry.protocol.Contexts
    public final Device e() {
        Device e = this.n.e();
        if (e != null) {
            return e;
        }
        Device e2 = this.m.e();
        if (e2 != null) {
            return e2;
        }
        return this.l.e();
    }

    @Override // io.sentry.protocol.Contexts
    public final FeatureFlags f() {
        FeatureFlags f = this.n.f();
        if (f != null) {
            return f;
        }
        FeatureFlags f2 = this.m.f();
        if (f2 != null) {
            return f2;
        }
        return this.l.f();
    }

    @Override // io.sentry.protocol.Contexts
    public final OperatingSystem g() {
        OperatingSystem g = this.n.g();
        if (g != null) {
            return g;
        }
        OperatingSystem g2 = this.m.g();
        if (g2 != null) {
            return g2;
        }
        return this.l.g();
    }

    @Override // io.sentry.protocol.Contexts
    public final SentryRuntime h() {
        SentryRuntime h = this.n.h();
        if (h != null) {
            return h;
        }
        SentryRuntime h2 = this.m.h();
        if (h2 != null) {
            return h2;
        }
        return this.l.h();
    }

    @Override // io.sentry.protocol.Contexts
    public final SpanContext i() {
        SpanContext i = this.n.i();
        if (i != null) {
            return i;
        }
        SpanContext i2 = this.m.i();
        if (i2 != null) {
            return i2;
        }
        return this.l.i();
    }

    @Override // io.sentry.protocol.Contexts
    public final Enumeration j() {
        return y().j.keys();
    }

    @Override // io.sentry.protocol.Contexts
    public final Object k(Object obj, String str) {
        return x().k(obj, str);
    }

    @Override // io.sentry.protocol.Contexts
    public final void l(Contexts contexts) {
        throw null;
    }

    @Override // io.sentry.protocol.Contexts
    public final void m(App app) {
        x().m(app);
    }

    @Override // io.sentry.protocol.Contexts
    public final void n(Browser browser) {
        x().n(browser);
    }

    @Override // io.sentry.protocol.Contexts
    public final void o(Device device) {
        x().o(device);
    }

    @Override // io.sentry.protocol.Contexts
    public final void p(FeatureFlags featureFlags) {
        throw null;
    }

    @Override // io.sentry.protocol.Contexts
    public final void q(Gpu gpu) {
        x().q(gpu);
    }

    @Override // io.sentry.protocol.Contexts
    public final void r(OperatingSystem operatingSystem) {
        x().r(operatingSystem);
    }

    @Override // io.sentry.protocol.Contexts
    public final void s(Response response) {
        x().s(response);
    }

    @Override // io.sentry.protocol.Contexts, io.sentry.JsonSerializable
    public final void serialize(ObjectWriter objectWriter, ILogger iLogger) {
        y().serialize(objectWriter, iLogger);
    }

    @Override // io.sentry.protocol.Contexts
    public final void t(SentryRuntime sentryRuntime) {
        x().t(sentryRuntime);
    }

    @Override // io.sentry.protocol.Contexts
    public final void u(Spring spring) {
        x().u(spring);
    }

    @Override // io.sentry.protocol.Contexts
    public final void v(SpanContext spanContext) {
        x().v(spanContext);
    }

    public final Contexts x() {
        int i = AnonymousClass1.a[this.o.ordinal()];
        Contexts contexts = this.n;
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    return contexts;
                }
                return this.l;
            }
            return this.m;
        }
        return contexts;
    }

    public final Contexts y() {
        Contexts contexts = new Contexts();
        contexts.l(this.l);
        contexts.l(this.m);
        contexts.l(this.n);
        return contexts;
    }
}
