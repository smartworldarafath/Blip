package coil3.intercept;

import android.content.Context;
import coil3.EventListener;
import coil3.Image;
import coil3.RealImageLoader;
import coil3.decode.DataSource;
import coil3.intercept.EngineInterceptor;
import coil3.intercept.Interceptor;
import coil3.memory.MemoryCache;
import coil3.memory.MemoryCacheService;
import coil3.memory.RealMemoryCache;
import coil3.request.ImageRequest;
import coil3.request.Options;
import coil3.request.SuccessResult;
import coil3.util.AndroidSystemCallbacks;
import defpackage.u2;
import java.util.LinkedHashMap;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "coil3.intercept.EngineInterceptor$intercept$2", f = "EngineInterceptor.kt", l = {77}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
public final class EngineInterceptor$intercept$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super SuccessResult>, Object> {
    public int n;
    public final /* synthetic */ EngineInterceptor o;
    public final /* synthetic */ ImageRequest p;
    public final /* synthetic */ Object q;
    public final /* synthetic */ Options r;
    public final /* synthetic */ EventListener s;
    public final /* synthetic */ MemoryCache.Key t;
    public final /* synthetic */ Interceptor.Chain u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EngineInterceptor$intercept$2(EngineInterceptor engineInterceptor, ImageRequest imageRequest, Object obj, Options options, EventListener eventListener, MemoryCache.Key key, Interceptor.Chain chain, Continuation continuation) {
        super(2, continuation);
        this.o = engineInterceptor;
        this.p = imageRequest;
        this.q = obj;
        this.r = options;
        this.s = eventListener;
        this.t = key;
        this.u = chain;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((EngineInterceptor$intercept$2) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new EngineInterceptor$intercept$2(this.o, this.p, this.q, this.r, this.s, this.t, this.u, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        Object b;
        boolean z;
        MemoryCache.Key key;
        boolean z2;
        MemoryCache d;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.n;
        if (i != 0) {
            if (i == 1) {
                ResultKt.b(obj);
                b = obj;
            } else {
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
        } else {
            ResultKt.b(obj);
            EngineInterceptor engineInterceptor = this.o;
            ImageRequest imageRequest = this.p;
            Object obj2 = this.q;
            Options options = this.r;
            EventListener eventListener = this.s;
            this.n = 1;
            b = EngineInterceptor.b(engineInterceptor, imageRequest, obj2, options, eventListener, this);
            if (b == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        EngineInterceptor.ExecuteResult executeResult = (EngineInterceptor.ExecuteResult) b;
        AndroidSystemCallbacks androidSystemCallbacks = this.o.b;
        synchronized (androidSystemCallbacks) {
            try {
                RealImageLoader realImageLoader = (RealImageLoader) androidSystemCallbacks.a.get();
                if (realImageLoader != null) {
                    if (androidSystemCallbacks.d == null) {
                        Context context = realImageLoader.a.a;
                        androidSystemCallbacks.d = context;
                        context.registerComponentCallbacks(androidSystemCallbacks.c);
                    }
                } else {
                    androidSystemCallbacks.a();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        MemoryCacheService memoryCacheService = this.o.d;
        MemoryCache.Key key2 = this.t;
        ImageRequest imageRequest2 = this.p;
        if (key2 == null || !imageRequest2.i.k || !executeResult.a.j() || (d = memoryCacheService.a.d()) == null) {
            z = false;
        } else {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            linkedHashMap.put("coil#is_sampled", Boolean.valueOf(executeResult.b));
            String str = executeResult.d;
            if (str != null) {
                linkedHashMap.put("coil#disk_cache_key", str);
            }
            Image image = executeResult.a;
            MemoryCache.Value value = new MemoryCache.Value(image, linkedHashMap);
            RealMemoryCache realMemoryCache = (RealMemoryCache) d;
            synchronized (realMemoryCache.c) {
                long i2 = image.i();
                if (i2 >= 0) {
                    realMemoryCache.a.a(key2, image, value.b, i2);
                } else {
                    throw new IllegalStateException(("Image size must be non-negative: " + i2).toString());
                }
            }
            z = true;
        }
        Image image2 = executeResult.a;
        ImageRequest imageRequest3 = this.p;
        DataSource dataSource = executeResult.c;
        MemoryCache.Key key3 = this.t;
        if (z) {
            key = key3;
        } else {
            key = null;
        }
        String str2 = executeResult.d;
        boolean z3 = executeResult.b;
        Interceptor.Chain chain = this.u;
        if ((chain instanceof RealInterceptorChain) && ((RealInterceptorChain) chain).g) {
            z2 = true;
        } else {
            z2 = false;
        }
        return new SuccessResult(image2, imageRequest3, dataSource, key, str2, z3, z2);
    }
}
