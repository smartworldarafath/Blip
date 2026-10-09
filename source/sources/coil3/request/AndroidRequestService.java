package coil3.request;

import android.content.Context;
import android.content.ContextWrapper;
import android.graphics.Bitmap;
import android.view.View;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import coil3.Extras;
import coil3.ExtrasKt;
import coil3.RealImageLoader;
import coil3.size.Precision;
import coil3.size.Scale;
import coil3.size.Size;
import coil3.target.Target;
import coil3.target.ViewTarget;
import coil3.util.HardwareBitmapService;
import coil3.util.HardwareBitmapsKt;
import coil3.util.Utils_androidKt;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.ArraysKt;
import okio.FileSystem;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AndroidRequestService {
    public final RealImageLoader a;
    public final HardwareBitmapService b = HardwareBitmapsKt.a();

    public AndroidRequestService(RealImageLoader realImageLoader) {
        this.a = realImageLoader;
    }

    public static Lifecycle a(ImageRequest imageRequest) {
        Object obj;
        Target target = imageRequest.c;
        if (target instanceof ViewTarget) {
            obj = ((ViewTarget) target).getView().getContext();
        } else {
            obj = imageRequest.a;
        }
        while (!(obj instanceof LifecycleOwner)) {
            if (!(obj instanceof ContextWrapper)) {
                return null;
            }
            obj = ((ContextWrapper) obj).getBaseContext();
        }
        return ((LifecycleOwner) obj).g();
    }

    public static boolean b(ImageRequest imageRequest, Bitmap.Config config) {
        if (config == Bitmap.Config.HARDWARE) {
            if (((Boolean) ExtrasKt.a(imageRequest, ImageRequests_androidKt.g)).booleanValue()) {
                Target target = imageRequest.c;
                if (target instanceof ViewTarget) {
                    View view = ((ViewTarget) target).getView();
                    if (view.isAttachedToWindow() && !view.isHardwareAccelerated()) {
                        return false;
                    }
                }
            } else {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00c1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Options c(ImageRequest imageRequest, Size size) {
        boolean z;
        boolean z2;
        boolean z3;
        Context context = imageRequest.a;
        Scale scale = imageRequest.p;
        Precision precision = imageRequest.q;
        FileSystem fileSystem = imageRequest.e;
        CachePolicy cachePolicy = imageRequest.i;
        CachePolicy cachePolicy2 = imageRequest.j;
        CachePolicy cachePolicy3 = imageRequest.k;
        Extras.Key key = ImageRequests_androidKt.b;
        Bitmap.Config config = (Bitmap.Config) ExtrasKt.a(imageRequest, key);
        Extras.Key key2 = ImageRequests_androidKt.h;
        boolean booleanValue = ((Boolean) ExtrasKt.a(imageRequest, key2)).booleanValue();
        Extras.Key key3 = ImageRequestsKt.a;
        if (!((List) ExtrasKt.a(imageRequest, key3)).isEmpty() && !ArraysKt.c(Utils_androidKt.a, (Bitmap.Config) ExtrasKt.a(imageRequest, key))) {
            z = false;
        } else {
            z = true;
        }
        if (((Bitmap.Config) ExtrasKt.a(imageRequest, key)) == Bitmap.Config.HARDWARE) {
            if (b(imageRequest, (Bitmap.Config) ExtrasKt.a(imageRequest, key))) {
                this.b.getClass();
            } else {
                z2 = false;
                if (z || !z2) {
                    config = Bitmap.Config.ARGB_8888;
                }
                if (!booleanValue && ((List) ExtrasKt.a(imageRequest, key3)).isEmpty() && config != Bitmap.Config.ALPHA_8) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                Map map = imageRequest.t.n.a;
                Map map2 = imageRequest.r.a;
                map.getClass();
                map2.getClass();
                LinkedHashMap linkedHashMap = new LinkedHashMap(map);
                linkedHashMap.putAll(map2);
                Extras.Builder builder = new Extras.Builder(linkedHashMap);
                if (config != ((Bitmap.Config) ExtrasKt.a(imageRequest, key))) {
                    builder.b(key, config);
                }
                if (z3 != ((Boolean) ExtrasKt.a(imageRequest, key2)).booleanValue()) {
                    builder.b(key2, Boolean.valueOf(z3));
                }
                return new Options(context, size, scale, precision, null, fileSystem, cachePolicy, cachePolicy2, cachePolicy3, builder.a());
            }
        }
        z2 = true;
        if (z) {
        }
        config = Bitmap.Config.ARGB_8888;
        if (!booleanValue) {
        }
        z3 = false;
        Map map3 = imageRequest.t.n.a;
        Map map22 = imageRequest.r.a;
        map3.getClass();
        map22.getClass();
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(map3);
        linkedHashMap2.putAll(map22);
        Extras.Builder builder2 = new Extras.Builder(linkedHashMap2);
        if (config != ((Bitmap.Config) ExtrasKt.a(imageRequest, key))) {
        }
        if (z3 != ((Boolean) ExtrasKt.a(imageRequest, key2)).booleanValue()) {
        }
        return new Options(context, size, scale, precision, null, fileSystem, cachePolicy, cachePolicy2, cachePolicy3, builder2.a());
    }
}
