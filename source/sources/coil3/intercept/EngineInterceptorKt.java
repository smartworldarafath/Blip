package coil3.intercept;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import coil3.BitmapImage;
import coil3.EventListener;
import coil3.ExtrasKt;
import coil3.Image;
import coil3.Image_androidKt;
import coil3.intercept.EngineInterceptor;
import coil3.request.ImageRequest;
import coil3.request.ImageRequestsKt;
import coil3.request.ImageRequests_androidKt;
import coil3.request.Options;
import coil3.size.Precision;
import coil3.size.Scale;
import coil3.size.Size;
import coil3.util.DrawableUtils;
import coil3.util.Utils_androidKt;
import defpackage.u2;
import io.sentry.d;
import java.util.List;
import kotlin.ResultKt;
import kotlin.collections.ArraysKt;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.JobKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class EngineInterceptorKt {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:11:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final EngineInterceptor.ExecuteResult a(EngineInterceptor.ExecuteResult executeResult, ImageRequest imageRequest, Options options, EventListener eventListener, ContinuationImpl continuationImpl) {
        EngineInterceptorKt$transform$1 engineInterceptorKt$transform$1;
        int i;
        List list;
        int i2;
        boolean z;
        Bitmap a;
        int size;
        Bitmap bitmap;
        EventListener eventListener2;
        EngineInterceptor.ExecuteResult executeResult2 = executeResult;
        ImageRequest imageRequest2 = imageRequest;
        Options options2 = options;
        if (continuationImpl instanceof EngineInterceptorKt$transform$1) {
            EngineInterceptorKt$transform$1 engineInterceptorKt$transform$12 = (EngineInterceptorKt$transform$1) continuationImpl;
            int i3 = engineInterceptorKt$transform$12.u;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                engineInterceptorKt$transform$12.u = i3 - Integer.MIN_VALUE;
                engineInterceptorKt$transform$1 = engineInterceptorKt$transform$12;
                Object obj = engineInterceptorKt$transform$1.t;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = engineInterceptorKt$transform$1.u;
                if (i == 0) {
                    if (i == 1) {
                        int i4 = engineInterceptorKt$transform$1.s;
                        int i5 = engineInterceptorKt$transform$1.r;
                        List list2 = engineInterceptorKt$transform$1.q;
                        eventListener2 = engineInterceptorKt$transform$1.p;
                        Options options3 = engineInterceptorKt$transform$1.o;
                        ImageRequest imageRequest3 = engineInterceptorKt$transform$1.n;
                        EngineInterceptor.ExecuteResult executeResult3 = engineInterceptorKt$transform$1.m;
                        ResultKt.b(obj);
                        CoroutineContext coroutineContext = engineInterceptorKt$transform$1.k;
                        coroutineContext.getClass();
                        JobKt.c(coroutineContext);
                        size = i4;
                        executeResult2 = executeResult3;
                        bitmap = (Bitmap) obj;
                        list = list2;
                        options2 = options3;
                        i2 = i5 + 1;
                        imageRequest2 = imageRequest3;
                    } else {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                } else {
                    ResultKt.b(obj);
                    list = (List) ExtrasKt.a(imageRequest2, ImageRequestsKt.a);
                    if (list.isEmpty()) {
                        return executeResult2;
                    }
                    Image image = executeResult2.a;
                    boolean z2 = image instanceof BitmapImage;
                    if (!z2 && !((Boolean) ExtrasKt.a(imageRequest2, ImageRequestsKt.d)).booleanValue()) {
                        return executeResult2;
                    }
                    i2 = 0;
                    if (z2) {
                        Bitmap bitmap2 = ((BitmapImage) image).a;
                        Bitmap.Config config = bitmap2.getConfig();
                        if (config == null) {
                            config = Bitmap.Config.ARGB_8888;
                        }
                        if (ArraysKt.c(Utils_androidKt.a, config)) {
                            a = bitmap2;
                            eventListener.getClass();
                            size = list.size();
                            bitmap = a;
                            eventListener2 = eventListener;
                        }
                    }
                    Drawable a2 = Image_androidKt.a(image, options2.a.getResources());
                    Bitmap.Config config2 = (Bitmap.Config) ExtrasKt.b(options2, ImageRequests_androidKt.b);
                    Size size2 = options2.b;
                    Scale scale = options2.c;
                    Size size3 = (Size) ExtrasKt.b(options2, ImageRequestsKt.b);
                    if (options2.d == Precision.k) {
                        z = true;
                    } else {
                        z = false;
                    }
                    a = DrawableUtils.a(a2, config2, size2, scale, size3, z);
                    eventListener.getClass();
                    size = list.size();
                    bitmap = a;
                    eventListener2 = eventListener;
                }
                if (i2 < size) {
                    eventListener2.getClass();
                    return new EngineInterceptor.ExecuteResult(new BitmapImage(bitmap), executeResult2.b, executeResult2.c, executeResult2.d);
                }
                if (list.get(i2) != null) {
                    d.i();
                    return null;
                }
                Size size4 = options2.b;
                engineInterceptorKt$transform$1.m = executeResult2;
                engineInterceptorKt$transform$1.n = imageRequest2;
                engineInterceptorKt$transform$1.o = options2;
                engineInterceptorKt$transform$1.p = eventListener2;
                engineInterceptorKt$transform$1.q = list;
                engineInterceptorKt$transform$1.r = i2;
                engineInterceptorKt$transform$1.s = size;
                engineInterceptorKt$transform$1.u = 1;
                throw null;
            }
        }
        engineInterceptorKt$transform$1 = new ContinuationImpl(continuationImpl);
        Object obj2 = engineInterceptorKt$transform$1.t;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = engineInterceptorKt$transform$1.u;
        if (i == 0) {
        }
        if (i2 < size) {
        }
    }
}
