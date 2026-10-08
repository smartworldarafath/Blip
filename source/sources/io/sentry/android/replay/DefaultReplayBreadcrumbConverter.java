package io.sentry.android.replay;

import io.sentry.Breadcrumb;
import io.sentry.Hint;
import io.sentry.ReplayBreadcrumbConverter;
import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.android.core.SentryAndroidOptions;
import io.sentry.rrweb.RRWebBreadcrumbEvent;
import io.sentry.rrweb.RRWebEvent;
import io.sentry.rrweb.RRWebSpanEvent;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class DefaultReplayBreadcrumbConverter implements ReplayBreadcrumbConverter {
    public static final Lazy c = LazyKt.a(LazyThreadSafetyMode.k, DefaultReplayBreadcrumbConverter$Companion$snakecasePattern$2.k);
    public static final HashSet d;
    public String a;
    public final Map b;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class ReplayBeforeBreadcrumbCallback implements SentryOptions.BeforeBreadcrumbCallback {
        public final SentryOptions.BeforeBreadcrumbCallback j;

        public ReplayBeforeBreadcrumbCallback(DefaultReplayBreadcrumbConverter defaultReplayBreadcrumbConverter, SentryOptions.BeforeBreadcrumbCallback beforeBreadcrumbCallback) {
            this.j = beforeBreadcrumbCallback;
        }

        @Override // io.sentry.SentryOptions.BeforeBreadcrumbCallback
        public final Breadcrumb b(Breadcrumb breadcrumb, Hint hint) {
            breadcrumb.getClass();
            SentryOptions.BeforeBreadcrumbCallback beforeBreadcrumbCallback = this.j;
            if (beforeBreadcrumbCallback != null) {
                breadcrumb = beforeBreadcrumbCallback.b(breadcrumb, hint);
            }
            if (breadcrumb != null) {
                if (!Intrinsics.a(breadcrumb.n, "http") && !Intrinsics.a(breadcrumb.p, "http")) {
                    return breadcrumb;
                }
                hint.b("sentry:replayNetworkDetails");
            }
            return breadcrumb;
        }
    }

    static {
        HashSet hashSet = new HashSet();
        hashSet.add("status_code");
        hashSet.add("method");
        hashSet.add("response_content_length");
        hashSet.add("request_content_length");
        hashSet.add("http.response_content_length");
        hashSet.add("http.request_content_length");
        d = hashSet;
    }

    public DefaultReplayBreadcrumbConverter(SentryAndroidOptions sentryAndroidOptions) {
        sentryAndroidOptions.getClass();
        this.b = Collections.synchronizedMap(new LinkedHashMap());
        sentryAndroidOptions.setBeforeBreadcrumb(new ReplayBeforeBreadcrumbCallback(this, sentryAndroidOptions.getBeforeBreadcrumb()));
    }

    /* JADX WARN: Removed duplicated region for block: B:79:0x01bb  */
    /* JADX WARN: Removed duplicated region for block: B:80:? A[RETURN, SYNTHETIC] */
    @Override // io.sentry.ReplayBreadcrumbConverter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final RRWebEvent a(Breadcrumb breadcrumb) {
        String str;
        SentryLevel sentryLevel;
        String str2;
        Object obj;
        String str3;
        String str4;
        String str5;
        String str6;
        double longValue;
        double longValue2;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (Intrinsics.a(breadcrumb.p, "http")) {
            Object obj2 = breadcrumb.o.get("url");
            if (obj2 instanceof String) {
                str6 = (String) obj2;
            } else {
                str6 = null;
            }
            if (str6 == null || str6.length() == 0) {
                return null;
            }
            ConcurrentHashMap concurrentHashMap = breadcrumb.o;
            concurrentHashMap.getClass();
            if (!concurrentHashMap.containsKey("http.start_timestamp")) {
                return null;
            }
            ConcurrentHashMap concurrentHashMap2 = breadcrumb.o;
            concurrentHashMap2.getClass();
            if (!concurrentHashMap2.containsKey("http.end_timestamp")) {
                return null;
            }
            Object obj3 = breadcrumb.o.get("http.start_timestamp");
            Object obj4 = breadcrumb.o.get("http.end_timestamp");
            RRWebSpanEvent rRWebSpanEvent = new RRWebSpanEvent();
            rRWebSpanEvent.k = breadcrumb.b().getTime();
            rRWebSpanEvent.m = "resource.http";
            Object obj5 = breadcrumb.o.get("url");
            obj5.getClass();
            rRWebSpanEvent.n = (String) obj5;
            if (obj3 instanceof Double) {
                longValue = ((Number) obj3).doubleValue();
            } else {
                obj3.getClass();
                longValue = ((Long) obj3).longValue();
            }
            rRWebSpanEvent.o = longValue / 1000.0d;
            if (obj4 instanceof Double) {
                longValue2 = ((Number) obj4).doubleValue();
            } else {
                obj4.getClass();
                longValue2 = ((Long) obj4).longValue();
            }
            rRWebSpanEvent.p = longValue2 / 1000.0d;
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            if (this.b.remove(breadcrumb) == null) {
                ConcurrentHashMap concurrentHashMap3 = breadcrumb.o;
                concurrentHashMap3.getClass();
                for (Map.Entry entry : concurrentHashMap3.entrySet()) {
                    String str7 = (String) entry.getKey();
                    Object value = entry.getValue();
                    if (d.contains(str7)) {
                        str7.getClass();
                        linkedHashMap2.put(((Regex) c.getValue()).e(StringsKt.L(StringsKt.F(str7, "content_length", "body_size"), "."), DefaultReplayBreadcrumbConverter$snakeToCamelCase$1.k), value);
                    }
                }
                rRWebSpanEvent.q = new ConcurrentHashMap(linkedHashMap2);
                return rRWebSpanEvent;
            }
            io.sentry.d.i();
            return null;
        }
        String str8 = "navigation";
        if (Intrinsics.a(breadcrumb.n, "navigation") && Intrinsics.a(breadcrumb.p, "app.lifecycle")) {
            str8 = "app." + breadcrumb.o.get("state");
        } else if (Intrinsics.a(breadcrumb.n, "navigation") && Intrinsics.a(breadcrumb.p, "device.orientation")) {
            str8 = breadcrumb.p;
            str8.getClass();
            Object obj6 = breadcrumb.o.get("position");
            if (!Intrinsics.a(obj6, "landscape") && !Intrinsics.a(obj6, "portrait")) {
                return null;
            }
            linkedHashMap.put("position", obj6);
        } else if (Intrinsics.a(breadcrumb.n, "navigation")) {
            boolean a = Intrinsics.a(breadcrumb.o.get("state"), "resumed");
            ConcurrentHashMap concurrentHashMap4 = breadcrumb.o;
            if (a) {
                Object obj7 = concurrentHashMap4.get("screen");
                if (obj7 instanceof String) {
                    str5 = (String) obj7;
                } else {
                    str5 = null;
                }
                if (str5 != null) {
                    str4 = StringsKt.M(str5, '.', str5);
                    if (str4 != null) {
                        return null;
                    }
                    linkedHashMap.put("to", str4);
                }
                str4 = null;
                if (str4 != null) {
                }
            } else {
                concurrentHashMap4.getClass();
                if (concurrentHashMap4.containsKey("to")) {
                    Object obj8 = breadcrumb.o.get("to");
                    if (obj8 instanceof String) {
                        str4 = (String) obj8;
                        if (str4 != null) {
                        }
                    }
                }
                str4 = null;
                if (str4 != null) {
                }
            }
        } else {
            if (Intrinsics.a(breadcrumb.p, "ui.click")) {
                Object obj9 = breadcrumb.o.get("view.id");
                if (obj9 == null && (obj9 = breadcrumb.o.get("view.tag")) == null) {
                    obj9 = breadcrumb.o.get("view.class");
                }
                if (obj9 instanceof String) {
                    str = (String) obj9;
                } else {
                    str = null;
                }
                if (str == null) {
                    return null;
                }
                ConcurrentHashMap concurrentHashMap5 = breadcrumb.o;
                concurrentHashMap5.getClass();
                linkedHashMap.putAll(concurrentHashMap5);
                str8 = "ui.tap";
                sentryLevel = null;
            } else if (Intrinsics.a(breadcrumb.n, "system") && Intrinsics.a(breadcrumb.p, "network.event")) {
                if (Intrinsics.a(breadcrumb.o.get("action"), "NETWORK_LOST")) {
                    obj = "offline";
                } else {
                    ConcurrentHashMap concurrentHashMap6 = breadcrumb.o;
                    concurrentHashMap6.getClass();
                    if (!concurrentHashMap6.containsKey("network_type")) {
                        return null;
                    }
                    Object obj10 = breadcrumb.o.get("network_type");
                    if (obj10 instanceof String) {
                        str2 = (String) obj10;
                    } else {
                        str2 = null;
                    }
                    if (str2 == null || str2.length() == 0) {
                        return null;
                    }
                    obj = breadcrumb.o.get("network_type");
                }
                linkedHashMap.put("state", obj);
                if (Intrinsics.a(this.a, linkedHashMap.get("state"))) {
                    return null;
                }
                Object obj11 = linkedHashMap.get("state");
                if (obj11 instanceof String) {
                    str3 = (String) obj11;
                } else {
                    str3 = null;
                }
                this.a = str3;
                str8 = "device.connectivity";
            } else if (Intrinsics.a(breadcrumb.o.get("action"), "BATTERY_CHANGED")) {
                ConcurrentHashMap concurrentHashMap7 = breadcrumb.o;
                concurrentHashMap7.getClass();
                LinkedHashMap linkedHashMap3 = new LinkedHashMap();
                for (Map.Entry entry2 : concurrentHashMap7.entrySet()) {
                    String str9 = (String) entry2.getKey();
                    if (Intrinsics.a(str9, "level") || Intrinsics.a(str9, "charging")) {
                        linkedHashMap3.put(entry2.getKey(), entry2.getValue());
                    }
                }
                linkedHashMap.putAll(linkedHashMap3);
                str8 = "device.battery";
            } else {
                str8 = breadcrumb.p;
                str = breadcrumb.m;
                sentryLevel = breadcrumb.r;
                ConcurrentHashMap concurrentHashMap8 = breadcrumb.o;
                concurrentHashMap8.getClass();
                linkedHashMap.putAll(concurrentHashMap8);
            }
            if (str8 == null && str8.length() != 0) {
                RRWebBreadcrumbEvent rRWebBreadcrumbEvent = new RRWebBreadcrumbEvent();
                rRWebBreadcrumbEvent.k = breadcrumb.b().getTime();
                rRWebBreadcrumbEvent.m = breadcrumb.b().getTime() / 1000.0d;
                rRWebBreadcrumbEvent.n = "default";
                rRWebBreadcrumbEvent.o = str8;
                rRWebBreadcrumbEvent.p = str;
                rRWebBreadcrumbEvent.q = sentryLevel;
                rRWebBreadcrumbEvent.r = new ConcurrentHashMap(linkedHashMap);
                return rRWebBreadcrumbEvent;
            }
        }
        str = null;
        sentryLevel = null;
        return str8 == null ? null : null;
    }
}
