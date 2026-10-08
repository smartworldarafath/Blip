package net.blip.android;

import android.app.Application;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.LinkAddress;
import android.net.LinkProperties;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.RouteInfo;
import android.os.Build;
import com.jaredrummler.android.device.DeviceName;
import defpackage.c;
import defpackage.c8;
import defpackage.le;
import defpackage.lh;
import defpackage.ma;
import defpackage.p;
import defpackage.u2;
import io.sentry.IScopes;
import io.sentry.ISentryLifecycleToken;
import io.sentry.SentryOptions;
import io.sentry.android.core.ContextUtils;
import io.sentry.android.core.SentryAndroid;
import io.sentry.android.core.f;
import io.sentry.android.core.l;
import io.sentry.kotlin.multiplatform.Context_androidKt;
import io.sentry.kotlin.multiplatform.Sentry;
import io.sentry.kotlin.multiplatform.SentryBridge;
import io.sentry.kotlin.multiplatform.SentryLevel;
import io.sentry.kotlin.multiplatform.SentryReplayOptions;
import java.lang.reflect.InvocationTargetException;
import java.net.InetAddress;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.ExceptionsKt;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Pair;
import kotlin.Result;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.GlobalScope;
import net.blip.android.App;
import net.blip.android.FlavorAndroid;
import net.blip.android.HardwareInfoAndroid;
import net.blip.android.netstatus.NetworkGenerationTracker;
import net.blip.libblip.Core;
import net.blip.libblip.DeviceKind;
import net.blip.libblip.Flavor;
import net.blip.libblip.HardwareInfo;
import net.blip.libblip.LibBlip;
import net.blip.libblip.LogLevel;
import net.blip.libblip.Logger;
import net.blip.libblip.LoggerKt;
import net.blip.libblip.PathDecoder$Companion;
import net.blip.libblip.PathUtil;
import net.blip.libblip.SemanticVersion;
import net.blip.libblip.SentryConfig;
import net.blip.libblip.UserAgent;
import net.blip.libblip.UserAgent$Companion$ADAPTER$1;
import okio.Buffer;
import okio.ByteString;
import okio.FileSystem;
import okio.JvmSystemFileSystem;
import okio.Okio;
import okio.Path;
import okio.RealBufferedSource;
import okio.Source;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class App extends Application {
    public static Context m;
    public static Core n;
    public static App o;
    public final Lazy j;
    public final Lazy k;
    public final SystemPathsAndroid l = SystemPathsAndroid.a;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Companion {
        public static Context a() {
            Context context = App.m;
            if (context != null) {
                return context;
            }
            Intrinsics.e("context");
            throw null;
        }

        public static Core b() {
            Core core = App.n;
            if (core != null) {
                return core;
            }
            Intrinsics.e("core");
            throw null;
        }
    }

    public App() {
        final int i = 0;
        this.j = LazyKt.b(new Function0(this) { // from class: x2
            public final /* synthetic */ App k;

            {
                this.k = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object a() {
                int i2 = i;
                App app = this.k;
                switch (i2) {
                    case 0:
                        Context context = App.m;
                        Context applicationContext = app.getApplicationContext();
                        applicationContext.getClass();
                        return new FlavorAndroid(applicationContext);
                    default:
                        Context context2 = App.m;
                        Context applicationContext2 = app.getApplicationContext();
                        applicationContext2.getClass();
                        return new HardwareInfoAndroid(applicationContext2);
                }
            }
        });
        final int i2 = 1;
        this.k = LazyKt.b(new Function0(this) { // from class: x2
            public final /* synthetic */ App k;

            {
                this.k = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object a() {
                int i22 = i2;
                App app = this.k;
                switch (i22) {
                    case 0:
                        Context context = App.m;
                        Context applicationContext = app.getApplicationContext();
                        applicationContext.getClass();
                        return new FlavorAndroid(applicationContext);
                    default:
                        Context context2 = App.m;
                        Context applicationContext2 = app.getApplicationContext();
                        applicationContext2.getClass();
                        return new HardwareInfoAndroid(applicationContext2);
                }
            }
        });
    }

    public final Flavor a() {
        return (Flavor) this.j.getValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:73:0x02c8  */
    /* JADX WARN: Type inference failed for: r0v14, types: [kotlin.coroutines.jvm.internal.SuspendLambda, kotlin.jvm.functions.Function2] */
    /* JADX WARN: Type inference failed for: r0v15, types: [kotlin.coroutines.jvm.internal.SuspendLambda, kotlin.jvm.functions.Function2] */
    /* JADX WARN: Type inference failed for: r0v16, types: [kotlin.coroutines.jvm.internal.SuspendLambda, kotlin.jvm.functions.Function2] */
    /* JADX WARN: Type inference failed for: r11v9, types: [io.sentry.OptionsContainer, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v13, types: [io.sentry.kotlin.multiplatform.SentryOptions, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v15, types: [java.lang.Object, io.sentry.android.core.AndroidLogger] */
    /* JADX WARN: Type inference failed for: r6v31, types: [io.sentry.kotlin.multiplatform.SentryReplayOptions, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v32, types: [io.sentry.kotlin.multiplatform.log.SentryLogOptions, java.lang.Object] */
    @Override // android.app.Application
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void onCreate() {
        String str;
        String str2;
        String str3;
        Path a;
        Throwable th;
        ByteString byteString;
        super.onCreate();
        SentryConfig sentryConfig = ((FlavorAndroid) a()).f;
        int i = 29;
        boolean z = true;
        if (sentryConfig != null) {
            Sentry.a.getClass();
            ?? obj = new Object();
            obj.f = SentryLevel.DEBUG;
            obj.g = 100;
            obj.h = 20971520L;
            CollectionsKt.B(new Object());
            CollectionsKt.B(SentryOptions.DEFAULT_PROPAGATION_TARGETS);
            obj.j = true;
            obj.k = 5000L;
            SentryReplayOptions.Quality quality = SentryReplayOptions.Quality.MEDIUM;
            quality.getClass();
            ?? obj2 = new Object();
            obj2.a = true;
            obj2.b = true;
            obj2.c = quality;
            obj.l = obj2;
            obj.m = new Object();
            obj.a = sentryConfig.a;
            obj.c = true;
            obj.d = sentryConfig.b;
            obj.b = sentryConfig.c;
            obj.i = Double.valueOf(0.1d);
            obj.j = false;
            obj.e = new ma(22, sentryConfig);
            int i2 = 4;
            lh lhVar = new lh(i2, new lh(6, (Object) obj));
            Context context = Context_androidKt.a;
            if (context != null) {
                p pVar = new p(i, lhVar);
                ?? obj3 = new Object();
                try {
                    ISentryLifecycleToken a2 = SentryAndroid.b.a();
                    try {
                        io.sentry.Sentry.c(new Object(), new f(obj3, context, pVar));
                        IScopes b = io.sentry.Sentry.b();
                        if (ContextUtils.d()) {
                            if (b.j().isEnableAutoSessionTracking()) {
                                AtomicBoolean atomicBoolean = new AtomicBoolean(false);
                                b.o(new l(i2, atomicBoolean));
                                if (!atomicBoolean.get()) {
                                    b.m();
                                }
                            }
                            b.j().getReplayController().O();
                        }
                        a2.close();
                    } finally {
                    }
                } catch (IllegalAccessException e) {
                    obj3.b(io.sentry.SentryLevel.FATAL, "Fatal error during SentryAndroid.init(...)", e);
                    u2.k("Failed to initialize Sentry's SDK", e);
                    return;
                } catch (InstantiationException e2) {
                    obj3.b(io.sentry.SentryLevel.FATAL, "Fatal error during SentryAndroid.init(...)", e2);
                    u2.k("Failed to initialize Sentry's SDK", e2);
                    return;
                } catch (NoSuchMethodException e3) {
                    obj3.b(io.sentry.SentryLevel.FATAL, "Fatal error during SentryAndroid.init(...)", e3);
                    u2.k("Failed to initialize Sentry's SDK", e3);
                    return;
                } catch (InvocationTargetException e4) {
                    obj3.b(io.sentry.SentryLevel.FATAL, "Fatal error during SentryAndroid.init(...)", e4);
                    u2.k("Failed to initialize Sentry's SDK", e4);
                    return;
                }
            }
        }
        Flavor a3 = a();
        a3.getClass();
        String a4 = PathUtil.a(((FlavorAndroid) a3).e, new String[]{"core-crash.log"});
        try {
            String str4 = Path.k;
            a = Path.Companion.a(a4);
            FileSystem.j.getClass();
            Source d = Okio.d(a.toFile());
            RealBufferedSource realBufferedSource = new RealBufferedSource(d);
            try {
                Buffer buffer = realBufferedSource.k;
                buffer.a0(d);
                byteString = buffer.s(buffer.k);
                try {
                    realBufferedSource.close();
                    th = null;
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Throwable th3) {
                try {
                    realBufferedSource.close();
                } catch (Throwable th4) {
                    ExceptionsKt.a(th3, th4);
                }
                th = th3;
                byteString = null;
            }
        } catch (Throwable th5) {
            new Result.Failure(th5);
        }
        if (th == null) {
            String s = byteString.s();
            if (s.length() > 0) {
                Logger logger = LoggerKt.a;
                Pair[] pairArr = {new Pair("message", CollectionsKt.t(StringsKt.x(s))), new Pair("path", a4)};
                logger.getClass();
                Logger.h("found saved core crash, reporting to Sentry", pairArr);
                SentryBridge sentryBridge = Sentry.a;
                Sentry.a("Core: ".concat(s), new le(17));
            }
            JvmSystemFileSystem jvmSystemFileSystem = FileSystem.j;
            jvmSystemFileSystem.getClass();
            jvmSystemFileSystem.v(a);
            o = this;
            Context applicationContext = getApplicationContext();
            applicationContext.getClass();
            m = applicationContext;
            LibBlip.Companion companion = LibBlip.a;
            String str5 = ((FlavorAndroid) a()).e;
            LogLevel logLevel = LogLevel.k;
            companion.configureLogging(str5, "AndroidApp", -4);
            Flavor a5 = a();
            a5.getClass();
            companion.setCrashOutput(PathUtil.a(((FlavorAndroid) a5).e, new String[]{"core-crash.log"}));
            companion.startHosting(true, ((FlavorAndroid) a()).e, ((FlavorAndroid) a()).d, ((FlavorAndroid) a()).c);
            PathDecoder$Companion.a = new PathDecoderAndroid(this.l);
            Flavor a6 = a();
            a6.getClass();
            String a7 = PathUtil.a(((FlavorAndroid) a6).e, new String[]{"sock"});
            UserAgent$Companion$ADAPTER$1 userAgent$Companion$ADAPTER$1 = UserAgent.v;
            HardwareInfo hardwareInfo = (HardwareInfo) this.k.getValue();
            Flavor a8 = a();
            hardwareInfo.getClass();
            a8.getClass();
            HardwareInfoAndroid hardwareInfoAndroid = (HardwareInfoAndroid) hardwareInfo;
            String str6 = hardwareInfoAndroid.c;
            if (str6 == null) {
                str6 = "";
            }
            String str7 = hardwareInfoAndroid.d;
            if (str7 == null) {
                str7 = "";
            }
            DeviceKind deviceKind = hardwareInfoAndroid.g;
            String str8 = hardwareInfoAndroid.e;
            String str9 = hardwareInfoAndroid.f;
            if (str9 == null) {
                str = "";
            } else {
                str = str9;
            }
            FlavorAndroid flavorAndroid = (FlavorAndroid) a8;
            SemanticVersion semanticVersion = flavorAndroid.b;
            String str10 = flavorAndroid.a;
            if (semanticVersion == null) {
                str2 = "";
            } else {
                str2 = semanticVersion.a();
            }
            if (semanticVersion != null) {
                String valueOf = String.valueOf((semanticVersion.c * 1000) + (semanticVersion.b * 100000) + (semanticVersion.a * 10000000) + semanticVersion.d);
                if (valueOf != null) {
                    str3 = valueOf;
                    n = new Core(a7, new UserAgent(str6, str7, deviceKind, str8, str, "net.blip.android", str10, str2, str3, ByteString.m));
                    Context a9 = Companion.a();
                    c cVar = Companion.b().b;
                    cVar.getClass();
                    final c8 c8Var = new c8(cVar, 2);
                    Object systemService = a9.getSystemService("connectivity");
                    systemService.getClass();
                    ConnectivityManager connectivityManager = (ConnectivityManager) systemService;
                    if (Build.VERSION.SDK_INT < 29) {
                        z = false;
                    }
                    final NetworkGenerationTracker networkGenerationTracker = new NetworkGenerationTracker(z);
                    connectivityManager.registerDefaultNetworkCallback(new ConnectivityManager.NetworkCallback() { // from class: net.blip.android.netstatus.NetworkAvailabilityManager$observe$1
                        @Override // android.net.ConnectivityManager.NetworkCallback
                        public final void onAvailable(Network network) {
                            Boolean bool;
                            network.getClass();
                            super.onAvailable(network);
                            long networkHandle = network.getNetworkHandle();
                            NetworkGenerationTracker networkGenerationTracker2 = NetworkGenerationTracker.this;
                            Long l = networkGenerationTracker2.b;
                            if (l != null && l.longValue() == networkHandle) {
                                return;
                            }
                            networkGenerationTracker2.b = Long.valueOf(networkHandle);
                            networkGenerationTracker2.c = null;
                            networkGenerationTracker2.d = null;
                            if (networkGenerationTracker2.a) {
                                bool = null;
                            } else {
                                bool = Boolean.FALSE;
                            }
                            networkGenerationTracker2.e = bool;
                            networkGenerationTracker2.f = null;
                        }

                        @Override // android.net.ConnectivityManager.NetworkCallback
                        public final void onBlockedStatusChanged(Network network, boolean z2) {
                            NetworkObservation networkObservation;
                            network.getClass();
                            super.onBlockedStatusChanged(network, z2);
                            long networkHandle = network.getNetworkHandle();
                            NetworkGenerationTracker networkGenerationTracker2 = NetworkGenerationTracker.this;
                            Long l = networkGenerationTracker2.b;
                            if (l == null || l.longValue() != networkHandle) {
                                networkObservation = null;
                            } else {
                                networkGenerationTracker2.e = Boolean.valueOf(z2);
                                networkObservation = networkGenerationTracker2.a();
                            }
                            if (networkObservation != null) {
                                c8Var.b(networkObservation);
                            }
                        }

                        @Override // android.net.ConnectivityManager.NetworkCallback
                        public final void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
                            boolean z2;
                            NetworkObservation networkObservation;
                            network.getClass();
                            networkCapabilities.getClass();
                            super.onCapabilitiesChanged(network, networkCapabilities);
                            long networkHandle = network.getNetworkHandle();
                            boolean hasCapability = networkCapabilities.hasCapability(12);
                            boolean hasCapability2 = networkCapabilities.hasCapability(16);
                            if (hasCapability && hasCapability2) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            NetworkGenerationTracker networkGenerationTracker2 = NetworkGenerationTracker.this;
                            Long l = networkGenerationTracker2.b;
                            if (l == null || l.longValue() != networkHandle) {
                                networkObservation = null;
                            } else {
                                networkGenerationTracker2.d = Boolean.valueOf(z2);
                                networkObservation = networkGenerationTracker2.a();
                            }
                            if (networkObservation != null) {
                                c8Var.b(networkObservation);
                            }
                        }

                        @Override // android.net.ConnectivityManager.NetworkCallback
                        public final void onLinkPropertiesChanged(Network network, LinkProperties linkProperties) {
                            network.getClass();
                            linkProperties.getClass();
                            super.onLinkPropertiesChanged(network, linkProperties);
                            long networkHandle = network.getNetworkHandle();
                            StringBuilder sb = new StringBuilder();
                            sb.append(linkProperties.getInterfaceName());
                            sb.append('|');
                            List<LinkAddress> linkAddresses = linkProperties.getLinkAddresses();
                            linkAddresses.getClass();
                            ArrayList arrayList = new ArrayList(CollectionsKt.m(linkAddresses, 10));
                            Iterator<T> it = linkAddresses.iterator();
                            while (it.hasNext()) {
                                arrayList.add(((LinkAddress) it.next()).toString());
                            }
                            NetworkObservation networkObservation = null;
                            CollectionsKt.x(CollectionsKt.Q(arrayList), sb, ",", null, 124);
                            sb.append('|');
                            List<RouteInfo> routes = linkProperties.getRoutes();
                            routes.getClass();
                            ArrayList arrayList2 = new ArrayList(CollectionsKt.m(routes, 10));
                            Iterator<T> it2 = routes.iterator();
                            while (it2.hasNext()) {
                                arrayList2.add(((RouteInfo) it2.next()).toString());
                            }
                            CollectionsKt.x(CollectionsKt.Q(arrayList2), sb, ",", null, 124);
                            sb.append('|');
                            List<InetAddress> dnsServers = linkProperties.getDnsServers();
                            dnsServers.getClass();
                            ArrayList arrayList3 = new ArrayList(CollectionsKt.m(dnsServers, 10));
                            Iterator<T> it3 = dnsServers.iterator();
                            while (it3.hasNext()) {
                                arrayList3.add(((InetAddress) it3.next()).toString());
                            }
                            CollectionsKt.x(CollectionsKt.Q(arrayList3), sb, ",", null, 124);
                            String sb2 = sb.toString();
                            NetworkGenerationTracker networkGenerationTracker2 = NetworkGenerationTracker.this;
                            Long l = networkGenerationTracker2.b;
                            if (l != null && l.longValue() == networkHandle) {
                                String str11 = networkGenerationTracker2.c;
                                networkGenerationTracker2.c = sb2;
                                if (str11 != null && !str11.equals(sb2) && Intrinsics.a(networkGenerationTracker2.f, Boolean.TRUE)) {
                                    long j = networkGenerationTracker2.g + 1;
                                    networkGenerationTracker2.g = j;
                                    networkObservation = new NetworkObservation(j, true);
                                }
                            }
                            if (networkObservation != null) {
                                c8Var.b(networkObservation);
                            }
                        }

                        @Override // android.net.ConnectivityManager.NetworkCallback
                        public final void onLost(Network network) {
                            network.getClass();
                            super.onLost(network);
                            long networkHandle = network.getNetworkHandle();
                            NetworkGenerationTracker networkGenerationTracker2 = NetworkGenerationTracker.this;
                            Long l = networkGenerationTracker2.b;
                            NetworkObservation networkObservation = null;
                            if (l != null && l.longValue() == networkHandle) {
                                networkGenerationTracker2.b = null;
                                networkGenerationTracker2.c = null;
                                networkGenerationTracker2.d = null;
                                networkGenerationTracker2.e = null;
                                Boolean bool = networkGenerationTracker2.f;
                                Boolean bool2 = Boolean.FALSE;
                                if (!Intrinsics.a(bool, bool2)) {
                                    networkGenerationTracker2.f = bool2;
                                    long j = networkGenerationTracker2.g + 1;
                                    networkGenerationTracker2.g = j;
                                    networkObservation = new NetworkObservation(j, false);
                                }
                            }
                            if (networkObservation != null) {
                                c8Var.b(networkObservation);
                            }
                        }
                    });
                    ?? suspendLambda = new SuspendLambda(2, null);
                    GlobalScope globalScope = GlobalScope.j;
                    BuildersKt.c(globalScope, null, null, suspendLambda, 3);
                    BuildersKt.c(globalScope, null, null, new SuspendLambda(2, null), 3);
                    BuildersKt.c(globalScope, null, null, new SuspendLambda(2, null), 3);
                    DeviceName.a = Companion.a().getApplicationContext();
                    return;
                }
            }
            str3 = "";
            n = new Core(a7, new UserAgent(str6, str7, deviceKind, str8, str, "net.blip.android", str10, str2, str3, ByteString.m));
            Context a92 = Companion.a();
            c cVar2 = Companion.b().b;
            cVar2.getClass();
            final c8 c8Var2 = new c8(cVar2, 2);
            Object systemService2 = a92.getSystemService("connectivity");
            systemService2.getClass();
            ConnectivityManager connectivityManager2 = (ConnectivityManager) systemService2;
            if (Build.VERSION.SDK_INT < 29) {
            }
            final NetworkGenerationTracker networkGenerationTracker2 = new NetworkGenerationTracker(z);
            connectivityManager2.registerDefaultNetworkCallback(new ConnectivityManager.NetworkCallback() { // from class: net.blip.android.netstatus.NetworkAvailabilityManager$observe$1
                @Override // android.net.ConnectivityManager.NetworkCallback
                public final void onAvailable(Network network) {
                    Boolean bool;
                    network.getClass();
                    super.onAvailable(network);
                    long networkHandle = network.getNetworkHandle();
                    NetworkGenerationTracker networkGenerationTracker22 = NetworkGenerationTracker.this;
                    Long l = networkGenerationTracker22.b;
                    if (l != null && l.longValue() == networkHandle) {
                        return;
                    }
                    networkGenerationTracker22.b = Long.valueOf(networkHandle);
                    networkGenerationTracker22.c = null;
                    networkGenerationTracker22.d = null;
                    if (networkGenerationTracker22.a) {
                        bool = null;
                    } else {
                        bool = Boolean.FALSE;
                    }
                    networkGenerationTracker22.e = bool;
                    networkGenerationTracker22.f = null;
                }

                @Override // android.net.ConnectivityManager.NetworkCallback
                public final void onBlockedStatusChanged(Network network, boolean z2) {
                    NetworkObservation networkObservation;
                    network.getClass();
                    super.onBlockedStatusChanged(network, z2);
                    long networkHandle = network.getNetworkHandle();
                    NetworkGenerationTracker networkGenerationTracker22 = NetworkGenerationTracker.this;
                    Long l = networkGenerationTracker22.b;
                    if (l == null || l.longValue() != networkHandle) {
                        networkObservation = null;
                    } else {
                        networkGenerationTracker22.e = Boolean.valueOf(z2);
                        networkObservation = networkGenerationTracker22.a();
                    }
                    if (networkObservation != null) {
                        c8Var2.b(networkObservation);
                    }
                }

                @Override // android.net.ConnectivityManager.NetworkCallback
                public final void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
                    boolean z2;
                    NetworkObservation networkObservation;
                    network.getClass();
                    networkCapabilities.getClass();
                    super.onCapabilitiesChanged(network, networkCapabilities);
                    long networkHandle = network.getNetworkHandle();
                    boolean hasCapability = networkCapabilities.hasCapability(12);
                    boolean hasCapability2 = networkCapabilities.hasCapability(16);
                    if (hasCapability && hasCapability2) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    NetworkGenerationTracker networkGenerationTracker22 = NetworkGenerationTracker.this;
                    Long l = networkGenerationTracker22.b;
                    if (l == null || l.longValue() != networkHandle) {
                        networkObservation = null;
                    } else {
                        networkGenerationTracker22.d = Boolean.valueOf(z2);
                        networkObservation = networkGenerationTracker22.a();
                    }
                    if (networkObservation != null) {
                        c8Var2.b(networkObservation);
                    }
                }

                @Override // android.net.ConnectivityManager.NetworkCallback
                public final void onLinkPropertiesChanged(Network network, LinkProperties linkProperties) {
                    network.getClass();
                    linkProperties.getClass();
                    super.onLinkPropertiesChanged(network, linkProperties);
                    long networkHandle = network.getNetworkHandle();
                    StringBuilder sb = new StringBuilder();
                    sb.append(linkProperties.getInterfaceName());
                    sb.append('|');
                    List<LinkAddress> linkAddresses = linkProperties.getLinkAddresses();
                    linkAddresses.getClass();
                    ArrayList arrayList = new ArrayList(CollectionsKt.m(linkAddresses, 10));
                    Iterator<T> it = linkAddresses.iterator();
                    while (it.hasNext()) {
                        arrayList.add(((LinkAddress) it.next()).toString());
                    }
                    NetworkObservation networkObservation = null;
                    CollectionsKt.x(CollectionsKt.Q(arrayList), sb, ",", null, 124);
                    sb.append('|');
                    List<RouteInfo> routes = linkProperties.getRoutes();
                    routes.getClass();
                    ArrayList arrayList2 = new ArrayList(CollectionsKt.m(routes, 10));
                    Iterator<T> it2 = routes.iterator();
                    while (it2.hasNext()) {
                        arrayList2.add(((RouteInfo) it2.next()).toString());
                    }
                    CollectionsKt.x(CollectionsKt.Q(arrayList2), sb, ",", null, 124);
                    sb.append('|');
                    List<InetAddress> dnsServers = linkProperties.getDnsServers();
                    dnsServers.getClass();
                    ArrayList arrayList3 = new ArrayList(CollectionsKt.m(dnsServers, 10));
                    Iterator<T> it3 = dnsServers.iterator();
                    while (it3.hasNext()) {
                        arrayList3.add(((InetAddress) it3.next()).toString());
                    }
                    CollectionsKt.x(CollectionsKt.Q(arrayList3), sb, ",", null, 124);
                    String sb2 = sb.toString();
                    NetworkGenerationTracker networkGenerationTracker22 = NetworkGenerationTracker.this;
                    Long l = networkGenerationTracker22.b;
                    if (l != null && l.longValue() == networkHandle) {
                        String str11 = networkGenerationTracker22.c;
                        networkGenerationTracker22.c = sb2;
                        if (str11 != null && !str11.equals(sb2) && Intrinsics.a(networkGenerationTracker22.f, Boolean.TRUE)) {
                            long j = networkGenerationTracker22.g + 1;
                            networkGenerationTracker22.g = j;
                            networkObservation = new NetworkObservation(j, true);
                        }
                    }
                    if (networkObservation != null) {
                        c8Var2.b(networkObservation);
                    }
                }

                @Override // android.net.ConnectivityManager.NetworkCallback
                public final void onLost(Network network) {
                    network.getClass();
                    super.onLost(network);
                    long networkHandle = network.getNetworkHandle();
                    NetworkGenerationTracker networkGenerationTracker22 = NetworkGenerationTracker.this;
                    Long l = networkGenerationTracker22.b;
                    NetworkObservation networkObservation = null;
                    if (l != null && l.longValue() == networkHandle) {
                        networkGenerationTracker22.b = null;
                        networkGenerationTracker22.c = null;
                        networkGenerationTracker22.d = null;
                        networkGenerationTracker22.e = null;
                        Boolean bool = networkGenerationTracker22.f;
                        Boolean bool2 = Boolean.FALSE;
                        if (!Intrinsics.a(bool, bool2)) {
                            networkGenerationTracker22.f = bool2;
                            long j = networkGenerationTracker22.g + 1;
                            networkGenerationTracker22.g = j;
                            networkObservation = new NetworkObservation(j, false);
                        }
                    }
                    if (networkObservation != null) {
                        c8Var2.b(networkObservation);
                    }
                }
            });
            ?? suspendLambda2 = new SuspendLambda(2, null);
            GlobalScope globalScope2 = GlobalScope.j;
            BuildersKt.c(globalScope2, null, null, suspendLambda2, 3);
            BuildersKt.c(globalScope2, null, null, new SuspendLambda(2, null), 3);
            BuildersKt.c(globalScope2, null, null, new SuspendLambda(2, null), 3);
            DeviceName.a = Companion.a().getApplicationContext();
            return;
        }
        throw th;
    }

    @Override // android.app.Application
    public final void onTerminate() {
        super.onTerminate();
        Companion.b().c.a();
        LibBlip.a.stopHosting();
    }
}
