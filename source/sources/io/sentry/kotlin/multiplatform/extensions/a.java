package io.sentry.kotlin.multiplatform.extensions;

import defpackage.ma;
import io.sentry.Breadcrumb;
import io.sentry.Hint;
import io.sentry.ILogger;
import io.sentry.IScope;
import io.sentry.PropagationContext;
import io.sentry.Scope;
import io.sentry.SentryEvent;
import io.sentry.SentryOptions;
import io.sentry.kotlin.multiplatform.SentryLevel;
import io.sentry.kotlin.multiplatform.protocol.Message;
import io.sentry.kotlin.multiplatform.protocol.SentryId;
import io.sentry.kotlin.multiplatform.protocol.User;
import io.sentry.protocol.Contexts;
import io.sentry.protocol.SentryException;
import io.sentry.util.CollectionUtils;
import io.sentry.util.LazyEvaluator;
import io.sentry.util.LoadClass;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class a implements SentryOptions.BeforeSendCallback, LazyEvaluator.Evaluator, Scope.IWithPropagationContext {
    public final /* synthetic */ int j;
    public final /* synthetic */ Object k;

    public /* synthetic */ a(int i, Object obj) {
        this.j = i;
        this.k = obj;
    }

    @Override // io.sentry.Scope.IWithPropagationContext
    public void a(PropagationContext propagationContext) {
        ((IScope) this.k).L(new PropagationContext());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v34, types: [java.lang.Object, io.sentry.protocol.User] */
    /* JADX WARN: Type inference failed for: r0v35, types: [java.lang.Object, io.sentry.protocol.Message] */
    /* JADX WARN: Type inference failed for: r11v1, types: [io.sentry.kotlin.multiplatform.SentryBaseEvent, java.lang.Object, io.sentry.kotlin.multiplatform.SentryEvent] */
    /* JADX WARN: Type inference failed for: r2v15, types: [io.sentry.kotlin.multiplatform.protocol.Message, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v4, types: [io.sentry.kotlin.multiplatform.protocol.Breadcrumb, java.lang.Object] */
    public SentryEvent b(SentryEvent sentryEvent, Hint hint) {
        SentryLevel sentryLevel;
        Message message;
        User user;
        io.sentry.SentryLevel sentryLevel2;
        io.sentry.protocol.Message message2;
        io.sentry.protocol.User user2;
        ArrayList arrayList;
        io.sentry.SentryLevel sentryLevel3;
        LinkedHashMap linkedHashMap;
        LinkedHashMap linkedHashMap2;
        ArrayList arrayList2;
        SentryLevel sentryLevel4;
        LinkedHashMap linkedHashMap3;
        LinkedHashMap linkedHashMap4;
        ma maVar = ((io.sentry.kotlin.multiplatform.SentryOptions) this.k).e;
        if (maVar == 0) {
            return sentryEvent;
        }
        SentryId sentryId = SentryId.c;
        sentryId.getClass();
        ?? obj = new Object();
        obj.a = sentryId;
        obj.b = new ArrayList();
        obj.c = new LinkedHashMap();
        obj.g = new ArrayList();
        new ArrayList();
        obj.a = new SentryId(String.valueOf(sentryEvent.j));
        io.sentry.SentryLevel sentryLevel5 = sentryEvent.D;
        ArrayList arrayList3 = null;
        if (sentryLevel5 != null) {
            sentryLevel = SentryLevelExtensions_jvmKt.b(sentryLevel5);
        } else {
            sentryLevel = null;
        }
        obj.d = sentryLevel;
        io.sentry.protocol.Message message3 = sentryEvent.z;
        if (message3 != null) {
            String str = message3.k;
            List list = message3.l;
            String str2 = message3.j;
            ?? obj2 = new Object();
            obj2.a = str;
            obj2.b = list;
            obj2.c = str2;
            message = obj2;
        } else {
            message = null;
        }
        obj.e = message;
        obj.f = sentryEvent.A;
        obj.h = sentryEvent.o;
        obj.i = sentryEvent.p;
        obj.j = sentryEvent.q;
        io.sentry.protocol.User user3 = sentryEvent.r;
        if (user3 != null) {
            user = new User(null);
            user.b = user3.k;
            user.c = user3.l;
            user.a = user3.j;
            user.d = user3.m;
            ConcurrentHashMap concurrentHashMap = user3.p;
            if (concurrentHashMap != null) {
                linkedHashMap3 = new LinkedHashMap(concurrentHashMap);
            } else {
                linkedHashMap3 = null;
            }
            user.e = linkedHashMap3;
            AbstractMap abstractMap = user3.q;
            if (abstractMap != null) {
                linkedHashMap4 = new LinkedHashMap(abstractMap);
            } else {
                linkedHashMap4 = null;
            }
            user.f = linkedHashMap4;
        } else {
            user = null;
        }
        obj.k = user;
        obj.l = sentryEvent.t;
        obj.m = sentryEvent.u;
        Contexts contexts = sentryEvent.k;
        contexts.getClass();
        LinkedHashMap linkedHashMap5 = new LinkedHashMap();
        Enumeration keys = contexts.j.keys();
        keys.getClass();
        while (keys.hasMoreElements()) {
            String str3 = (String) keys.nextElement();
            Object c = contexts.c(str3);
            if (c != null) {
                linkedHashMap5.put(str3, c);
            }
        }
        List list2 = sentryEvent.F;
        if (list2 != null) {
            obj.g = list2;
        }
        ArrayList d = sentryEvent.d();
        if (d != null) {
            ArrayList arrayList4 = new ArrayList(CollectionsKt.m(d, 10));
            Iterator it = d.iterator();
            while (it.hasNext()) {
                SentryException sentryException = (SentryException) it.next();
                sentryException.getClass();
                arrayList4.add(new io.sentry.kotlin.multiplatform.protocol.SentryException(sentryException.j, sentryException.k, sentryException.l, sentryException.m));
            }
            new ArrayList(arrayList4);
        }
        List<Breadcrumb> list3 = sentryEvent.v;
        if (list3 != null) {
            ArrayList arrayList5 = new ArrayList(CollectionsKt.m(list3, 10));
            for (Breadcrumb breadcrumb : list3) {
                breadcrumb.getClass();
                ?? obj3 = new Object();
                obj3.a = null;
                obj3.e = null;
                obj3.c = breadcrumb.m;
                obj3.b = breadcrumb.n;
                obj3.d = breadcrumb.p;
                ConcurrentHashMap concurrentHashMap2 = breadcrumb.o;
                concurrentHashMap2.getClass();
                obj3.e = new LinkedHashMap(concurrentHashMap2);
                io.sentry.SentryLevel sentryLevel6 = breadcrumb.r;
                if (sentryLevel6 != null) {
                    sentryLevel4 = SentryLevelExtensions_jvmKt.b(sentryLevel6);
                } else {
                    sentryLevel4 = null;
                }
                obj3.a = sentryLevel4;
                arrayList5.add(obj3);
            }
            obj.b = new ArrayList(arrayList5);
        }
        AbstractMap abstractMap2 = sentryEvent.n;
        if (abstractMap2 != null) {
            obj.c = abstractMap2;
        }
        io.sentry.kotlin.multiplatform.SentryEvent sentryEvent2 = (io.sentry.kotlin.multiplatform.SentryEvent) maVar.b(obj);
        if (!Intrinsics.a(sentryEvent.o, sentryEvent2.h)) {
            sentryEvent.o = sentryEvent2.h;
        }
        if (!Intrinsics.a(sentryEvent.u, sentryEvent2.m)) {
            sentryEvent.u = sentryEvent2.m;
        }
        SentryLevel sentryLevel7 = sentryEvent2.d;
        if (sentryLevel7 != null) {
            sentryLevel2 = SentryLevelExtensions_jvmKt.a(sentryLevel7);
        } else {
            sentryLevel2 = null;
        }
        sentryEvent.D = sentryLevel2;
        Message message4 = sentryEvent2.e;
        if (message4 != null) {
            ?? obj4 = new Object();
            obj4.k = message4.a;
            List list4 = message4.b;
            if (list4 != null) {
                arrayList2 = new ArrayList(list4);
            } else {
                arrayList2 = null;
            }
            obj4.l = arrayList2;
            obj4.j = message4.c;
            message2 = obj4;
        } else {
            message2 = null;
        }
        sentryEvent.z = message2;
        sentryEvent.A = sentryEvent2.f;
        sentryEvent.i(sentryEvent2.g);
        sentryEvent.p = sentryEvent2.i;
        sentryEvent.q = sentryEvent2.j;
        User user4 = sentryEvent2.k;
        if (user4 != null) {
            ?? obj5 = new Object();
            obj5.k = user4.b;
            obj5.l = user4.c;
            obj5.j = user4.a;
            obj5.m = user4.d;
            LinkedHashMap linkedHashMap6 = user4.e;
            if (linkedHashMap6 != null) {
                linkedHashMap = new LinkedHashMap(linkedHashMap6);
            } else {
                linkedHashMap = null;
            }
            obj5.p = CollectionUtils.a(linkedHashMap);
            LinkedHashMap linkedHashMap7 = user4.f;
            if (linkedHashMap7 != null) {
                linkedHashMap2 = new LinkedHashMap(linkedHashMap7);
            } else {
                linkedHashMap2 = null;
            }
            obj5.q = linkedHashMap2;
            user2 = obj5;
        } else {
            user2 = null;
        }
        sentryEvent.r = user2;
        sentryEvent.t = sentryEvent2.l;
        ArrayList arrayList6 = sentryEvent2.b;
        if (arrayList6 != null) {
            arrayList = new ArrayList(CollectionsKt.m(arrayList6, 10));
            Iterator it2 = arrayList6.iterator();
            while (it2.hasNext()) {
                io.sentry.kotlin.multiplatform.protocol.Breadcrumb breadcrumb2 = (io.sentry.kotlin.multiplatform.protocol.Breadcrumb) it2.next();
                breadcrumb2.getClass();
                Breadcrumb breadcrumb3 = new Breadcrumb();
                breadcrumb3.m = breadcrumb2.c;
                breadcrumb3.n = breadcrumb2.b;
                breadcrumb3.p = breadcrumb2.d;
                LinkedHashMap linkedHashMap8 = breadcrumb2.e;
                if (linkedHashMap8 != null) {
                    for (Map.Entry entry : linkedHashMap8.entrySet()) {
                        breadcrumb3.c(entry.getValue(), (String) entry.getKey());
                    }
                }
                SentryLevel sentryLevel8 = breadcrumb2.a;
                if (sentryLevel8 != null) {
                    sentryLevel3 = SentryLevelExtensions_jvmKt.a(sentryLevel8);
                } else {
                    sentryLevel3 = null;
                }
                breadcrumb3.r = sentryLevel3;
                arrayList.add(breadcrumb3);
            }
        } else {
            arrayList = null;
        }
        if (arrayList != null) {
            arrayList3 = new ArrayList(arrayList);
        }
        sentryEvent.v = arrayList3;
        sentryEvent.j = new io.sentry.protocol.SentryId(String.valueOf(sentryEvent2.a.b));
        sentryEvent.c(sentryEvent2.c);
        return sentryEvent;
    }

    @Override // io.sentry.util.LazyEvaluator.Evaluator
    public Object c() {
        int i = this.j;
        Object obj = this.k;
        switch (i) {
            case 1:
                return Boolean.valueOf(LoadClass.a((SentryOptions) obj, "androidx.core.view.ScrollingView"));
            default:
                return Boolean.valueOf(LoadClass.b("androidx.core.app.FrameMetricsAggregator", (ILogger) obj));
        }
    }

    public /* synthetic */ a(LoadClass loadClass, Object obj, int i) {
        this.j = i;
        this.k = obj;
    }
}
