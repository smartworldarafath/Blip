package coil3;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;
import android.widget.ImageView;
import androidx.lifecycle.Lifecycle;
import coil3.ComponentRegistry;
import coil3.EventListener;
import coil3.Extras;
import coil3.decode.BitmapFactoryDecoder;
import coil3.decode.ExifOrientationStrategy;
import coil3.decode.StaticImageDecoder;
import coil3.intercept.EngineInterceptor;
import coil3.memory.MemoryCache;
import coil3.request.AndroidRequestService;
import coil3.request.BaseRequestDelegate;
import coil3.request.Disposable;
import coil3.request.ErrorResult;
import coil3.request.ImageRequest;
import coil3.request.ImageRequests_androidKt;
import coil3.request.ImageResult;
import coil3.request.LifecycleRequestDelegate;
import coil3.request.NullRequestData;
import coil3.request.RequestDelegate;
import coil3.request.SuccessResult;
import coil3.request.ViewTargetRequestDelegate;
import coil3.size.Precision;
import coil3.size.RealViewSizeResolver;
import coil3.size.Scale;
import coil3.size.Size;
import coil3.size.SizeResolver;
import coil3.size.ViewSizeResolver;
import coil3.target.Target;
import coil3.target.ViewTarget;
import coil3.transition.NoneTransition$Factory;
import coil3.transition.Transition$Factory;
import coil3.transition.TransitionTarget;
import coil3.util.AndroidSystemCallbacks;
import coil3.util.Collections_jvmCommonKt;
import coil3.util.UtilsKt;
import coil3.util.Utils_androidKt;
import defpackage.p5;
import defpackage.u2;
import defpackage.vc;
import java.io.File;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.Lazy;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineExceptionHandler;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.JobSupport;
import kotlinx.coroutines.SupervisorKt;
import kotlinx.coroutines.internal.ContextScope;
import kotlinx.coroutines.sync.Semaphore;
import kotlinx.coroutines.sync.SemaphoreKt;
import okio.Path;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class RealImageLoader implements ImageLoader {
    public static final /* synthetic */ int f = 0;
    public final Options a;
    public final ContextScope b = CoroutineScopeKt.a(CoroutineContext.Element.DefaultImpls.c((JobSupport) SupervisorKt.b(), new AbstractCoroutineContextElement(CoroutineExceptionHandler.Key.j)));
    public final AndroidRequestService c;
    public final ComponentRegistry d;
    public volatile /* synthetic */ int e;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Options {
        public final Context a;
        public final ImageRequest.Defaults b;
        public final Lazy c;
        public final Lazy d;
        public final Lazy e;
        public final ComponentRegistry f;

        public Options(Context context, ImageRequest.Defaults defaults, Lazy lazy, Lazy lazy2, Lazy lazy3, ComponentRegistry componentRegistry) {
            this.a = context;
            this.b = defaults;
            this.c = lazy;
            this.d = lazy2;
            this.e = lazy3;
            this.f = componentRegistry;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Options) {
                Options options = (Options) obj;
                if (Intrinsics.a(this.a, options.a) && this.b.equals(options.b) && this.c == options.c && this.d == options.d && this.e == options.e && this.f == options.f) {
                    return true;
                }
                return false;
            }
            return false;
        }

        public final int hashCode() {
            return (this.f.hashCode() + ((EventListener.Factory.g.hashCode() + ((this.e.hashCode() + ((this.d.hashCode() + ((this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31;
        }

        public final String toString() {
            return "Options(application=" + this.a + ", defaults=" + this.b + ", mainCoroutineContextLazy=" + this.c + ", memoryCacheLazy=" + this.d + ", diskCacheLazy=" + this.e + ", eventListenerFactory=" + EventListener.Factory.g + ", componentRegistry=" + this.f + ", logger=null)";
        }
    }

    static {
        AtomicIntegerFieldUpdater.newUpdater(RealImageLoader.class, "e");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v10, types: [coil3.map.Mapper, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r13v13, types: [java.lang.Object, coil3.fetch.Fetcher$Factory] */
    /* JADX WARN: Type inference failed for: r13v14, types: [java.lang.Object, coil3.fetch.Fetcher$Factory] */
    /* JADX WARN: Type inference failed for: r13v15, types: [java.lang.Object, coil3.fetch.Fetcher$Factory] */
    /* JADX WARN: Type inference failed for: r13v16, types: [java.lang.Object, coil3.fetch.Fetcher$Factory] */
    /* JADX WARN: Type inference failed for: r13v6, types: [coil3.map.Mapper, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r13v7, types: [java.lang.Object, coil3.fetch.Fetcher$Factory] */
    /* JADX WARN: Type inference failed for: r13v8, types: [java.lang.Object, coil3.fetch.Fetcher$Factory] */
    /* JADX WARN: Type inference failed for: r13v9, types: [coil3.map.Mapper, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v8, types: [coil3.map.Mapper, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v9, types: [coil3.map.Mapper, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v1, types: [java.lang.Object, coil3.fetch.Fetcher$Factory] */
    /* JADX WARN: Type inference failed for: r7v2, types: [java.lang.Object, coil3.fetch.Fetcher$Factory] */
    /* JADX WARN: Type inference failed for: r7v3, types: [java.lang.Object, coil3.fetch.Fetcher$Factory] */
    /* JADX WARN: Type inference failed for: r7v4, types: [java.lang.Object, coil3.fetch.Fetcher$Factory] */
    public RealImageLoader(Options options) {
        this.a = options;
        AndroidSystemCallbacks androidSystemCallbacks = new AndroidSystemCallbacks(this);
        AndroidRequestService androidRequestService = new AndroidRequestService(this);
        this.c = androidRequestService;
        ComponentRegistry.Builder builder = new ComponentRegistry.Builder(options.f);
        ImageRequest.Defaults defaults = options.b;
        Object obj = defaults.n.a.get(ImageLoadersKt.a);
        boolean booleanValue = ((Boolean) (obj == null ? Boolean.TRUE : obj)).booleanValue();
        ArrayList arrayList = builder.d;
        ArrayList arrayList2 = builder.e;
        if (booleanValue) {
            arrayList.add(new vc(9));
            arrayList2.add(new vc(10));
        }
        builder.b(new Object(), Reflection.a(android.net.Uri.class));
        builder.b(new Object(), Reflection.a(Integer.class));
        Pair pair = new Pair(new Object(), Reflection.a(Uri.class));
        ArrayList arrayList3 = builder.c;
        arrayList3.add(pair);
        builder.a(new Object(), Reflection.a(Uri.class));
        builder.a(new Object(), Reflection.a(Uri.class));
        builder.a(new Object(), Reflection.a(Uri.class));
        builder.a(new Object(), Reflection.a(Drawable.class));
        Extras.Key key = ImageLoaders_androidKt.a;
        Object obj2 = defaults.n.a.get(ImageLoaders_androidKt.a);
        Semaphore a = SemaphoreKt.a(((Number) (obj2 == null ? 4 : obj2)).intValue());
        int i = Build.VERSION.SDK_INT;
        int i2 = 1;
        Object obj3 = ExifOrientationStrategy.a;
        if (i >= 29) {
            Object obj4 = defaults.n.a.get(ImageLoaders_androidKt.c);
            if (((Boolean) (obj4 == null ? Boolean.TRUE : obj4)).booleanValue()) {
                Object obj5 = defaults.n.a.get(ImageLoaders_androidKt.b);
                if (((ExifOrientationStrategy) (obj5 == null ? obj3 : obj5)).equals(obj3)) {
                    arrayList2.add(new p5(new StaticImageDecoder.Factory(a), i2));
                }
            }
        }
        Object obj6 = defaults.n.a.get(ImageLoaders_androidKt.b);
        arrayList2.add(new p5(new BitmapFactoryDecoder.Factory(a, (ExifOrientationStrategy) (obj6 != null ? obj6 : obj3)), i2));
        builder.b(new Object(), Reflection.a(File.class));
        builder.a(new Object(), Reflection.a(Uri.class));
        builder.a(new Object(), Reflection.a(ByteBuffer.class));
        builder.b(new Object(), Reflection.a(String.class));
        builder.b(new Object(), Reflection.a(Path.class));
        arrayList3.add(new Pair(new Object(), Reflection.a(Uri.class)));
        arrayList3.add(new Pair(new Object(), Reflection.a(Uri.class)));
        builder.a(new Object(), Reflection.a(Uri.class));
        builder.a(new Object(), Reflection.a(byte[].class));
        builder.a(new Object(), Reflection.a(Uri.class));
        builder.a(new Object(), Reflection.a(Bitmap.class));
        EngineInterceptor engineInterceptor = new EngineInterceptor(this, androidSystemCallbacks, androidRequestService);
        ArrayList arrayList4 = builder.a;
        arrayList4.add(engineInterceptor);
        this.d = new ComponentRegistry(Collections_jvmCommonKt.a(arrayList4), Collections_jvmCommonKt.a(builder.b), Collections_jvmCommonKt.a(arrayList3), Collections_jvmCommonKt.a(arrayList), Collections_jvmCommonKt.a(arrayList2));
    }

    public final Disposable a(ImageRequest imageRequest) {
        return RealImageLoader_androidKt.a(imageRequest, BuildersKt.a(this.b, (CoroutineContext) this.a.c.getValue(), new RealImageLoader$enqueue$job$1(this, imageRequest, null)));
    }

    /* JADX WARN: Code restructure failed: missing block: B:150:0x01ab, code lost:
    
        if (r1.a(r9) == r10) goto L132;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0221 A[Catch: all -> 0x003f, TryCatch #5 {all -> 0x003f, blocks: (B:14:0x003a, B:15:0x021b, B:17:0x0221, B:21:0x023e, B:22:0x0241, B:26:0x0231, B:27:0x0248, B:29:0x024c, B:30:0x0258, B:31:0x025d, B:68:0x006a, B:69:0x01b4, B:71:0x01bb, B:73:0x01c5, B:74:0x01cf, B:75:0x01d2), top: B:8:0x002c }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0248 A[Catch: all -> 0x003f, TryCatch #5 {all -> 0x003f, blocks: (B:14:0x003a, B:15:0x021b, B:17:0x0221, B:21:0x023e, B:22:0x0241, B:26:0x0231, B:27:0x0248, B:29:0x024c, B:30:0x0258, B:31:0x025d, B:68:0x006a, B:69:0x01b4, B:71:0x01bb, B:73:0x01c5, B:74:0x01cf, B:75:0x01d2), top: B:8:0x002c }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0217  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0272 A[Catch: all -> 0x027f, TRY_LEAVE, TryCatch #4 {all -> 0x027f, blocks: (B:51:0x026e, B:53:0x0272, B:56:0x0281, B:57:0x0287), top: B:50:0x026e }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0281 A[Catch: all -> 0x027f, TRY_ENTER, TryCatch #4 {all -> 0x027f, blocks: (B:51:0x026e, B:53:0x0272, B:56:0x0281, B:57:0x0287), top: B:50:0x026e }] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01bb A[Catch: all -> 0x003f, TryCatch #5 {all -> 0x003f, blocks: (B:14:0x003a, B:15:0x021b, B:17:0x0221, B:21:0x023e, B:22:0x0241, B:26:0x0231, B:27:0x0248, B:29:0x024c, B:30:0x0258, B:31:0x025d, B:68:0x006a, B:69:0x01b4, B:71:0x01bb, B:73:0x01c5, B:74:0x01cf, B:75:0x01d2), top: B:8:0x002c }] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01eb  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x006f  */
    /* JADX WARN: Type inference failed for: r17v0, types: [coil3.RealImageLoader] */
    /* JADX WARN: Type inference failed for: r3v13, types: [coil3.EventListener$Companion$NONE$1, coil3.EventListener] */
    /* JADX WARN: Type inference failed for: r3v17 */
    /* JADX WARN: Type inference failed for: r3v23 */
    /* JADX WARN: Type inference failed for: r3v3, types: [int] */
    /* JADX WARN: Type inference failed for: r3v4, types: [coil3.EventListener, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v23, types: [int] */
    /* JADX WARN: Type inference failed for: r4v24, types: [int] */
    /* JADX WARN: Type inference failed for: r5v0, types: [coil3.request.ImageRequest] */
    /* JADX WARN: Type inference failed for: r5v1, types: [coil3.request.RequestDelegate] */
    /* JADX WARN: Type inference failed for: r5v29 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v34 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object b(ImageRequest imageRequest, int i, ContinuationImpl continuationImpl) {
        RealImageLoader$execute$3 realImageLoader$execute$3;
        ImageRequest imageRequest2;
        Object obj;
        CoroutineSingletons coroutineSingletons;
        ?? r3;
        boolean z;
        RequestDelegate baseRequestDelegate;
        SizeResolver sizeResolver;
        RequestDelegate requestDelegate;
        Precision precision;
        ViewTarget viewTarget;
        View view;
        ImageView imageView;
        Scale scale;
        int i2;
        ImageView.ScaleType scaleType;
        ImageRequest imageRequest3;
        EventListener eventListener;
        Target target;
        ImageRequest imageRequest4;
        EventListener eventListener2;
        RequestDelegate requestDelegate2;
        Image image;
        ImageRequest imageRequest5;
        ImageRequest imageRequest6;
        Object e;
        EventListener eventListener3;
        RequestDelegate requestDelegate3;
        ImageRequest imageRequest7;
        ImageResult imageResult;
        ?? r4;
        ?? r5 = imageRequest;
        int i3 = i;
        try {
            if (continuationImpl instanceof RealImageLoader$execute$3) {
                realImageLoader$execute$3 = (RealImageLoader$execute$3) continuationImpl;
                r4 = realImageLoader$execute$3.t;
                if ((r4 & Integer.MIN_VALUE) != 0) {
                    ?? r42 = r4 - Integer.MIN_VALUE;
                    realImageLoader$execute$3.t = r42;
                    imageRequest2 = r42;
                    RealImageLoader$execute$3 realImageLoader$execute$32 = realImageLoader$execute$3;
                    obj = realImageLoader$execute$32.r;
                    coroutineSingletons = CoroutineSingletons.j;
                    r3 = realImageLoader$execute$32.t;
                    if (r3 == 0) {
                        if (r3 != 1) {
                            if (r3 != 2) {
                                if (r3 == 3) {
                                    eventListener3 = realImageLoader$execute$32.o;
                                    imageRequest7 = realImageLoader$execute$32.n;
                                    requestDelegate3 = realImageLoader$execute$32.m;
                                    ResultKt.b(obj);
                                    imageResult = (ImageResult) obj;
                                    if (!(imageResult instanceof SuccessResult)) {
                                        SuccessResult successResult = (SuccessResult) imageResult;
                                        Target target2 = imageRequest7.c;
                                        ImageRequest imageRequest8 = successResult.b;
                                        Image image2 = successResult.a;
                                        if (!(target2 instanceof TransitionTarget)) {
                                            if (target2 != null) {
                                            }
                                            eventListener3.getClass();
                                            imageRequest8.getClass();
                                        } else {
                                            ((NoneTransition$Factory) ((Transition$Factory) ExtrasKt.a(imageRequest8, ImageRequests_androidKt.a))).getClass();
                                        }
                                        target2.onSuccess(image2);
                                        eventListener3.getClass();
                                        imageRequest8.getClass();
                                    } else if (imageResult instanceof ErrorResult) {
                                        e((ErrorResult) imageResult, imageRequest7.c, eventListener3);
                                    } else {
                                        throw new RuntimeException();
                                    }
                                    requestDelegate3.c();
                                    return imageResult;
                                }
                                u2.l("call to 'resume' before 'invoke' with coroutine");
                                return null;
                            }
                            i3 = realImageLoader$execute$32.q;
                            Image image3 = realImageLoader$execute$32.p;
                            eventListener2 = realImageLoader$execute$32.o;
                            ImageRequest imageRequest9 = realImageLoader$execute$32.n;
                            RequestDelegate requestDelegate4 = realImageLoader$execute$32.m;
                            try {
                                ResultKt.b(obj);
                                imageRequest4 = imageRequest9;
                                image = image3;
                                requestDelegate2 = requestDelegate4;
                                imageRequest5 = imageRequest4;
                                int i4 = i3;
                                try {
                                    Size size = (Size) obj;
                                    eventListener2.getClass();
                                    CoroutineContext coroutineContext = imageRequest5.f;
                                    imageRequest6 = imageRequest5;
                                } catch (Throwable th) {
                                    th = th;
                                    imageRequest6 = imageRequest5;
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                r3 = eventListener2;
                                imageRequest2 = imageRequest9;
                                r5 = requestDelegate4;
                                try {
                                    if (!(th instanceof CancellationException)) {
                                        ErrorResult a = UtilsKt.a(imageRequest2, th);
                                        e(a, imageRequest2.c, r3);
                                        return a;
                                    }
                                    r3.getClass();
                                    imageRequest2.getClass();
                                    throw th;
                                } finally {
                                    r5.c();
                                }
                            }
                            try {
                                RealImageLoader$execute$result$1 realImageLoader$execute$result$1 = new RealImageLoader$execute$result$1(imageRequest6, this, size, eventListener2, image, null);
                                realImageLoader$execute$32.m = requestDelegate2;
                                realImageLoader$execute$32.n = imageRequest6;
                                realImageLoader$execute$32.o = eventListener2;
                                realImageLoader$execute$32.p = null;
                                realImageLoader$execute$32.q = i4;
                                realImageLoader$execute$32.t = 3;
                                e = BuildersKt.e(coroutineContext, realImageLoader$execute$result$1, realImageLoader$execute$32);
                                if (e != coroutineSingletons) {
                                    eventListener3 = eventListener2;
                                    requestDelegate3 = requestDelegate2;
                                    imageRequest7 = imageRequest6;
                                    obj = e;
                                    imageResult = (ImageResult) obj;
                                    if (!(imageResult instanceof SuccessResult)) {
                                    }
                                    requestDelegate3.c();
                                    return imageResult;
                                }
                                return coroutineSingletons;
                            } catch (Throwable th3) {
                                th = th3;
                                r3 = eventListener2;
                                r5 = requestDelegate2;
                                imageRequest2 = imageRequest6;
                                if (!(th instanceof CancellationException)) {
                                }
                            }
                        } else {
                            i3 = realImageLoader$execute$32.q;
                            EventListener eventListener4 = realImageLoader$execute$32.o;
                            ImageRequest imageRequest10 = realImageLoader$execute$32.n;
                            requestDelegate = realImageLoader$execute$32.m;
                            ResultKt.b(obj);
                            eventListener = eventListener4;
                            imageRequest3 = imageRequest10;
                        }
                    } else {
                        ResultKt.b(obj);
                        CoroutineContext coroutineContext2 = realImageLoader$execute$32.k;
                        coroutineContext2.getClass();
                        Job d = JobKt.d(coroutineContext2);
                        if (i3 == 0) {
                            z = true;
                        } else {
                            z = false;
                        }
                        AndroidRequestService androidRequestService = this.c;
                        androidRequestService.getClass();
                        Target target3 = r5.c;
                        if (target3 instanceof ViewTarget) {
                            Lifecycle lifecycle = (Lifecycle) ExtrasKt.a(r5, ImageRequests_androidKt.e);
                            if (lifecycle == null) {
                                lifecycle = AndroidRequestService.a(r5);
                            }
                            baseRequestDelegate = new ViewTargetRequestDelegate(androidRequestService.a, r5, (ViewTarget) target3, lifecycle, d);
                        } else {
                            Lifecycle lifecycle2 = (Lifecycle) ExtrasKt.a(r5, ImageRequests_androidKt.e);
                            if (lifecycle2 == null) {
                                if (z) {
                                    lifecycle2 = AndroidRequestService.a(r5);
                                } else {
                                    lifecycle2 = null;
                                }
                            }
                            if (lifecycle2 != null) {
                                baseRequestDelegate = new LifecycleRequestDelegate(lifecycle2, d);
                            } else {
                                baseRequestDelegate = new BaseRequestDelegate(d);
                            }
                        }
                        baseRequestDelegate.b();
                        androidRequestService.getClass();
                        ImageRequest.Builder a2 = ImageRequest.a(r5);
                        Target target4 = r5.c;
                        a2.b = androidRequestService.a.a.b;
                        ImageRequest.Defined defined = r5.s;
                        SizeResolver sizeResolver2 = defined.g;
                        if (sizeResolver2 == null) {
                            if (target4 instanceof ViewTarget) {
                                View view2 = ((ViewTarget) target4).getView();
                                if ((view2 instanceof ImageView) && ((scaleType = ((ImageView) view2).getScaleType()) == ImageView.ScaleType.CENTER || scaleType == ImageView.ScaleType.MATRIX)) {
                                    sizeResolver = SizeResolver.a;
                                } else {
                                    sizeResolver = new RealViewSizeResolver(view2);
                                }
                            } else {
                                sizeResolver = SizeResolver.a;
                            }
                            a2.l = sizeResolver;
                        } else {
                            sizeResolver = sizeResolver2;
                        }
                        if (defined.h == null) {
                            if (target4 instanceof ViewTarget) {
                                viewTarget = (ViewTarget) target4;
                            } else {
                                viewTarget = null;
                            }
                            if (viewTarget != null) {
                                view = viewTarget.getView();
                            } else {
                                view = null;
                            }
                            if (view instanceof ImageView) {
                                imageView = (ImageView) view;
                            } else {
                                imageView = null;
                            }
                            if (imageView != null) {
                                Bitmap.Config[] configArr = Utils_androidKt.a;
                                ImageView.ScaleType scaleType2 = imageView.getScaleType();
                                if (scaleType2 == null) {
                                    i2 = -1;
                                } else {
                                    i2 = Utils_androidKt.WhenMappings.a[scaleType2.ordinal()];
                                }
                                if (i2 != 1 && i2 != 2 && i2 != 3 && i2 != 4) {
                                    scale = Scale.j;
                                } else {
                                    scale = Scale.k;
                                }
                            } else {
                                scale = r5.p;
                            }
                            a2.m = scale;
                        }
                        if (defined.i == null) {
                            if (sizeResolver2 == null && Intrinsics.a(sizeResolver, SizeResolver.a)) {
                                precision = Precision.k;
                            } else {
                                if ((target4 instanceof ViewTarget) && (sizeResolver instanceof ViewSizeResolver)) {
                                    ViewTarget viewTarget2 = (ViewTarget) target4;
                                    if ((viewTarget2.getView() instanceof ImageView) && viewTarget2.getView() == ((RealViewSizeResolver) ((ViewSizeResolver) sizeResolver)).b) {
                                        precision = Precision.k;
                                    }
                                }
                                precision = Precision.j;
                            }
                            a2.n = precision;
                        }
                        imageRequest2 = a2.a();
                        r3 = EventListener.a;
                        try {
                            if (!imageRequest2.b.equals(NullRequestData.a)) {
                                baseRequestDelegate.start();
                                if (i3 == 0) {
                                    realImageLoader$execute$32.m = baseRequestDelegate;
                                    realImageLoader$execute$32.n = imageRequest2;
                                    realImageLoader$execute$32.o = r3;
                                    realImageLoader$execute$32.q = i3;
                                    realImageLoader$execute$32.t = 1;
                                }
                                requestDelegate = baseRequestDelegate;
                                eventListener = r3;
                                imageRequest3 = imageRequest2;
                            } else {
                                throw new RuntimeException("The request's data is null.");
                            }
                        } catch (Throwable th4) {
                            th = th4;
                            r5 = baseRequestDelegate;
                            if (!(th instanceof CancellationException)) {
                            }
                        }
                    }
                    imageRequest3.getClass();
                    target = imageRequest3.c;
                    if (target != null) {
                        Image image4 = (Image) imageRequest3.l.b(imageRequest3);
                        if (image4 == null) {
                            image4 = (Image) imageRequest3.t.h.b(imageRequest3);
                        }
                        target.onStart(image4);
                    }
                    eventListener.getClass();
                    SizeResolver sizeResolver3 = imageRequest3.o;
                    realImageLoader$execute$32.m = requestDelegate;
                    realImageLoader$execute$32.n = imageRequest3;
                    realImageLoader$execute$32.o = eventListener;
                    realImageLoader$execute$32.p = null;
                    realImageLoader$execute$32.q = i3;
                    realImageLoader$execute$32.t = 2;
                    obj = sizeResolver3.g(realImageLoader$execute$32);
                    if (obj != coroutineSingletons) {
                        imageRequest4 = imageRequest3;
                        eventListener2 = eventListener;
                        requestDelegate2 = requestDelegate;
                        image = null;
                        imageRequest5 = imageRequest4;
                        int i42 = i3;
                        Size size2 = (Size) obj;
                        eventListener2.getClass();
                        CoroutineContext coroutineContext3 = imageRequest5.f;
                        imageRequest6 = imageRequest5;
                        RealImageLoader$execute$result$1 realImageLoader$execute$result$12 = new RealImageLoader$execute$result$1(imageRequest6, this, size2, eventListener2, image, null);
                        realImageLoader$execute$32.m = requestDelegate2;
                        realImageLoader$execute$32.n = imageRequest6;
                        realImageLoader$execute$32.o = eventListener2;
                        realImageLoader$execute$32.p = null;
                        realImageLoader$execute$32.q = i42;
                        realImageLoader$execute$32.t = 3;
                        e = BuildersKt.e(coroutineContext3, realImageLoader$execute$result$12, realImageLoader$execute$32);
                        if (e != coroutineSingletons) {
                        }
                    }
                    return coroutineSingletons;
                }
            }
            if (r3 == 0) {
            }
            imageRequest3.getClass();
            target = imageRequest3.c;
            if (target != null) {
            }
            eventListener.getClass();
            SizeResolver sizeResolver32 = imageRequest3.o;
            realImageLoader$execute$32.m = requestDelegate;
            realImageLoader$execute$32.n = imageRequest3;
            realImageLoader$execute$32.o = eventListener;
            realImageLoader$execute$32.p = null;
            realImageLoader$execute$32.q = i3;
            realImageLoader$execute$32.t = 2;
            obj = sizeResolver32.g(realImageLoader$execute$32);
            if (obj != coroutineSingletons) {
            }
            return coroutineSingletons;
        } catch (Throwable th5) {
            th = th5;
        }
        realImageLoader$execute$3 = new RealImageLoader$execute$3(this, continuationImpl);
        imageRequest2 = r4;
        RealImageLoader$execute$3 realImageLoader$execute$322 = realImageLoader$execute$3;
        obj = realImageLoader$execute$322.r;
        coroutineSingletons = CoroutineSingletons.j;
        r3 = realImageLoader$execute$322.t;
    }

    public final Object c(ImageRequest imageRequest, ContinuationImpl continuationImpl) {
        if (!(imageRequest.c instanceof ViewTarget) && !(imageRequest.o instanceof ViewSizeResolver) && ((Lifecycle) ExtrasKt.a(imageRequest, ImageRequests_androidKt.e)) == null) {
            return b(imageRequest, 1, continuationImpl);
        }
        return CoroutineScopeKt.c(new RealImageLoader$execute$2(this, imageRequest, null), continuationImpl);
    }

    public final MemoryCache d() {
        return (MemoryCache) this.a.d.getValue();
    }

    /* JADX WARN: Code restructure failed: missing block: B:3:0x0008, code lost:
    
        if (r3 != null) goto L7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void e(ErrorResult errorResult, Target target, EventListener eventListener) {
        ImageRequest imageRequest = errorResult.b;
        Image image = errorResult.a;
        if (target instanceof TransitionTarget) {
            ((NoneTransition$Factory) ((Transition$Factory) ExtrasKt.a(imageRequest, ImageRequests_androidKt.a))).getClass();
        }
        target.onError(image);
        eventListener.getClass();
        imageRequest.getClass();
    }
}
