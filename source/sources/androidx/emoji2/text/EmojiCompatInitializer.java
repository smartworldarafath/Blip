package androidx.emoji2.text;

import android.content.Context;
import android.os.Looper;
import android.os.Trace;
import androidx.core.os.TraceCompat;
import androidx.emoji2.text.EmojiCompat;
import androidx.emoji2.text.EmojiCompatInitializer;
import androidx.emoji2.text.FontRequestEmojiCompatConfig;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ProcessLifecycleInitializer;
import androidx.startup.AppInitializer;
import androidx.startup.Initializer;
import defpackage.l6;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class EmojiCompatInitializer implements Initializer<Boolean> {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class BackgroundDefaultConfig extends EmojiCompat.Config {
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class BackgroundDefaultLoader implements EmojiCompat.MetadataRepoLoader {
        public final Context a;

        public BackgroundDefaultLoader(Context context) {
            this.a = context.getApplicationContext();
        }

        @Override // androidx.emoji2.text.EmojiCompat.MetadataRepoLoader
        public final void a(final EmojiCompat.MetadataRepoLoaderCallback metadataRepoLoaderCallback) {
            l6 l6Var = new l6("EmojiCompatInitializer", 0);
            final ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 15L, TimeUnit.SECONDS, new LinkedBlockingDeque(), l6Var);
            threadPoolExecutor.allowCoreThreadTimeOut(true);
            threadPoolExecutor.execute(new Runnable() { // from class: androidx.emoji2.text.a
                @Override // java.lang.Runnable
                public final void run() {
                    EmojiCompatInitializer.BackgroundDefaultLoader backgroundDefaultLoader = EmojiCompatInitializer.BackgroundDefaultLoader.this;
                    final EmojiCompat.MetadataRepoLoaderCallback metadataRepoLoaderCallback2 = metadataRepoLoaderCallback;
                    final ThreadPoolExecutor threadPoolExecutor2 = threadPoolExecutor;
                    try {
                        FontRequestEmojiCompatConfig a = DefaultEmojiCompatConfig.a(backgroundDefaultLoader.a);
                        if (a != null) {
                            FontRequestEmojiCompatConfig.FontRequestMetadataLoader fontRequestMetadataLoader = (FontRequestEmojiCompatConfig.FontRequestMetadataLoader) a.a;
                            synchronized (fontRequestMetadataLoader.d) {
                                fontRequestMetadataLoader.f = threadPoolExecutor2;
                            }
                            a.a.a(new EmojiCompat.MetadataRepoLoaderCallback() { // from class: androidx.emoji2.text.EmojiCompatInitializer.BackgroundDefaultLoader.1
                                @Override // androidx.emoji2.text.EmojiCompat.MetadataRepoLoaderCallback
                                public final void a(Throwable th) {
                                    ThreadPoolExecutor threadPoolExecutor3 = threadPoolExecutor2;
                                    try {
                                        EmojiCompat.MetadataRepoLoaderCallback.this.a(th);
                                    } finally {
                                        threadPoolExecutor3.shutdown();
                                    }
                                }

                                @Override // androidx.emoji2.text.EmojiCompat.MetadataRepoLoaderCallback
                                public final void b(MetadataRepo metadataRepo) {
                                    ThreadPoolExecutor threadPoolExecutor3 = threadPoolExecutor2;
                                    try {
                                        EmojiCompat.MetadataRepoLoaderCallback.this.b(metadataRepo);
                                    } finally {
                                        threadPoolExecutor3.shutdown();
                                    }
                                }
                            });
                            return;
                        }
                        throw new RuntimeException("EmojiCompat font provider not available on this device.");
                    } catch (Throwable th) {
                        metadataRepoLoaderCallback2.a(th);
                        threadPoolExecutor2.shutdown();
                    }
                }
            });
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class LoadEmojiCompatRunnable implements Runnable {
        @Override // java.lang.Runnable
        public final void run() {
            try {
                int i = TraceCompat.a;
                Trace.beginSection("EmojiCompat.EmojiCompatInitializer.run");
                if (EmojiCompat.g()) {
                    EmojiCompat.a().h();
                }
                Trace.endSection();
            } catch (Throwable th) {
                int i2 = TraceCompat.a;
                Trace.endSection();
                throw th;
            }
        }
    }

    @Override // androidx.startup.Initializer
    public final List a() {
        return Collections.singletonList(ProcessLifecycleInitializer.class);
    }

    @Override // androidx.startup.Initializer
    public final Object b(Context context) {
        Object obj;
        EmojiCompat.Config config = new EmojiCompat.Config(new BackgroundDefaultLoader(context));
        config.b = 1;
        if (EmojiCompat.k == null) {
            synchronized (EmojiCompat.j) {
                try {
                    if (EmojiCompat.k == null) {
                        EmojiCompat.k = new EmojiCompat(config);
                    }
                } finally {
                }
            }
        }
        AppInitializer c = AppInitializer.c(context);
        c.getClass();
        synchronized (AppInitializer.e) {
            try {
                obj = c.a.get(ProcessLifecycleInitializer.class);
                if (obj == null) {
                    obj = c.b(ProcessLifecycleInitializer.class, new HashSet());
                }
            } finally {
            }
        }
        final Lifecycle g = ((LifecycleOwner) obj).g();
        g.a(new DefaultLifecycleObserver(this) { // from class: androidx.emoji2.text.EmojiCompatInitializer.1
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, java.lang.Runnable] */
            @Override // androidx.lifecycle.DefaultLifecycleObserver
            public final void onResume(LifecycleOwner lifecycleOwner) {
                ConcurrencyHelpers$Handler28Impl.a(Looper.getMainLooper()).postDelayed(new Object(), 500L);
                g.b(this);
            }
        });
        return Boolean.TRUE;
    }
}
