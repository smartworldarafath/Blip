package io.sentry;

import io.sentry.Scope;
import io.sentry.featureflags.FeatureFlagBuffer;
import io.sentry.featureflags.IFeatureFlagBuffer;
import io.sentry.featureflags.NoOpFeatureFlagBuffer;
import io.sentry.protocol.Contexts;
import io.sentry.protocol.FeatureFlags;
import io.sentry.protocol.Request;
import io.sentry.protocol.SentryId;
import io.sentry.protocol.User;
import io.sentry.util.EventProcessorUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class CombinedScopeView implements IScope {
    public final IScope a;
    public final IScope b;
    public final IScope c;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: io.sentry.CombinedScopeView$1, reason: invalid class name */
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
            try {
                a[ScopeType.COMBINED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public CombinedScopeView(IScope iScope, IScope iScope2, IScope iScope3) {
        this.a = iScope;
        this.b = iScope2;
        this.c = iScope3;
    }

    @Override // io.sentry.IScope
    public final void A(SentryEvent sentryEvent) {
        this.a.A(sentryEvent);
    }

    @Override // io.sentry.IScope
    public final Contexts B() {
        IScope iScope = this.a;
        return new CombinedContextsView(iScope.B(), this.b.B(), this.c.B(), iScope.j().getDefaultScopeType());
    }

    @Override // io.sentry.IScope
    public final PropagationContext C(Scope.IWithPropagationContext iWithPropagationContext) {
        return e(null).C(iWithPropagationContext);
    }

    @Override // io.sentry.IScope
    public final String D() {
        String D = this.c.D();
        if (D != null) {
            return D;
        }
        String D2 = this.b.D();
        if (D2 != null) {
            return D2;
        }
        return this.a.D();
    }

    @Override // io.sentry.IScope
    public final void E(Scope.IWithTransaction iWithTransaction) {
        e(null).E(iWithTransaction);
    }

    @Override // io.sentry.IScope
    public final void F(SentryId sentryId) {
        this.a.F(sentryId);
        this.b.F(sentryId);
        this.c.F(sentryId);
    }

    @Override // io.sentry.IScope
    public final void G(ITransaction iTransaction) {
        e(null).G(iTransaction);
    }

    @Override // io.sentry.IScope
    public final List H() {
        List H = this.c.H();
        if (!H.isEmpty()) {
            return H;
        }
        List H2 = this.b.H();
        if (!H2.isEmpty()) {
            return H2;
        }
        return this.a.H();
    }

    @Override // io.sentry.IScope
    public final User I() {
        User I = this.c.I();
        if (I != null) {
            return I;
        }
        User I2 = this.b.I();
        if (I2 != null) {
            return I2;
        }
        return this.a.I();
    }

    @Override // io.sentry.IScope
    public final List J() {
        return EventProcessorUtils.a((CopyOnWriteArrayList) y());
    }

    @Override // io.sentry.IScope
    public final String K() {
        String K = this.c.K();
        if (K != null) {
            return K;
        }
        String K2 = this.b.K();
        if (K2 != null) {
            return K2;
        }
        return this.a.K();
    }

    @Override // io.sentry.IScope
    public final void L(PropagationContext propagationContext) {
        e(null).L(propagationContext);
    }

    @Override // io.sentry.IScope
    public final void a(Breadcrumb breadcrumb, Hint hint) {
        e(null).a(breadcrumb, hint);
    }

    @Override // io.sentry.IScope
    public final ISpan b() {
        ISpan b = this.c.b();
        if (b != null) {
            return b;
        }
        ISpan b2 = this.b.b();
        if (b2 != null) {
            return b2;
        }
        return this.a.b();
    }

    @Override // io.sentry.IScope
    public final FeatureFlags c() {
        return p().c();
    }

    @Override // io.sentry.IScope
    public final void clear() {
        e(null).clear();
    }

    @Override // io.sentry.IScope
    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public final IScope m8clone() {
        return new CombinedScopeView(this.a, this.b.m8clone(), this.c.m8clone());
    }

    @Override // io.sentry.IScope
    public final Request d() {
        Request d = this.c.d();
        if (d != null) {
            return d;
        }
        Request d2 = this.b.d();
        if (d2 != null) {
            return d2;
        }
        return this.a.d();
    }

    public final IScope e(ScopeType scopeType) {
        IScope iScope = this.b;
        IScope iScope2 = this.c;
        IScope iScope3 = this.a;
        if (scopeType != null) {
            int i = AnonymousClass1.a[scopeType.ordinal()];
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i == 4) {
                            return this;
                        }
                    } else {
                        return iScope3;
                    }
                } else {
                    return iScope;
                }
            } else {
                return iScope2;
            }
        }
        int i2 = AnonymousClass1.a[iScope3.j().getDefaultScopeType().ordinal()];
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 != 3) {
                    return iScope2;
                }
                return iScope3;
            }
            return iScope;
        }
        return iScope2;
    }

    @Override // io.sentry.IScope
    public final Map getExtras() {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        concurrentHashMap.putAll(this.a.getExtras());
        concurrentHashMap.putAll(this.b.getExtras());
        concurrentHashMap.putAll(this.c.getExtras());
        return concurrentHashMap;
    }

    @Override // io.sentry.IScope
    public final SentryId h() {
        SentryId h = this.c.h();
        SentryId sentryId = SentryId.k;
        if (!sentryId.equals(h)) {
            return h;
        }
        SentryId h2 = this.b.h();
        if (!sentryId.equals(h2)) {
            return h2;
        }
        return this.a.h();
    }

    @Override // io.sentry.IScope
    public final void i(SentryId sentryId) {
        e(null).i(sentryId);
    }

    @Override // io.sentry.IScope
    public final SentryOptions j() {
        return this.a.j();
    }

    @Override // io.sentry.IScope
    public final ITransaction k() {
        ITransaction k = this.c.k();
        if (k != null) {
            return k;
        }
        ITransaction k2 = this.b.k();
        if (k2 != null) {
            return k2;
        }
        return this.a.k();
    }

    @Override // io.sentry.IScope
    public final Session l() {
        return e(null).l();
    }

    @Override // io.sentry.IScope
    public final Scope.SessionPair m() {
        return e(null).m();
    }

    @Override // io.sentry.IScope
    public final void n(SentryLevel sentryLevel) {
        e(null).n(sentryLevel);
    }

    @Override // io.sentry.IScope
    public final void o() {
        e(null).o();
    }

    /* JADX WARN: Type inference failed for: r8v9, types: [java.lang.Object, io.sentry.featureflags.IFeatureFlagBuffer, io.sentry.featureflags.FeatureFlagBuffer] */
    @Override // io.sentry.IScope
    public final IFeatureFlagBuffer p() {
        FeatureFlagBuffer featureFlagBuffer;
        FeatureFlagBuffer featureFlagBuffer2;
        FeatureFlagBuffer featureFlagBuffer3;
        CopyOnWriteArrayList copyOnWriteArrayList;
        CopyOnWriteArrayList copyOnWriteArrayList2;
        CopyOnWriteArrayList copyOnWriteArrayList3;
        int size;
        int size2;
        SentryOptions j = this.a.j();
        IFeatureFlagBuffer p = this.a.p();
        IFeatureFlagBuffer p2 = this.b.p();
        IFeatureFlagBuffer p3 = this.c.p();
        NoOpFeatureFlagBuffer noOpFeatureFlagBuffer = NoOpFeatureFlagBuffer.a;
        int maxFeatureFlags = j.getMaxFeatureFlags();
        if (maxFeatureFlags > 0) {
            if (p instanceof FeatureFlagBuffer) {
                featureFlagBuffer = (FeatureFlagBuffer) p;
            } else {
                featureFlagBuffer = null;
            }
            if (p2 instanceof FeatureFlagBuffer) {
                featureFlagBuffer2 = (FeatureFlagBuffer) p2;
            } else {
                featureFlagBuffer2 = null;
            }
            if (p3 instanceof FeatureFlagBuffer) {
                featureFlagBuffer3 = (FeatureFlagBuffer) p3;
            } else {
                featureFlagBuffer3 = null;
            }
            if (featureFlagBuffer == null) {
                copyOnWriteArrayList = null;
            } else {
                copyOnWriteArrayList = featureFlagBuffer.a;
            }
            if (featureFlagBuffer2 == null) {
                copyOnWriteArrayList2 = null;
            } else {
                copyOnWriteArrayList2 = featureFlagBuffer2.a;
            }
            if (featureFlagBuffer3 == null) {
                copyOnWriteArrayList3 = null;
            } else {
                copyOnWriteArrayList3 = featureFlagBuffer3.a;
            }
            int i = 0;
            if (copyOnWriteArrayList == null) {
                size = 0;
            } else {
                size = copyOnWriteArrayList.size();
            }
            if (copyOnWriteArrayList2 == null) {
                size2 = 0;
            } else {
                size2 = copyOnWriteArrayList2.size();
            }
            if (copyOnWriteArrayList3 != null) {
                i = copyOnWriteArrayList3.size();
            }
            if (size != 0 || size2 != 0 || i != 0) {
                int i2 = size - 1;
                int i3 = size2 - 1;
                int i4 = i - 1;
                if (copyOnWriteArrayList != null && i2 >= 0 && copyOnWriteArrayList.get(i2) != null) {
                    d.i();
                    return null;
                }
                if (copyOnWriteArrayList2 != null && i3 >= 0 && copyOnWriteArrayList2.get(i3) != null) {
                    d.i();
                    return null;
                }
                if (copyOnWriteArrayList3 != null && i4 >= 0 && copyOnWriteArrayList3.get(i4) != null) {
                    d.i();
                    return null;
                }
                LinkedHashMap linkedHashMap = new LinkedHashMap(maxFeatureFlags);
                linkedHashMap.size();
                ArrayList arrayList = new ArrayList(linkedHashMap.values());
                Collections.reverse(arrayList);
                CopyOnWriteArrayList copyOnWriteArrayList4 = new CopyOnWriteArrayList(arrayList);
                ?? obj = new Object();
                new ReentrantLock();
                obj.a = copyOnWriteArrayList4;
                return obj;
            }
        }
        return noOpFeatureFlagBuffer;
    }

    @Override // io.sentry.IScope
    public final Session q() {
        Session q = this.c.q();
        if (q != null) {
            return q;
        }
        Session q2 = this.b.q();
        if (q2 != null) {
            return q2;
        }
        return this.a.q();
    }

    @Override // io.sentry.IScope
    public final Queue r() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.a.r());
        arrayList.addAll(this.b.r());
        IScope iScope = this.c;
        arrayList.addAll(iScope.r());
        Collections.sort(arrayList);
        Queue e = Scope.e(iScope.j().getMaxBreadcrumbs());
        e.addAll(arrayList);
        return e;
    }

    @Override // io.sentry.IScope
    public final SentryLevel s() {
        SentryLevel s = this.c.s();
        if (s != null) {
            return s;
        }
        SentryLevel s2 = this.b.s();
        if (s2 != null) {
            return s2;
        }
        return this.a.s();
    }

    @Override // io.sentry.IScope
    public final PropagationContext t() {
        return e(null).t();
    }

    @Override // io.sentry.IScope
    public final Session u(Scope.IWithSession iWithSession) {
        return e(null).u(iWithSession);
    }

    @Override // io.sentry.IScope
    public final void v(String str) {
        e(null).v(str);
    }

    @Override // io.sentry.IScope
    public final ISentryClient w() {
        ISentryClient w = this.c.w();
        if (!(w instanceof NoOpSentryClient)) {
            return w;
        }
        ISentryClient w2 = this.b.w();
        if (!(w2 instanceof NoOpSentryClient)) {
            return w2;
        }
        return this.a.w();
    }

    @Override // io.sentry.IScope
    public final Map x() {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        concurrentHashMap.putAll(this.a.x());
        concurrentHashMap.putAll(this.b.x());
        concurrentHashMap.putAll(this.c.x());
        return concurrentHashMap;
    }

    @Override // io.sentry.IScope
    public final List y() {
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        copyOnWriteArrayList.addAll(this.a.y());
        copyOnWriteArrayList.addAll(this.b.y());
        copyOnWriteArrayList.addAll(this.c.y());
        Collections.sort(copyOnWriteArrayList);
        return copyOnWriteArrayList;
    }

    @Override // io.sentry.IScope
    public final List z() {
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        copyOnWriteArrayList.addAll(this.a.z());
        copyOnWriteArrayList.addAll(this.b.z());
        copyOnWriteArrayList.addAll(this.c.z());
        return copyOnWriteArrayList;
    }
}
