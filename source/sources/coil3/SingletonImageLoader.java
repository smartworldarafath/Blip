package coil3;

import android.content.Context;
import defpackage.mf;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SingletonImageLoader {
    public static final /* synthetic */ AtomicReference a = new AtomicReference(null);

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface Factory {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v6, types: [android.content.Context] */
    /* JADX WARN: Type inference failed for: r4v12, types: [mf] */
    /* JADX WARN: Type inference failed for: r4v17, types: [coil3.ImageLoader] */
    /* JADX WARN: Type inference failed for: r4v8, types: [mf] */
    /* JADX WARN: Type inference failed for: r4v9, types: [mf] */
    public static final ImageLoader a(Context context) {
        ImageLoader imageLoader;
        RealImageLoader realImageLoader;
        Factory factory;
        Factory factory2;
        RealImageLoader realImageLoader2;
        AtomicReference atomicReference = a;
        Object obj = atomicReference.get();
        if (obj instanceof ImageLoader) {
            imageLoader = (ImageLoader) obj;
        } else {
            imageLoader = null;
        }
        if (imageLoader == null) {
            RealImageLoader realImageLoader3 = null;
            while (true) {
                Object obj2 = atomicReference.get();
                if (obj2 instanceof ImageLoader) {
                    realImageLoader = realImageLoader3;
                    realImageLoader2 = (ImageLoader) obj2;
                } else {
                    if (realImageLoader3 == null) {
                        ?? applicationContext = context.getApplicationContext();
                        if (obj2 instanceof Factory) {
                            factory = (Factory) obj2;
                        } else {
                            factory = null;
                        }
                        if (factory != null) {
                            realImageLoader3 = ((mf) factory).a(applicationContext);
                        } else {
                            if (applicationContext instanceof Factory) {
                                factory2 = (Factory) applicationContext;
                            } else {
                                factory2 = null;
                            }
                            if (factory2 != null) {
                                realImageLoader3 = ((mf) factory2).a(applicationContext);
                            } else {
                                realImageLoader3 = SingletonImageLoaderKt.a.a(applicationContext);
                            }
                        }
                    }
                    RealImageLoader realImageLoader4 = realImageLoader3;
                    realImageLoader = realImageLoader4;
                    realImageLoader2 = realImageLoader4;
                }
                while (!atomicReference.compareAndSet(obj2, realImageLoader2)) {
                    if (atomicReference.get() != obj2) {
                        break;
                    }
                }
                return realImageLoader2;
                realImageLoader3 = realImageLoader;
            }
        } else {
            return imageLoader;
        }
    }
}
