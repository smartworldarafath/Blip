package androidx.emoji2.text;

import android.content.Context;
import android.content.pm.PackageManager;
import android.database.ContentObserver;
import android.graphics.Typeface;
import android.os.Handler;
import android.os.Trace;
import androidx.core.graphics.TypefaceCompat;
import androidx.core.graphics.TypefaceCompatUtil;
import androidx.core.os.TraceCompat;
import androidx.core.provider.FontRequest;
import androidx.core.provider.FontsContractCompat;
import androidx.core.util.Preconditions;
import androidx.emoji2.text.EmojiCompat;
import androidx.emoji2.text.FontRequestEmojiCompatConfig;
import defpackage.jb;
import defpackage.l6;
import defpackage.u2;
import java.nio.MappedByteBuffer;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class FontRequestEmojiCompatConfig extends EmojiCompat.Config {
    public static final FontProviderHelper d = new Object();

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class FontProviderHelper {
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class FontRequestMetadataLoader implements EmojiCompat.MetadataRepoLoader {
        public final Context a;
        public final FontRequest b;
        public final FontProviderHelper c;
        public final Object d = new Object();
        public Handler e;
        public ThreadPoolExecutor f;
        public ThreadPoolExecutor g;
        public EmojiCompat.MetadataRepoLoaderCallback h;
        public ContentObserver i;

        public FontRequestMetadataLoader(Context context, FontRequest fontRequest) {
            Preconditions.c(context, "Context cannot be null");
            this.a = context.getApplicationContext();
            this.b = fontRequest;
            this.c = FontRequestEmojiCompatConfig.d;
        }

        @Override // androidx.emoji2.text.EmojiCompat.MetadataRepoLoader
        public final void a(EmojiCompat.MetadataRepoLoaderCallback metadataRepoLoaderCallback) {
            synchronized (this.d) {
                this.h = metadataRepoLoaderCallback;
            }
            synchronized (this.d) {
                try {
                    if (this.h == null) {
                        return;
                    }
                    if (this.f == null) {
                        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 15L, TimeUnit.SECONDS, new LinkedBlockingDeque(), new l6("emojiCompat", 0));
                        threadPoolExecutor.allowCoreThreadTimeOut(true);
                        this.g = threadPoolExecutor;
                        this.f = threadPoolExecutor;
                    }
                    this.f.execute(new Runnable() { // from class: androidx.emoji2.text.b
                        @Override // java.lang.Runnable
                        public final void run() {
                            FontRequestEmojiCompatConfig.FontRequestMetadataLoader fontRequestMetadataLoader = FontRequestEmojiCompatConfig.FontRequestMetadataLoader.this;
                            synchronized (fontRequestMetadataLoader.d) {
                                try {
                                    if (fontRequestMetadataLoader.h == null) {
                                        return;
                                    }
                                    try {
                                        FontsContractCompat.FontInfo c = fontRequestMetadataLoader.c();
                                        int i = c.f;
                                        if (i == 2) {
                                            synchronized (fontRequestMetadataLoader.d) {
                                            }
                                        }
                                        if (i == 0) {
                                            try {
                                                int i2 = TraceCompat.a;
                                                Trace.beginSection("EmojiCompat.FontRequestEmojiCompatConfig.buildTypeface");
                                                FontRequestEmojiCompatConfig.FontProviderHelper fontProviderHelper = fontRequestMetadataLoader.c;
                                                Context context = fontRequestMetadataLoader.a;
                                                fontProviderHelper.getClass();
                                                Typeface a = TypefaceCompat.a(context, new FontsContractCompat.FontInfo[]{c}, 0);
                                                MappedByteBuffer c2 = TypefaceCompatUtil.c(fontRequestMetadataLoader.a, c.a);
                                                if (c2 != null && a != null) {
                                                    try {
                                                        Trace.beginSection("EmojiCompat.MetadataRepo.create");
                                                        MetadataRepo metadataRepo = new MetadataRepo(a, MetadataListReader.a(c2));
                                                        Trace.endSection();
                                                        Trace.endSection();
                                                        synchronized (fontRequestMetadataLoader.d) {
                                                            try {
                                                                EmojiCompat.MetadataRepoLoaderCallback metadataRepoLoaderCallback2 = fontRequestMetadataLoader.h;
                                                                if (metadataRepoLoaderCallback2 != null) {
                                                                    metadataRepoLoaderCallback2.b(metadataRepo);
                                                                }
                                                            } finally {
                                                            }
                                                        }
                                                        fontRequestMetadataLoader.b();
                                                        return;
                                                    } finally {
                                                        int i3 = TraceCompat.a;
                                                        Trace.endSection();
                                                    }
                                                }
                                                throw new RuntimeException("Unable to open file.");
                                            } catch (Throwable th) {
                                                throw th;
                                            }
                                        }
                                        throw new RuntimeException("fetchFonts result is not OK. (" + i + ")");
                                    } catch (Throwable th2) {
                                        synchronized (fontRequestMetadataLoader.d) {
                                            try {
                                                EmojiCompat.MetadataRepoLoaderCallback metadataRepoLoaderCallback3 = fontRequestMetadataLoader.h;
                                                if (metadataRepoLoaderCallback3 != null) {
                                                    metadataRepoLoaderCallback3.a(th2);
                                                }
                                                fontRequestMetadataLoader.b();
                                            } finally {
                                            }
                                        }
                                    }
                                } finally {
                                }
                            }
                        }
                    });
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public final void b() {
            synchronized (this.d) {
                try {
                    this.h = null;
                    ContentObserver contentObserver = this.i;
                    if (contentObserver != null) {
                        FontProviderHelper fontProviderHelper = this.c;
                        Context context = this.a;
                        fontProviderHelper.getClass();
                        context.getContentResolver().unregisterContentObserver(contentObserver);
                        this.i = null;
                    }
                    Handler handler = this.e;
                    if (handler != null) {
                        handler.removeCallbacks(null);
                    }
                    this.e = null;
                    ThreadPoolExecutor threadPoolExecutor = this.g;
                    if (threadPoolExecutor != null) {
                        threadPoolExecutor.shutdown();
                    }
                    this.f = null;
                    this.g = null;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public final FontsContractCompat.FontInfo c() {
            try {
                FontProviderHelper fontProviderHelper = this.c;
                Context context = this.a;
                FontRequest fontRequest = this.b;
                fontProviderHelper.getClass();
                FontsContractCompat.FontFamilyResult a = FontsContractCompat.a(context, fontRequest);
                int i = a.a;
                if (i == 0) {
                    FontsContractCompat.FontInfo[] fontInfoArr = (FontsContractCompat.FontInfo[]) a.b.get(0);
                    if (fontInfoArr != null && fontInfoArr.length != 0) {
                        return fontInfoArr[0];
                    }
                    u2.n("fetchFonts failed (empty result)");
                    return null;
                }
                u2.n(jb.d("fetchFonts failed (", i, ")"));
                return null;
            } catch (PackageManager.NameNotFoundException e) {
                u2.k("provider not found", e);
                return null;
            }
        }
    }
}
