package coil3.network;

import android.content.Context;
import android.net.ConnectivityManager;
import android.os.Looper;
import android.os.NetworkOnMainThreadException;
import androidx.core.content.ContextCompat;
import coil3.Extras;
import coil3.ExtrasKt;
import coil3.RealImageLoader;
import coil3.Uri;
import coil3.decode.DataSource;
import coil3.decode.FileImageSource;
import coil3.decode.ImageSourceKt;
import coil3.decode.SourceImageSource;
import coil3.disk.DiskCache;
import coil3.disk.RealDiskCache;
import coil3.fetch.Fetcher;
import coil3.fetch.SourceFetchResult;
import coil3.network.CacheStrategy;
import coil3.network.NetworkHeaders;
import coil3.network.internal.DefaultCacheStrategy;
import coil3.network.internal.SingleParameterLazy;
import coil3.network.internal.SingleParameterLazyKt;
import coil3.network.okhttp.internal.CallFactoryNetworkClient;
import coil3.request.CachePolicy;
import coil3.request.Options;
import coil3.util.MimeTypeMap;
import defpackage.jb;
import defpackage.kb;
import defpackage.q;
import defpackage.u2;
import defpackage.x9;
import io.sentry.d;
import java.io.IOException;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.ExceptionsKt;
import kotlin.InitializedLazyImpl;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReference;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.text.StringsKt;
import okio.Buffer;
import okio.BufferedSource;
import okio.FileSystem;
import okio.Path;
import okio.RealBufferedSink;
import okio.RealBufferedSource;
import okio.Sink;
import okio.Source;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class NetworkFetcher implements Fetcher {
    public final String a;
    public final Options b;
    public final Lazy c;
    public final Lazy d;
    public final Lazy e;
    public final InitializedLazyImpl f;
    public final Lazy g;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Factory implements Fetcher.Factory<Uri> {
        public final Lazy a;
        public final Lazy b;
        public final SingleParameterLazy c;
        public final Lazy d;

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* renamed from: coil3.network.NetworkFetcher$Factory$2, reason: invalid class name */
        /* loaded from: classes.dex */
        final /* synthetic */ class AnonymousClass2 extends FunctionReferenceImpl implements Function1<Context, ConnectivityChecker> {
            public static final AnonymousClass2 r = new FunctionReferenceImpl(1, ConnectivityCheckerKt.class, "ConnectivityChecker", "ConnectivityChecker(Landroid/content/Context;)Lcoil3/network/ConnectivityChecker;", 1);

            @Override // kotlin.jvm.functions.Function1
            public final Object b(Object obj) {
                Context applicationContext = ((Context) obj).getApplicationContext();
                ConnectivityManager connectivityManager = (ConnectivityManager) applicationContext.getSystemService(ConnectivityManager.class);
                if (connectivityManager != null && ContextCompat.a(applicationContext, "android.permission.ACCESS_NETWORK_STATE") == 0) {
                    try {
                        return new ConnectivityCheckerApi23(connectivityManager);
                    } catch (Exception unused) {
                    }
                }
                return ConnectivityChecker.a;
            }
        }

        public Factory(x9 x9Var) {
            x9 x9Var2 = new x9(23);
            AnonymousClass2 anonymousClass2 = AnonymousClass2.r;
            x9 x9Var3 = new x9(24);
            this.a = LazyKt.b(x9Var);
            this.b = LazyKt.b(x9Var2);
            this.c = SingleParameterLazyKt.a(anonymousClass2);
            this.d = LazyKt.b(x9Var3);
        }

        @Override // coil3.fetch.Fetcher.Factory
        public final Fetcher a(Object obj, Options options, RealImageLoader realImageLoader) {
            Uri uri = (Uri) obj;
            if (!Intrinsics.a(uri.c, "http") && !Intrinsics.a(uri.c, "https")) {
                return null;
            }
            return new NetworkFetcher(uri.a, options, this.a, LazyKt.b(new kb(4, realImageLoader)), this.b, new InitializedLazyImpl(this.c.a(options.a)), this.d);
        }
    }

    public NetworkFetcher(String str, Options options, Lazy lazy, Lazy lazy2, Lazy lazy3, InitializedLazyImpl initializedLazyImpl, Lazy lazy4) {
        this.a = str;
        this.b = options;
        this.c = lazy;
        this.d = lazy2;
        this.e = lazy3;
        this.f = initializedLazyImpl;
        this.g = lazy4;
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x017d, code lost:
    
        if (r0 == r8) goto L74;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0160 A[Catch: Exception -> 0x0041, TryCatch #4 {Exception -> 0x0041, blocks: (B:14:0x003c, B:15:0x0180, B:21:0x0050, B:22:0x015c, B:24:0x0160, B:37:0x011e, B:39:0x0124, B:42:0x0133, B:43:0x0138, B:44:0x0139), top: B:8:0x002e }] */
    /* JADX WARN: Removed duplicated region for block: B:27:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00fe A[Catch: Exception -> 0x00c5, TRY_LEAVE, TryCatch #3 {Exception -> 0x00c5, blocks: (B:32:0x00f8, B:34:0x00fe, B:69:0x008b, B:71:0x0092, B:74:0x00c9, B:76:0x00d5, B:79:0x00a7, B:81:0x00b1), top: B:68:0x008b }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0124 A[Catch: Exception -> 0x0041, TryCatch #4 {Exception -> 0x0041, blocks: (B:14:0x003c, B:15:0x0180, B:21:0x0050, B:22:0x015c, B:24:0x0160, B:37:0x011e, B:39:0x0124, B:42:0x0133, B:43:0x0138, B:44:0x0139), top: B:8:0x002e }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x015b  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0189 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0064  */
    /* JADX WARN: Type inference failed for: r12v0, types: [java.lang.Object, kotlin.jvm.internal.Ref$ObjectRef] */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* JADX WARN: Type inference failed for: r4v4, types: [java.lang.Object, kotlin.jvm.internal.Ref$ObjectRef] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object b(NetworkFetcher networkFetcher, Continuation continuation) {
        NetworkFetcher$doFetch$1 networkFetcher$doFetch$1;
        Object obj;
        Object obj2;
        int i;
        DiskCache.Snapshot snapshot;
        DiskCache.Snapshot snapshot2;
        DiskCache diskCache;
        Ref$ObjectRef ref$ObjectRef;
        Ref$ObjectRef ref$ObjectRef2;
        Ref$ObjectRef ref$ObjectRef3;
        Ref$ObjectRef ref$ObjectRef4;
        Ref$ObjectRef ref$ObjectRef5;
        NetworkResponse networkResponse;
        SourceFetchResult sourceFetchResult;
        Lazy lazy = networkFetcher.c;
        Ref$ObjectRef ref$ObjectRef6 = networkFetcher.a;
        Options options = networkFetcher.b;
        try {
            if (continuation instanceof NetworkFetcher$doFetch$1) {
                networkFetcher$doFetch$1 = (NetworkFetcher$doFetch$1) continuation;
                int i2 = networkFetcher$doFetch$1.q;
                if ((i2 & Integer.MIN_VALUE) != 0) {
                    networkFetcher$doFetch$1.q = i2 - Integer.MIN_VALUE;
                    NetworkFetcher$doFetch$1 networkFetcher$doFetch$12 = networkFetcher$doFetch$1;
                    obj = networkFetcher$doFetch$12.o;
                    obj2 = CoroutineSingletons.j;
                    i = networkFetcher$doFetch$12.q;
                    if (i == 0) {
                        if (i != 1) {
                            if (i != 2) {
                                if (i == 3) {
                                    Ref$ObjectRef ref$ObjectRef7 = networkFetcher$doFetch$12.m;
                                    ResultKt.b(obj);
                                    return (SourceFetchResult) obj;
                                }
                                u2.l("call to 'resume' before 'invoke' with coroutine");
                                return null;
                            }
                            ref$ObjectRef3 = networkFetcher$doFetch$12.m;
                            ResultKt.b(obj);
                            sourceFetchResult = (SourceFetchResult) obj;
                            if (sourceFetchResult != null) {
                                NetworkClient networkClient = (NetworkClient) lazy.getValue();
                                NetworkRequest g = networkFetcher.g();
                                NetworkFetcher$doFetch$2 networkFetcher$doFetch$2 = new NetworkFetcher$doFetch$2(networkFetcher, null);
                                networkFetcher$doFetch$12.m = ref$ObjectRef3;
                                networkFetcher$doFetch$12.n = null;
                                networkFetcher$doFetch$12.q = 3;
                                obj = CallFactoryNetworkClient.a(((CallFactoryNetworkClient) networkClient).a, g, networkFetcher$doFetch$2, networkFetcher$doFetch$12);
                            } else {
                                return sourceFetchResult;
                            }
                        } else {
                            Ref$ObjectRef ref$ObjectRef8 = networkFetcher$doFetch$12.n;
                            Ref$ObjectRef ref$ObjectRef9 = networkFetcher$doFetch$12.m;
                            try {
                                ResultKt.b(obj);
                                ref$ObjectRef4 = ref$ObjectRef8;
                                ref$ObjectRef5 = ref$ObjectRef9;
                            } catch (Exception e) {
                                e = e;
                                ref$ObjectRef6 = ref$ObjectRef9;
                                snapshot = (DiskCache.Snapshot) ref$ObjectRef6.j;
                                if (snapshot != null) {
                                    try {
                                        jb.l(snapshot);
                                    } catch (RuntimeException e2) {
                                        throw e2;
                                    } catch (Exception unused) {
                                    }
                                }
                                throw e;
                            }
                        }
                    } else {
                        ResultKt.b(obj);
                        ?? obj3 = new Object();
                        if (options.h.j && (diskCache = (DiskCache) networkFetcher.d.getValue()) != null) {
                            String str = options.e;
                            if (str == null) {
                                str = ref$ObjectRef6;
                            }
                            snapshot2 = ((RealDiskCache) diskCache).b(str);
                        } else {
                            snapshot2 = null;
                        }
                        obj3.j = snapshot2;
                        try {
                            ?? obj4 = new Object();
                            ref$ObjectRef2 = obj3;
                            ref$ObjectRef = obj4;
                            if (snapshot2 != null) {
                                Long l = networkFetcher.e().O(((DiskCache.Snapshot) obj3.j).e()).d;
                                if (l != null && l.longValue() == 0) {
                                    return new SourceFetchResult(networkFetcher.i((DiskCache.Snapshot) obj3.j), f(ref$ObjectRef6, null), DataSource.l);
                                }
                                NetworkResponse j = networkFetcher.j((DiskCache.Snapshot) obj3.j);
                                obj4.j = j;
                                ref$ObjectRef2 = obj3;
                                ref$ObjectRef = obj4;
                                if (j != null) {
                                    CacheStrategy cacheStrategy = (CacheStrategy) networkFetcher.e.getValue();
                                    NetworkResponse networkResponse2 = (NetworkResponse) obj4.j;
                                    networkFetcher.g();
                                    networkFetcher$doFetch$12.m = obj3;
                                    networkFetcher$doFetch$12.n = obj4;
                                    networkFetcher$doFetch$12.q = 1;
                                    ((DefaultCacheStrategy) cacheStrategy).getClass();
                                    obj = new CacheStrategy.ReadResult(networkResponse2);
                                    ref$ObjectRef5 = obj3;
                                    ref$ObjectRef4 = obj4;
                                    if (obj == obj2) {
                                        return obj2;
                                    }
                                }
                            }
                            ref$ObjectRef3 = ref$ObjectRef2;
                            if (options.i.j && Intrinsics.a(Looper.myLooper(), Looper.getMainLooper())) {
                                throw new NetworkOnMainThreadException();
                            }
                            NetworkRequest g2 = networkFetcher.g();
                            NetworkClient networkClient2 = (NetworkClient) lazy.getValue();
                            NetworkFetcher$doFetch$fetchResult$1 networkFetcher$doFetch$fetchResult$1 = new NetworkFetcher$doFetch$fetchResult$1(ref$ObjectRef3, networkFetcher, ref$ObjectRef, g2, null);
                            networkFetcher$doFetch$12.m = ref$ObjectRef3;
                            networkFetcher$doFetch$12.n = null;
                            networkFetcher$doFetch$12.q = 2;
                            obj = CallFactoryNetworkClient.a(((CallFactoryNetworkClient) networkClient2).a, g2, networkFetcher$doFetch$fetchResult$1, networkFetcher$doFetch$12);
                            if (obj == obj2) {
                                return obj2;
                            }
                            sourceFetchResult = (SourceFetchResult) obj;
                            if (sourceFetchResult != null) {
                            }
                        } catch (Exception e3) {
                            e = e3;
                            ref$ObjectRef6 = obj3;
                            snapshot = (DiskCache.Snapshot) ref$ObjectRef6.j;
                            if (snapshot != null) {
                            }
                            throw e;
                        }
                    }
                    CacheStrategy.ReadResult readResult = (CacheStrategy.ReadResult) obj;
                    networkResponse = readResult.a;
                    ref$ObjectRef2 = ref$ObjectRef5;
                    ref$ObjectRef = ref$ObjectRef4;
                    if (networkResponse != null) {
                        h(networkResponse);
                        return new SourceFetchResult(networkFetcher.i((DiskCache.Snapshot) ref$ObjectRef5.j), f(ref$ObjectRef6, readResult.a.d.a()), DataSource.l);
                    }
                    ref$ObjectRef3 = ref$ObjectRef2;
                    if (options.i.j) {
                        throw new NetworkOnMainThreadException();
                    }
                    NetworkRequest g22 = networkFetcher.g();
                    NetworkClient networkClient22 = (NetworkClient) lazy.getValue();
                    NetworkFetcher$doFetch$fetchResult$1 networkFetcher$doFetch$fetchResult$12 = new NetworkFetcher$doFetch$fetchResult$1(ref$ObjectRef3, networkFetcher, ref$ObjectRef, g22, null);
                    networkFetcher$doFetch$12.m = ref$ObjectRef3;
                    networkFetcher$doFetch$12.n = null;
                    networkFetcher$doFetch$12.q = 2;
                    obj = CallFactoryNetworkClient.a(((CallFactoryNetworkClient) networkClient22).a, g22, networkFetcher$doFetch$fetchResult$12, networkFetcher$doFetch$12);
                    if (obj == obj2) {
                    }
                    sourceFetchResult = (SourceFetchResult) obj;
                    if (sourceFetchResult != null) {
                    }
                }
            }
            if (i == 0) {
            }
            CacheStrategy.ReadResult readResult2 = (CacheStrategy.ReadResult) obj;
            networkResponse = readResult2.a;
            ref$ObjectRef2 = ref$ObjectRef5;
            ref$ObjectRef = ref$ObjectRef4;
            if (networkResponse != null) {
            }
            ref$ObjectRef3 = ref$ObjectRef2;
            if (options.i.j) {
            }
            NetworkRequest g222 = networkFetcher.g();
            NetworkClient networkClient222 = (NetworkClient) lazy.getValue();
            NetworkFetcher$doFetch$fetchResult$1 networkFetcher$doFetch$fetchResult$122 = new NetworkFetcher$doFetch$fetchResult$1(ref$ObjectRef3, networkFetcher, ref$ObjectRef, g222, null);
            networkFetcher$doFetch$12.m = ref$ObjectRef3;
            networkFetcher$doFetch$12.n = null;
            networkFetcher$doFetch$12.q = 2;
            obj = CallFactoryNetworkClient.a(((CallFactoryNetworkClient) networkClient222).a, g222, networkFetcher$doFetch$fetchResult$122, networkFetcher$doFetch$12);
            if (obj == obj2) {
            }
            sourceFetchResult = (SourceFetchResult) obj;
            if (sourceFetchResult != null) {
            }
        } catch (Exception e4) {
            e = e4;
        }
        networkFetcher$doFetch$1 = new NetworkFetcher$doFetch$1(networkFetcher, continuation);
        NetworkFetcher$doFetch$1 networkFetcher$doFetch$122 = networkFetcher$doFetch$1;
        obj = networkFetcher$doFetch$122.o;
        obj2 = CoroutineSingletons.j;
        i = networkFetcher$doFetch$122.q;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    /* JADX WARN: Type inference failed for: r7v2, types: [okio.Buffer, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object c(NetworkFetcher networkFetcher, NetworkResponseBody networkResponseBody, ContinuationImpl continuationImpl) {
        NetworkFetcher$toImageSource$1 networkFetcher$toImageSource$1;
        int i;
        Buffer buffer;
        networkFetcher.getClass();
        if (continuationImpl instanceof NetworkFetcher$toImageSource$1) {
            networkFetcher$toImageSource$1 = (NetworkFetcher$toImageSource$1) continuationImpl;
            int i2 = networkFetcher$toImageSource$1.p;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                networkFetcher$toImageSource$1.p = i2 - Integer.MIN_VALUE;
                Object obj = networkFetcher$toImageSource$1.n;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = networkFetcher$toImageSource$1.p;
                if (i == 0) {
                    if (i == 1) {
                        buffer = networkFetcher$toImageSource$1.m;
                        ResultKt.b(obj);
                    } else {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                } else {
                    ResultKt.b(obj);
                    ?? obj2 = new Object();
                    networkFetcher$toImageSource$1.m = obj2;
                    networkFetcher$toImageSource$1.p = 1;
                    ((SourceResponseBody) networkResponseBody).B0(obj2);
                    if (Unit.a == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                    buffer = obj2;
                }
                return new SourceImageSource(buffer, networkFetcher.e(), null);
            }
        }
        networkFetcher$toImageSource$1 = new NetworkFetcher$toImageSource$1(networkFetcher, continuationImpl);
        Object obj3 = networkFetcher$toImageSource$1.n;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = networkFetcher$toImageSource$1.p;
        if (i == 0) {
        }
        return new SourceImageSource(buffer, networkFetcher.e(), null);
    }

    /* JADX WARN: Removed duplicated region for block: B:106:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x01cf  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x01c9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x01bf A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x010e  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0131 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0032  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object d(NetworkFetcher networkFetcher, DiskCache.Snapshot snapshot, NetworkResponse networkResponse, NetworkResponse networkResponse2, ContinuationImpl continuationImpl) {
        NetworkFetcher$writeToDiskCache$1 networkFetcher$writeToDiskCache$1;
        int i;
        CacheStrategy.WriteResult writeResult;
        NetworkResponse networkResponse3;
        DiskCache.Editor editor;
        DiskCache.Editor a;
        DiskCache.Editor editor2;
        Throwable th;
        NetworkResponseBody networkResponseBody;
        NetworkResponseBody networkResponseBody2;
        DiskCache.Snapshot snapshot2 = snapshot;
        NetworkResponse networkResponse4 = networkResponse2;
        networkFetcher.getClass();
        Options options = networkFetcher.b;
        if (continuationImpl instanceof NetworkFetcher$writeToDiskCache$1) {
            networkFetcher$writeToDiskCache$1 = (NetworkFetcher$writeToDiskCache$1) continuationImpl;
            int i2 = networkFetcher$writeToDiskCache$1.s;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                networkFetcher$writeToDiskCache$1.s = i2 - Integer.MIN_VALUE;
                Object obj = networkFetcher$writeToDiskCache$1.q;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = networkFetcher$writeToDiskCache$1.s;
                Throwable th2 = null;
                if (i == 0) {
                    if (i != 1) {
                        if (i == 2) {
                            editor2 = (DiskCache.Editor) networkFetcher$writeToDiskCache$1.p;
                            networkResponse3 = networkFetcher$writeToDiskCache$1.o;
                            networkResponse4 = networkFetcher$writeToDiskCache$1.n;
                            try {
                                ResultKt.b(obj);
                                return editor2.a();
                            } catch (Exception e) {
                                e = e;
                                try {
                                    editor2.b();
                                } catch (Exception unused) {
                                }
                                networkResponseBody = networkResponse4.e;
                                if (networkResponseBody != null) {
                                }
                                networkResponseBody2 = networkResponse3.e;
                                if (networkResponseBody2 == null) {
                                }
                            }
                        } else {
                            u2.l("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                    } else {
                        NetworkResponse networkResponse5 = networkFetcher$writeToDiskCache$1.n;
                        DiskCache.Snapshot snapshot3 = networkFetcher$writeToDiskCache$1.m;
                        ResultKt.b(obj);
                        networkResponse4 = networkResponse5;
                        snapshot2 = snapshot3;
                    }
                } else {
                    ResultKt.b(obj);
                    if (!options.h.k) {
                        if (snapshot2 != null) {
                            try {
                                jb.l(snapshot2);
                            } catch (RuntimeException e2) {
                                throw e2;
                            } catch (Exception unused2) {
                            }
                            return null;
                        }
                        return null;
                    }
                    CacheStrategy cacheStrategy = (CacheStrategy) networkFetcher.e.getValue();
                    networkFetcher$writeToDiskCache$1.m = snapshot2;
                    networkFetcher$writeToDiskCache$1.n = networkResponse4;
                    networkFetcher$writeToDiskCache$1.s = 1;
                    ((DefaultCacheStrategy) cacheStrategy).getClass();
                    int i3 = networkResponse4.a;
                    if (i3 == 304 && networkResponse != null) {
                        NetworkHeaders networkHeaders = networkResponse.d;
                        NetworkHeaders networkHeaders2 = networkResponse4.d;
                        networkHeaders.getClass();
                        NetworkHeaders.Builder builder = new NetworkHeaders.Builder(networkHeaders);
                        for (Map.Entry entry : networkHeaders2.a.entrySet()) {
                            String str = (String) entry.getKey();
                            List list = (List) entry.getValue();
                            String lowerCase = str.toLowerCase(Locale.ROOT);
                            lowerCase.getClass();
                            builder.a.put(lowerCase, CollectionsKt.Y(list));
                        }
                        writeResult = new CacheStrategy.WriteResult(new NetworkResponse(networkResponse4.a, networkResponse4.b, networkResponse4.c, builder.b(), null, networkResponse4.f));
                    } else if ((200 <= i3 && i3 < 300) || DefaultCacheStrategy.b.contains(new Integer(i3))) {
                        writeResult = new CacheStrategy.WriteResult(networkResponse4);
                    } else {
                        writeResult = CacheStrategy.WriteResult.b;
                    }
                    obj = writeResult;
                    if (obj == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                }
                networkResponse3 = ((CacheStrategy.WriteResult) obj).a;
                if (networkResponse3 != null) {
                    if (snapshot2 != null) {
                        a = snapshot2.b0();
                    } else {
                        DiskCache diskCache = (DiskCache) networkFetcher.d.getValue();
                        if (diskCache != null) {
                            String str2 = options.e;
                            if (str2 == null) {
                                str2 = networkFetcher.a;
                            }
                            a = ((RealDiskCache) diskCache).a(str2);
                        } else {
                            editor = null;
                            if (editor != null) {
                                try {
                                    Sink S = networkFetcher.e().S(editor.e(), false);
                                    S.getClass();
                                    RealBufferedSink realBufferedSink = new RealBufferedSink(S);
                                    try {
                                        CacheNetworkResponse.b(networkResponse3, realBufferedSink);
                                        try {
                                            realBufferedSink.close();
                                            th = null;
                                        } catch (Throwable th3) {
                                            th = th3;
                                        }
                                    } catch (Throwable th4) {
                                        try {
                                            realBufferedSink.close();
                                        } catch (Throwable th5) {
                                            ExceptionsKt.a(th4, th5);
                                        }
                                        th = th4;
                                    }
                                    if (th == null) {
                                        NetworkResponseBody networkResponseBody3 = networkResponse3.e;
                                        if (networkResponseBody3 != null) {
                                            FileSystem e3 = networkFetcher.e();
                                            Path g = editor.g();
                                            networkFetcher$writeToDiskCache$1.m = null;
                                            networkFetcher$writeToDiskCache$1.n = networkResponse4;
                                            networkFetcher$writeToDiskCache$1.o = networkResponse3;
                                            networkFetcher$writeToDiskCache$1.p = editor;
                                            networkFetcher$writeToDiskCache$1.s = 2;
                                            BufferedSource bufferedSource = ((SourceResponseBody) networkResponseBody3).j;
                                            Sink S2 = e3.S(g, false);
                                            S2.getClass();
                                            RealBufferedSink realBufferedSink2 = new RealBufferedSink(S2);
                                            try {
                                                new Long(bufferedSource.S0(realBufferedSink2));
                                                try {
                                                    realBufferedSink2.close();
                                                } catch (Throwable th6) {
                                                    th2 = th6;
                                                }
                                            } catch (Throwable th7) {
                                                th2 = th7;
                                                try {
                                                    realBufferedSink2.close();
                                                } catch (Throwable th8) {
                                                    ExceptionsKt.a(th2, th8);
                                                }
                                            }
                                            if (th2 == null) {
                                                Unit unit = Unit.a;
                                                if (unit != coroutineSingletons) {
                                                    editor2 = editor;
                                                    obj = unit;
                                                    return editor2.a();
                                                }
                                                return coroutineSingletons;
                                            }
                                            throw th2;
                                        }
                                        editor2 = editor;
                                        return editor2.a();
                                    }
                                    throw th;
                                } catch (Exception e4) {
                                    e = e4;
                                    editor2 = editor;
                                    editor2.b();
                                    networkResponseBody = networkResponse4.e;
                                    if (networkResponseBody != null) {
                                        try {
                                            jb.l(networkResponseBody);
                                        } catch (RuntimeException e5) {
                                            throw e5;
                                        } catch (Exception unused3) {
                                        }
                                    }
                                    networkResponseBody2 = networkResponse3.e;
                                    if (networkResponseBody2 == null) {
                                        try {
                                            jb.l(networkResponseBody2);
                                            throw e;
                                        } catch (RuntimeException e6) {
                                            throw e6;
                                        } catch (Exception unused4) {
                                            throw e;
                                        }
                                    }
                                    throw e;
                                }
                            }
                        }
                    }
                    editor = a;
                    if (editor != null) {
                    }
                }
                return null;
            }
        }
        networkFetcher$writeToDiskCache$1 = new NetworkFetcher$writeToDiskCache$1(networkFetcher, continuationImpl);
        Object obj2 = networkFetcher$writeToDiskCache$1.q;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = networkFetcher$writeToDiskCache$1.s;
        Throwable th22 = null;
        if (i == 0) {
        }
        networkResponse3 = ((CacheStrategy.WriteResult) obj2).a;
        if (networkResponse3 != null) {
        }
        return null;
    }

    public static String f(String str, String str2) {
        String b;
        if ((str2 == null || StringsKt.J(str2, "text/plain", false)) && (b = MimeTypeMap.b(str)) != null) {
            return b;
        }
        if (str2 != null) {
            return StringsKt.N(str2, ';');
        }
        return null;
    }

    public static void h(NetworkResponse networkResponse) {
        int i = networkResponse.a;
        if ((200 <= i && i < 300) || i == 304) {
        } else {
            throw new RuntimeException(q.g(i, "HTTP "));
        }
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [coil3.network.NetworkFetcher$fetch$2, kotlin.jvm.internal.FunctionReference] */
    @Override // coil3.fetch.Fetcher
    public final Object a(Continuation continuation) {
        ConcurrentRequestStrategy concurrentRequestStrategy = (ConcurrentRequestStrategy) this.g.getValue();
        String str = this.b.e;
        ?? functionReference = new FunctionReference(1, this, NetworkFetcher.class, "doFetch", "doFetch(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", 0);
        ((UncoordinatedConcurrentRequestStrategy) concurrentRequestStrategy).getClass();
        return functionReference.b(continuation);
    }

    public final FileSystem e() {
        FileSystem fileSystem;
        DiskCache diskCache = (DiskCache) this.d.getValue();
        if (diskCache != null && (fileSystem = ((RealDiskCache) diskCache).a) != null) {
            return fileSystem;
        }
        return this.b.f;
    }

    public final NetworkRequest g() {
        boolean z;
        Extras.Key key = ImageRequestsKt.b;
        Options options = this.b;
        NetworkHeaders networkHeaders = (NetworkHeaders) ExtrasKt.b(options, key);
        networkHeaders.getClass();
        NetworkHeaders.Builder builder = new NetworkHeaders.Builder(networkHeaders);
        CachePolicy cachePolicy = options.h;
        boolean z2 = cachePolicy.j;
        if (options.i.j && ((ConnectivityChecker) this.f.j).a()) {
            z = true;
        } else {
            z = false;
        }
        if (!z && z2) {
            builder.c("only-if-cached, max-stale=2147483647");
        } else if (z && !z2) {
            if (cachePolicy.k) {
                builder.c("no-cache");
            } else {
                builder.c("no-cache, no-store");
            }
        } else if (!z && !z2) {
            builder.c("no-cache, only-if-cached");
        }
        String str = (String) ExtrasKt.b(options, ImageRequestsKt.a);
        NetworkHeaders b = builder.b();
        if (ExtrasKt.b(options, ImageRequestsKt.c) == null) {
            return new NetworkRequest(this.a, str, b, options.j);
        }
        d.i();
        return null;
    }

    public final FileImageSource i(DiskCache.Snapshot snapshot) {
        Path g = snapshot.g();
        FileSystem e = e();
        String str = this.b.e;
        if (str == null) {
            str = this.a;
        }
        return ImageSourceKt.a(g, e, str, snapshot, 16);
    }

    public final NetworkResponse j(DiskCache.Snapshot snapshot) {
        Throwable th;
        NetworkResponse networkResponse;
        try {
            Source X = e().X(snapshot.e());
            X.getClass();
            RealBufferedSource realBufferedSource = new RealBufferedSource(X);
            try {
                networkResponse = CacheNetworkResponse.a(realBufferedSource);
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
                networkResponse = null;
            }
            if (th == null) {
                return networkResponse;
            }
            throw th;
        } catch (IOException unused) {
            return null;
        }
    }
}
