package coil3.util;

import android.app.Activity;
import android.app.Application;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.res.Configuration;
import coil3.Extras;
import coil3.ImageLoaders_androidKt;
import coil3.RealImageLoader;
import coil3.memory.MemoryCache;
import coil3.memory.RealMemoryCache;
import coil3.memory.RealWeakMemoryCache;
import java.lang.ref.WeakReference;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AndroidSystemCallbacks {
    public final WeakReference a;
    public final ActivityCallbacks b;
    public final ComponentCallbacks c = new ComponentCallbacks();
    public Context d;
    public boolean e;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class ActivityCallbacks implements DefaultActivityLifecycleCallbacks {
        public final double j;

        public ActivityCallbacks(RealImageLoader realImageLoader) {
            RealImageLoader.Options options = realImageLoader.a;
            Extras.Key key = ImageLoaders_androidKt.a;
            Object obj = options.b.n.a.get(ImageLoaders_androidKt.d);
            this.j = ((Number) (obj == null ? Double.valueOf(1.0d) : obj)).doubleValue();
        }

        public final void a(Context context) {
            long j;
            double d = this.j;
            if (d != 1.0d) {
                Context applicationContext = context.getApplicationContext();
                applicationContext.getClass();
                ((Application) applicationContext).registerActivityLifecycleCallbacks(this);
                AndroidSystemCallbacks androidSystemCallbacks = AndroidSystemCallbacks.this;
                RealImageLoader realImageLoader = (RealImageLoader) androidSystemCallbacks.a.get();
                if (realImageLoader != null) {
                    MemoryCache d2 = realImageLoader.d();
                    if (d2 != null) {
                        RealMemoryCache realMemoryCache = (RealMemoryCache) d2;
                        synchronized (realMemoryCache.c) {
                            j = realMemoryCache.a.a;
                        }
                        realMemoryCache.a((long) (d * j));
                        return;
                    }
                    return;
                }
                androidSystemCallbacks.a();
            }
        }

        public final void b(Context context) {
            long j;
            if (this.j != 1.0d) {
                Context applicationContext = context.getApplicationContext();
                applicationContext.getClass();
                ((Application) applicationContext).unregisterActivityLifecycleCallbacks(this);
                AndroidSystemCallbacks androidSystemCallbacks = AndroidSystemCallbacks.this;
                RealImageLoader realImageLoader = (RealImageLoader) androidSystemCallbacks.a.get();
                if (realImageLoader != null) {
                    MemoryCache d = realImageLoader.d();
                    if (d != null) {
                        RealMemoryCache realMemoryCache = (RealMemoryCache) d;
                        synchronized (realMemoryCache.c) {
                            j = realMemoryCache.a.a;
                        }
                        realMemoryCache.a(j);
                        return;
                    }
                    return;
                }
                androidSystemCallbacks.a();
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStarted(Activity activity) {
            b(activity);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class ComponentCallbacks implements ComponentCallbacks2 {
        public ComponentCallbacks() {
        }

        @Override // android.content.ComponentCallbacks
        public final void onConfigurationChanged(Configuration configuration) {
            AndroidSystemCallbacks androidSystemCallbacks = AndroidSystemCallbacks.this;
            synchronized (androidSystemCallbacks) {
                if (((RealImageLoader) androidSystemCallbacks.a.get()) == null) {
                    androidSystemCallbacks.a();
                }
            }
        }

        @Override // android.content.ComponentCallbacks
        public final void onLowMemory() {
            onTrimMemory(80);
        }

        @Override // android.content.ComponentCallbacks2
        public final void onTrimMemory(int i) {
            MemoryCache d;
            long b;
            AndroidSystemCallbacks androidSystemCallbacks = AndroidSystemCallbacks.this;
            synchronized (androidSystemCallbacks) {
                try {
                    RealImageLoader realImageLoader = (RealImageLoader) androidSystemCallbacks.a.get();
                    if (realImageLoader != null) {
                        RealImageLoader.Options options = realImageLoader.a;
                        if (i >= 40) {
                            MemoryCache d2 = realImageLoader.d();
                            if (d2 != null) {
                                RealMemoryCache realMemoryCache = (RealMemoryCache) d2;
                                synchronized (realMemoryCache.c) {
                                    realMemoryCache.a.c.e(-1L);
                                    RealWeakMemoryCache realWeakMemoryCache = realMemoryCache.b;
                                    realWeakMemoryCache.b = 0;
                                    realWeakMemoryCache.a.clear();
                                }
                            }
                        } else if (i >= 20) {
                            androidSystemCallbacks.b.a(options.a);
                        } else if (i >= 10 && (d = realImageLoader.d()) != null) {
                            RealMemoryCache realMemoryCache2 = (RealMemoryCache) d;
                            synchronized (realMemoryCache2.c) {
                                b = realMemoryCache2.a.c.b();
                            }
                            long j = b / 2;
                            RealMemoryCache realMemoryCache3 = (RealMemoryCache) d;
                            synchronized (realMemoryCache3.c) {
                                realMemoryCache3.a.c.e(j);
                            }
                        }
                    } else {
                        androidSystemCallbacks.a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public AndroidSystemCallbacks(RealImageLoader realImageLoader) {
        this.a = new WeakReference(realImageLoader);
        this.b = new ActivityCallbacks(realImageLoader);
    }

    public final synchronized void a() {
        try {
            if (this.e) {
                return;
            }
            this.e = true;
            Context context = this.d;
            if (context != null) {
                this.b.b(context);
                context.unregisterComponentCallbacks(this.c);
            }
            this.a.clear();
        } catch (Throwable th) {
            throw th;
        }
    }
}
