package coil3.intercept;

import android.graphics.Bitmap;
import coil3.BitmapImage;
import coil3.ComponentRegistry;
import coil3.EventListener;
import coil3.Extras;
import coil3.ExtrasKt;
import coil3.Image;
import coil3.RealImageLoader;
import coil3.Uri;
import coil3.decode.DataSource;
import coil3.decode.DecodeResult;
import coil3.decode.Decoder;
import coil3.decode.FileImageSource;
import coil3.decode.ImageSource;
import coil3.fetch.FetchResult;
import coil3.fetch.Fetcher;
import coil3.fetch.ImageFetchResult;
import coil3.fetch.SourceFetchResult;
import coil3.map.Mapper;
import coil3.memory.MemoryCache;
import coil3.memory.MemoryCacheService;
import coil3.request.AndroidRequestService;
import coil3.request.ImageRequest;
import coil3.request.ImageRequests_androidKt;
import coil3.request.Options;
import coil3.request.SuccessResult;
import coil3.size.Scale;
import coil3.size.Size;
import coil3.util.AndroidSystemCallbacks;
import coil3.util.UtilsKt;
import coil3.util.Utils_androidKt;
import defpackage.jb;
import defpackage.k8;
import defpackage.u2;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CancellationException;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.reflect.KClass;
import kotlinx.coroutines.BuildersKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class EngineInterceptor implements Interceptor {
    public final RealImageLoader a;
    public final AndroidSystemCallbacks b;
    public final AndroidRequestService c;
    public final MemoryCacheService d;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class ExecuteResult {
        public final Image a;
        public final boolean b;
        public final DataSource c;
        public final String d;

        public ExecuteResult(Image image, boolean z, DataSource dataSource, String str) {
            this.a = image;
            this.b = z;
            this.c = dataSource;
            this.d = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ExecuteResult)) {
                return false;
            }
            ExecuteResult executeResult = (ExecuteResult) obj;
            if (Intrinsics.a(this.a, executeResult.a) && this.b == executeResult.b && this.c == executeResult.c && Intrinsics.a(this.d, executeResult.d)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            int hashCode;
            int hashCode2 = (this.c.hashCode() + jb.b(this.a.hashCode() * 31, 31, this.b)) * 31;
            String str = this.d;
            if (str == null) {
                hashCode = 0;
            } else {
                hashCode = str.hashCode();
            }
            return hashCode2 + hashCode;
        }

        public final String toString() {
            return "ExecuteResult(image=" + this.a + ", isSampled=" + this.b + ", dataSource=" + this.c + ", diskCacheKey=" + this.d + ")";
        }
    }

    public EngineInterceptor(RealImageLoader realImageLoader, AndroidSystemCallbacks androidSystemCallbacks, AndroidRequestService androidRequestService) {
        this.a = realImageLoader;
        this.b = androidSystemCallbacks;
        this.c = androidRequestService;
        this.d = new MemoryCacheService(realImageLoader, androidRequestService);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0075 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x009f -> B:10:0x00a2). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object a(EngineInterceptor engineInterceptor, SourceFetchResult sourceFetchResult, ComponentRegistry componentRegistry, ImageRequest imageRequest, Object obj, Options options, EventListener eventListener, ContinuationImpl continuationImpl) {
        EngineInterceptor$decode$1 engineInterceptor$decode$1;
        int i;
        int i2;
        int size;
        Pair pair;
        FileImageSource fileImageSource;
        if (continuationImpl instanceof EngineInterceptor$decode$1) {
            engineInterceptor$decode$1 = (EngineInterceptor$decode$1) continuationImpl;
            int i3 = engineInterceptor$decode$1.v;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                engineInterceptor$decode$1.v = i3 - Integer.MIN_VALUE;
                Object obj2 = engineInterceptor$decode$1.t;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = engineInterceptor$decode$1.v;
                String str = null;
                if (i == 0) {
                    if (i == 1) {
                        int i4 = engineInterceptor$decode$1.s;
                        EventListener eventListener2 = engineInterceptor$decode$1.r;
                        Options options2 = engineInterceptor$decode$1.q;
                        obj = engineInterceptor$decode$1.p;
                        ImageRequest imageRequest2 = engineInterceptor$decode$1.o;
                        ComponentRegistry componentRegistry2 = engineInterceptor$decode$1.n;
                        SourceFetchResult sourceFetchResult2 = engineInterceptor$decode$1.m;
                        ResultKt.b(obj2);
                        eventListener = eventListener2;
                        componentRegistry = componentRegistry2;
                        options = options2;
                        imageRequest = imageRequest2;
                        DecodeResult decodeResult = (DecodeResult) obj2;
                        eventListener.getClass();
                        if (decodeResult == null) {
                            Image image = decodeResult.a;
                            boolean z = decodeResult.b;
                            DataSource dataSource = sourceFetchResult2.c;
                            ImageSource imageSource = sourceFetchResult2.a;
                            if (imageSource instanceof FileImageSource) {
                                fileImageSource = (FileImageSource) imageSource;
                            } else {
                                fileImageSource = null;
                            }
                            if (fileImageSource != null) {
                                str = fileImageSource.l;
                            }
                            return new ExecuteResult(image, z, dataSource, str);
                        }
                        i2 = i4;
                        sourceFetchResult = sourceFetchResult2;
                        size = ((List) componentRegistry.g.getValue()).size();
                        while (true) {
                            if (i2 < size) {
                                Decoder a = ((Decoder.Factory) ((List) componentRegistry.g.getValue()).get(i2)).a(sourceFetchResult, options);
                                if (a != null) {
                                    pair = new Pair(a, Integer.valueOf(i2));
                                    break;
                                }
                                i2++;
                            } else {
                                pair = null;
                                break;
                            }
                        }
                        if (pair == null) {
                            Decoder decoder = (Decoder) pair.j;
                            int intValue = ((Number) pair.k).intValue() + 1;
                            eventListener.getClass();
                            engineInterceptor$decode$1.m = sourceFetchResult;
                            engineInterceptor$decode$1.n = componentRegistry;
                            engineInterceptor$decode$1.o = imageRequest;
                            engineInterceptor$decode$1.p = obj;
                            engineInterceptor$decode$1.q = options;
                            engineInterceptor$decode$1.r = eventListener;
                            engineInterceptor$decode$1.s = intValue;
                            engineInterceptor$decode$1.v = 1;
                            obj2 = decoder.a(engineInterceptor$decode$1);
                            if (obj2 == coroutineSingletons) {
                                return coroutineSingletons;
                            }
                            sourceFetchResult2 = sourceFetchResult;
                            i4 = intValue;
                            DecodeResult decodeResult2 = (DecodeResult) obj2;
                            eventListener.getClass();
                            if (decodeResult2 == null) {
                            }
                        } else {
                            k8.s(obj, "Unable to create a decoder that supports: ");
                            return null;
                        }
                    } else {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                } else {
                    ResultKt.b(obj2);
                    i2 = 0;
                    size = ((List) componentRegistry.g.getValue()).size();
                    while (true) {
                        if (i2 < size) {
                        }
                        i2++;
                    }
                    if (pair == null) {
                    }
                }
            }
        }
        engineInterceptor$decode$1 = new EngineInterceptor$decode$1(engineInterceptor, continuationImpl);
        Object obj22 = engineInterceptor$decode$1.t;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = engineInterceptor$decode$1.v;
        String str2 = null;
        if (i == 0) {
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x0154, code lost:
    
        if (r1 == r9) goto L63;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0028  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x012c  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0132  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x012f  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00e3 A[Catch: all -> 0x0066, TRY_LEAVE, TryCatch #1 {all -> 0x0066, blocks: (B:44:0x005c, B:46:0x00d8, B:48:0x00e3), top: B:43:0x005c }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x010d A[Catch: all -> 0x004b, TryCatch #4 {all -> 0x004b, blocks: (B:22:0x0045, B:24:0x0107, B:50:0x00eb, B:55:0x010d, B:57:0x0112, B:58:0x0169, B:59:0x016e), top: B:8:0x0026 }] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0177  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x006a  */
    /* JADX WARN: Type inference failed for: r13v0, types: [java.lang.Object, kotlin.jvm.internal.Ref$ObjectRef] */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v3, types: [int] */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r7v0, types: [java.lang.Object, kotlin.jvm.internal.Ref$ObjectRef] */
    /* JADX WARN: Type inference failed for: r8v0, types: [java.lang.Object, kotlin.jvm.internal.Ref$ObjectRef] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object b(EngineInterceptor engineInterceptor, ImageRequest imageRequest, Object obj, Options options, EventListener eventListener, ContinuationImpl continuationImpl) {
        EngineInterceptor$execute$1 engineInterceptor$execute$1;
        Ref$ObjectRef ref$ObjectRef;
        Object obj2;
        ImageSource imageSource;
        EngineInterceptor$execute$1 engineInterceptor$execute$12;
        ImageRequest imageRequest2;
        Object obj3;
        Ref$ObjectRef ref$ObjectRef2;
        Ref$ObjectRef ref$ObjectRef3;
        Ref$ObjectRef ref$ObjectRef4;
        EventListener eventListener2;
        Ref$ObjectRef ref$ObjectRef5;
        FetchResult fetchResult;
        Ref$ObjectRef ref$ObjectRef6;
        ExecuteResult executeResult;
        Ref$ObjectRef ref$ObjectRef7;
        EventListener eventListener3;
        Object obj4;
        SourceFetchResult sourceFetchResult;
        ImageSource imageSource2;
        try {
            if (continuationImpl instanceof EngineInterceptor$execute$1) {
                engineInterceptor$execute$1 = (EngineInterceptor$execute$1) continuationImpl;
                int i = engineInterceptor$execute$1.v;
                if ((i & Integer.MIN_VALUE) != 0) {
                    engineInterceptor$execute$1.v = i - Integer.MIN_VALUE;
                    EngineInterceptor$execute$1 engineInterceptor$execute$13 = engineInterceptor$execute$1;
                    Object obj5 = engineInterceptor$execute$13.t;
                    Object obj6 = CoroutineSingletons.j;
                    ref$ObjectRef = engineInterceptor$execute$13.v;
                    SourceFetchResult sourceFetchResult2 = null;
                    if (ref$ObjectRef == 0) {
                        if (ref$ObjectRef != 1) {
                            if (ref$ObjectRef != 2) {
                                if (ref$ObjectRef == 3) {
                                    ResultKt.b(obj5);
                                    ExecuteResult executeResult2 = (ExecuteResult) obj5;
                                    Image image = executeResult2.a;
                                    Bitmap.Config[] configArr = Utils_androidKt.a;
                                    if (image instanceof BitmapImage) {
                                        ((BitmapImage) image).a.prepareToDraw();
                                    }
                                    return executeResult2;
                                }
                                u2.l("call to 'resume' before 'invoke' with coroutine");
                                return null;
                            }
                            ref$ObjectRef6 = engineInterceptor$execute$13.r;
                            ref$ObjectRef7 = engineInterceptor$execute$13.p;
                            eventListener3 = engineInterceptor$execute$13.o;
                            imageRequest2 = engineInterceptor$execute$13.m;
                            ResultKt.b(obj5);
                            engineInterceptor$execute$12 = engineInterceptor$execute$13;
                            executeResult = (ExecuteResult) obj5;
                            ref$ObjectRef2 = ref$ObjectRef7;
                            eventListener2 = eventListener3;
                            obj4 = ref$ObjectRef6.j;
                            if (obj4 instanceof SourceFetchResult) {
                                sourceFetchResult = (SourceFetchResult) obj4;
                            } else {
                                sourceFetchResult = null;
                            }
                            if (sourceFetchResult != null && (imageSource2 = sourceFetchResult.a) != null) {
                                try {
                                    jb.l(imageSource2);
                                } catch (RuntimeException e) {
                                    throw e;
                                } catch (Exception unused) {
                                }
                            }
                            Options options2 = (Options) ref$ObjectRef2.j;
                            engineInterceptor$execute$12.m = null;
                            engineInterceptor$execute$12.n = null;
                            engineInterceptor$execute$12.o = null;
                            engineInterceptor$execute$12.p = null;
                            engineInterceptor$execute$12.q = null;
                            engineInterceptor$execute$12.r = null;
                            engineInterceptor$execute$12.s = null;
                            engineInterceptor$execute$12.v = 3;
                            obj5 = EngineInterceptorKt.a(executeResult, imageRequest2, options2, eventListener2, engineInterceptor$execute$12);
                        } else {
                            ref$ObjectRef3 = engineInterceptor$execute$13.s;
                            ref$ObjectRef4 = engineInterceptor$execute$13.r;
                            Ref$ObjectRef ref$ObjectRef8 = engineInterceptor$execute$13.q;
                            Ref$ObjectRef ref$ObjectRef9 = engineInterceptor$execute$13.p;
                            eventListener2 = engineInterceptor$execute$13.o;
                            Object obj7 = engineInterceptor$execute$13.n;
                            ImageRequest imageRequest3 = engineInterceptor$execute$13.m;
                            try {
                                ResultKt.b(obj5);
                                engineInterceptor$execute$12 = engineInterceptor$execute$13;
                                ref$ObjectRef2 = ref$ObjectRef9;
                                obj3 = obj7;
                                ref$ObjectRef5 = ref$ObjectRef8;
                                imageRequest2 = imageRequest3;
                            } catch (Throwable th) {
                                th = th;
                                ref$ObjectRef = ref$ObjectRef4;
                                obj2 = ref$ObjectRef.j;
                                if (obj2 instanceof SourceFetchResult) {
                                    sourceFetchResult2 = (SourceFetchResult) obj2;
                                }
                                if (sourceFetchResult2 != null && (imageSource = sourceFetchResult2.a) != null) {
                                    try {
                                        jb.l(imageSource);
                                    } catch (RuntimeException e2) {
                                        throw e2;
                                    } catch (Exception unused2) {
                                    }
                                }
                                throw th;
                            }
                        }
                    } else {
                        ResultKt.b(obj5);
                        ?? obj8 = new Object();
                        obj8.j = options;
                        ?? obj9 = new Object();
                        obj9.j = engineInterceptor.a.d;
                        ?? obj10 = new Object();
                        try {
                            AndroidRequestService androidRequestService = engineInterceptor.c;
                            Options options3 = (Options) obj8.j;
                            Extras extras = options3.j;
                            if (((Bitmap.Config) ExtrasKt.b(options3, ImageRequests_androidKt.b)) == Bitmap.Config.HARDWARE) {
                                androidRequestService.b.getClass();
                            }
                            obj8.j = options3;
                            imageRequest.getClass();
                            ComponentRegistry componentRegistry = (ComponentRegistry) obj9.j;
                            Options options4 = (Options) obj8.j;
                            engineInterceptor$execute$13.m = imageRequest;
                            engineInterceptor$execute$13.n = obj;
                            engineInterceptor$execute$13.o = eventListener;
                            engineInterceptor$execute$13.p = obj8;
                            engineInterceptor$execute$13.q = obj9;
                            engineInterceptor$execute$13.r = obj10;
                            engineInterceptor$execute$13.s = obj10;
                            engineInterceptor$execute$13.v = 1;
                            obj5 = engineInterceptor.c(componentRegistry, imageRequest, obj, options4, eventListener, engineInterceptor$execute$13);
                            engineInterceptor$execute$12 = engineInterceptor$execute$13;
                            if (obj5 != obj6) {
                                imageRequest2 = imageRequest;
                                obj3 = obj;
                                ref$ObjectRef2 = obj8;
                                ref$ObjectRef3 = obj10;
                                ref$ObjectRef4 = ref$ObjectRef3;
                                eventListener2 = eventListener;
                                ref$ObjectRef5 = obj9;
                            }
                            return obj6;
                        } catch (Throwable th2) {
                            th = th2;
                            ref$ObjectRef = obj10;
                            obj2 = ref$ObjectRef.j;
                            if (obj2 instanceof SourceFetchResult) {
                            }
                            if (sourceFetchResult2 != null) {
                                jb.l(imageSource);
                            }
                            throw th;
                        }
                    }
                    ref$ObjectRef3.j = obj5;
                    Object obj11 = ref$ObjectRef4.j;
                    fetchResult = (FetchResult) obj11;
                    if (!(fetchResult instanceof SourceFetchResult)) {
                        CoroutineContext coroutineContext = imageRequest2.h;
                        ref$ObjectRef6 = ref$ObjectRef4;
                        EngineInterceptor$execute$executeResult$1 engineInterceptor$execute$executeResult$1 = new EngineInterceptor$execute$executeResult$1(engineInterceptor, ref$ObjectRef6, ref$ObjectRef5, imageRequest2, obj3, ref$ObjectRef2, eventListener2, null);
                        engineInterceptor$execute$12.m = imageRequest2;
                        engineInterceptor$execute$12.n = null;
                        engineInterceptor$execute$12.o = eventListener2;
                        engineInterceptor$execute$12.p = ref$ObjectRef2;
                        engineInterceptor$execute$12.q = null;
                        engineInterceptor$execute$12.r = ref$ObjectRef6;
                        engineInterceptor$execute$12.s = null;
                        engineInterceptor$execute$12.v = 2;
                        obj5 = BuildersKt.e(coroutineContext, engineInterceptor$execute$executeResult$1, engineInterceptor$execute$12);
                        if (obj5 != obj6) {
                            ref$ObjectRef7 = ref$ObjectRef2;
                            eventListener3 = eventListener2;
                            executeResult = (ExecuteResult) obj5;
                            ref$ObjectRef2 = ref$ObjectRef7;
                            eventListener2 = eventListener3;
                            obj4 = ref$ObjectRef6.j;
                            if (obj4 instanceof SourceFetchResult) {
                            }
                            if (sourceFetchResult != null) {
                                jb.l(imageSource2);
                            }
                            Options options22 = (Options) ref$ObjectRef2.j;
                            engineInterceptor$execute$12.m = null;
                            engineInterceptor$execute$12.n = null;
                            engineInterceptor$execute$12.o = null;
                            engineInterceptor$execute$12.p = null;
                            engineInterceptor$execute$12.q = null;
                            engineInterceptor$execute$12.r = null;
                            engineInterceptor$execute$12.s = null;
                            engineInterceptor$execute$12.v = 3;
                            obj5 = EngineInterceptorKt.a(executeResult, imageRequest2, options22, eventListener2, engineInterceptor$execute$12);
                        } else {
                            return obj6;
                        }
                    } else {
                        ref$ObjectRef6 = ref$ObjectRef4;
                        if (fetchResult instanceof ImageFetchResult) {
                            executeResult = new ExecuteResult(((ImageFetchResult) obj11).a, ((ImageFetchResult) obj11).b, ((ImageFetchResult) obj11).c, null);
                            obj4 = ref$ObjectRef6.j;
                            if (obj4 instanceof SourceFetchResult) {
                            }
                            if (sourceFetchResult != null) {
                            }
                            Options options222 = (Options) ref$ObjectRef2.j;
                            engineInterceptor$execute$12.m = null;
                            engineInterceptor$execute$12.n = null;
                            engineInterceptor$execute$12.o = null;
                            engineInterceptor$execute$12.p = null;
                            engineInterceptor$execute$12.q = null;
                            engineInterceptor$execute$12.r = null;
                            engineInterceptor$execute$12.s = null;
                            engineInterceptor$execute$12.v = 3;
                            obj5 = EngineInterceptorKt.a(executeResult, imageRequest2, options222, eventListener2, engineInterceptor$execute$12);
                        } else {
                            throw new RuntimeException();
                        }
                    }
                }
            }
            if (ref$ObjectRef == 0) {
            }
            ref$ObjectRef3.j = obj5;
            Object obj112 = ref$ObjectRef4.j;
            fetchResult = (FetchResult) obj112;
            if (!(fetchResult instanceof SourceFetchResult)) {
            }
        } catch (Throwable th3) {
            th = th3;
        }
        engineInterceptor$execute$1 = new EngineInterceptor$execute$1(engineInterceptor, continuationImpl);
        EngineInterceptor$execute$1 engineInterceptor$execute$132 = engineInterceptor$execute$1;
        Object obj52 = engineInterceptor$execute$132.t;
        Object obj62 = CoroutineSingletons.j;
        ref$ObjectRef = engineInterceptor$execute$132.v;
        SourceFetchResult sourceFetchResult22 = null;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x00bb A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00d3  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x008c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x00b1 -> B:10:0x00b4). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object c(ComponentRegistry componentRegistry, ImageRequest imageRequest, Object obj, Options options, EventListener eventListener, ContinuationImpl continuationImpl) {
        EngineInterceptor$fetch$1 engineInterceptor$fetch$1;
        int i;
        int i2;
        int size;
        Pair pair;
        ImageSource imageSource;
        if (continuationImpl instanceof EngineInterceptor$fetch$1) {
            engineInterceptor$fetch$1 = (EngineInterceptor$fetch$1) continuationImpl;
            int i3 = engineInterceptor$fetch$1.u;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                engineInterceptor$fetch$1.u = i3 - Integer.MIN_VALUE;
                Object obj2 = engineInterceptor$fetch$1.s;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = engineInterceptor$fetch$1.u;
                SourceFetchResult sourceFetchResult = null;
                if (i == 0) {
                    if (i == 1) {
                        int i4 = engineInterceptor$fetch$1.r;
                        EventListener eventListener2 = engineInterceptor$fetch$1.q;
                        Options options2 = engineInterceptor$fetch$1.p;
                        Object obj3 = engineInterceptor$fetch$1.o;
                        ImageRequest imageRequest2 = engineInterceptor$fetch$1.n;
                        ComponentRegistry componentRegistry2 = engineInterceptor$fetch$1.m;
                        ResultKt.b(obj2);
                        int intValue = i4;
                        componentRegistry = componentRegistry2;
                        eventListener = eventListener2;
                        imageRequest = imageRequest2;
                        options = options2;
                        obj = obj3;
                        FetchResult fetchResult = (FetchResult) obj2;
                        try {
                            eventListener.getClass();
                            if (fetchResult == null) {
                                return fetchResult;
                            }
                            i2 = intValue;
                            size = ((List) componentRegistry.f.getValue()).size();
                            while (true) {
                                if (i2 >= size) {
                                    Pair pair2 = (Pair) ((List) componentRegistry.f.getValue()).get(i2);
                                    Fetcher.Factory factory = (Fetcher.Factory) pair2.j;
                                    if (((ClassReference) ((KClass) pair2.k)).d(obj)) {
                                        factory.getClass();
                                        Fetcher a = factory.a(obj, options, this.a);
                                        if (a != null) {
                                            pair = new Pair(a, Integer.valueOf(i2));
                                            break;
                                        }
                                    }
                                    i2++;
                                } else {
                                    pair = null;
                                    break;
                                }
                            }
                            if (pair == null) {
                                Fetcher fetcher = (Fetcher) pair.j;
                                intValue = ((Number) pair.k).intValue() + 1;
                                eventListener.getClass();
                                engineInterceptor$fetch$1.m = componentRegistry;
                                engineInterceptor$fetch$1.n = imageRequest;
                                engineInterceptor$fetch$1.o = obj;
                                engineInterceptor$fetch$1.p = options;
                                engineInterceptor$fetch$1.q = eventListener;
                                engineInterceptor$fetch$1.r = intValue;
                                engineInterceptor$fetch$1.u = 1;
                                obj2 = fetcher.a(engineInterceptor$fetch$1);
                                if (obj2 == coroutineSingletons) {
                                    return coroutineSingletons;
                                }
                                FetchResult fetchResult2 = (FetchResult) obj2;
                                eventListener.getClass();
                                if (fetchResult2 == null) {
                                }
                            } else {
                                k8.s(obj, "Unable to create a fetcher that supports: ");
                                return null;
                            }
                        } catch (Throwable th) {
                            if (fetchResult2 instanceof SourceFetchResult) {
                                sourceFetchResult = (SourceFetchResult) fetchResult2;
                            }
                            if (sourceFetchResult != null && (imageSource = sourceFetchResult.a) != null) {
                                try {
                                    jb.l(imageSource);
                                } catch (RuntimeException e) {
                                    throw e;
                                } catch (Exception unused) {
                                }
                            }
                            throw th;
                        }
                    } else {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                } else {
                    ResultKt.b(obj2);
                    i2 = 0;
                    size = ((List) componentRegistry.f.getValue()).size();
                    while (true) {
                        if (i2 >= size) {
                        }
                        i2++;
                    }
                    if (pair == null) {
                    }
                }
            }
        }
        engineInterceptor$fetch$1 = new EngineInterceptor$fetch$1(this, continuationImpl);
        Object obj22 = engineInterceptor$fetch$1.s;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = engineInterceptor$fetch$1.u;
        SourceFetchResult sourceFetchResult2 = null;
        if (i == 0) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00ef  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x002c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object d(RealInterceptorChain realInterceptorChain, ContinuationImpl continuationImpl) {
        EngineInterceptor$intercept$1 engineInterceptor$intercept$1;
        int i;
        MemoryCache.Value value;
        String str;
        Boolean bool;
        boolean z;
        RealInterceptorChain realInterceptorChain2 = realInterceptorChain;
        MemoryCacheService memoryCacheService = this.d;
        if (continuationImpl instanceof EngineInterceptor$intercept$1) {
            engineInterceptor$intercept$1 = (EngineInterceptor$intercept$1) continuationImpl;
            int i2 = engineInterceptor$intercept$1.p;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                engineInterceptor$intercept$1.p = i2 - Integer.MIN_VALUE;
                EngineInterceptor$intercept$1 engineInterceptor$intercept$12 = engineInterceptor$intercept$1;
                Object obj = engineInterceptor$intercept$12.n;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = engineInterceptor$intercept$12.p;
                if (i == 0) {
                    if (i == 1) {
                        RealInterceptorChain realInterceptorChain3 = engineInterceptor$intercept$12.m;
                        try {
                            ResultKt.b(obj);
                            return obj;
                        } catch (Throwable th) {
                            th = th;
                            realInterceptorChain2 = realInterceptorChain3;
                        }
                    } else {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                } else {
                    ResultKt.b(obj);
                    try {
                        ImageRequest imageRequest = realInterceptorChain2.d;
                        Object obj2 = imageRequest.b;
                        Size size = realInterceptorChain2.e;
                        EventListener eventListener = realInterceptorChain2.f;
                        Options c = this.c.c(imageRequest, size);
                        Scale scale = c.c;
                        List list = this.a.d.b;
                        int size2 = list.size();
                        for (int i3 = 0; i3 < size2; i3++) {
                            Pair pair = (Pair) list.get(i3);
                            Mapper mapper = (Mapper) pair.j;
                            if (((ClassReference) ((KClass) pair.k)).d(obj2)) {
                                mapper.getClass();
                                Uri a = mapper.a(obj2, c);
                                if (a != null) {
                                    obj2 = a;
                                }
                            }
                        }
                        MemoryCache.Key b = memoryCacheService.b(imageRequest, obj2, c, eventListener);
                        if (b != null) {
                            value = memoryCacheService.a(imageRequest, b, size, scale);
                        } else {
                            value = null;
                        }
                        if (value != null) {
                            Map map = value.b;
                            Image image = value.a;
                            DataSource dataSource = DataSource.j;
                            Object obj3 = map.get("coil#disk_cache_key");
                            if (obj3 instanceof String) {
                                str = (String) obj3;
                            } else {
                                str = null;
                            }
                            Object obj4 = map.get("coil#is_sampled");
                            if (obj4 instanceof Boolean) {
                                bool = (Boolean) obj4;
                            } else {
                                bool = null;
                            }
                            if (bool != null) {
                                z = bool.booleanValue();
                            } else {
                                z = false;
                            }
                            return new SuccessResult(image, imageRequest, dataSource, b, str, z, realInterceptorChain2.g);
                        }
                        CoroutineContext coroutineContext = imageRequest.g;
                        EngineInterceptor$intercept$2 engineInterceptor$intercept$2 = new EngineInterceptor$intercept$2(this, imageRequest, obj2, c, eventListener, b, realInterceptorChain2, null);
                        engineInterceptor$intercept$12.m = realInterceptorChain2;
                        engineInterceptor$intercept$12.p = 1;
                        Object e = BuildersKt.e(coroutineContext, engineInterceptor$intercept$2, engineInterceptor$intercept$12);
                        if (e == coroutineSingletons) {
                            return coroutineSingletons;
                        }
                        return e;
                    } catch (Throwable th2) {
                        th = th2;
                    }
                }
                if (th instanceof CancellationException) {
                    return UtilsKt.a(realInterceptorChain2.d, th);
                }
                throw th;
            }
        }
        engineInterceptor$intercept$1 = new EngineInterceptor$intercept$1(this, continuationImpl);
        EngineInterceptor$intercept$1 engineInterceptor$intercept$122 = engineInterceptor$intercept$1;
        Object obj5 = engineInterceptor$intercept$122.n;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = engineInterceptor$intercept$122.p;
        if (i == 0) {
        }
        if (th instanceof CancellationException) {
        }
    }
}
