package androidx.core.provider;

import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Trace;
import androidx.collection.LruCache;
import androidx.collection.SimpleArrayMap;
import androidx.core.graphics.TypefaceCompat;
import androidx.core.provider.FontsContractCompat;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class FontRequestWorker {
    public static final LruCache a = new LruCache(16);
    public static final ThreadPoolExecutor b;
    public static final Object c;
    public static final SimpleArrayMap d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: androidx.core.provider.FontRequestWorker$3, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass3 implements Callable<TypefaceResult> {
        public final /* synthetic */ String a;
        public final /* synthetic */ Context b;
        public final /* synthetic */ ArrayList c;
        public final /* synthetic */ int d;

        public AnonymousClass3(String str, Context context, ArrayList arrayList, int i) {
            this.a = str;
            this.b = context;
            this.c = arrayList;
            this.d = i;
        }

        @Override // java.util.concurrent.Callable
        public final TypefaceResult call() {
            try {
                return FontRequestWorker.b(this.a, this.b, this.c, this.d);
            } catch (Throwable unused) {
                return new TypefaceResult(-3);
            }
        }
    }

    /* JADX WARN: Type inference failed for: r9v0, types: [java.lang.Object, androidx.core.provider.RequestExecutor$DefaultThreadFactory, java.util.concurrent.ThreadFactory] */
    static {
        ?? obj = new Object();
        obj.a = "fonts-androidx";
        obj.b = 10;
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 10000L, TimeUnit.MILLISECONDS, new LinkedBlockingDeque(), (ThreadFactory) obj);
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        b = threadPoolExecutor;
        c = new Object();
        d = new SimpleArrayMap(0);
    }

    public static String a(int i, List list) {
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < list.size(); i2++) {
            sb.append(((FontRequest) list.get(i2)).g);
            sb.append("-");
            sb.append(i);
            if (i2 < list.size() - 1) {
                sb.append(";");
            }
        }
        return sb.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0052 A[Catch: all -> 0x0097, TRY_LEAVE, TryCatch #0 {all -> 0x0097, NameNotFoundException -> 0x008d, blocks: (B:3:0x000b, B:5:0x0013, B:10:0x001c, B:11:0x0020, B:16:0x0052, B:19:0x005b, B:21:0x0061, B:23:0x0067, B:25:0x0078, B:28:0x0084, B:31:0x006c, B:33:0x002f, B:35:0x0037, B:38:0x003b, B:40:0x003f, B:42:0x004a, B:51:0x008d), top: B:2:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x005b A[Catch: all -> 0x0097, TRY_ENTER, TryCatch #0 {all -> 0x0097, NameNotFoundException -> 0x008d, blocks: (B:3:0x000b, B:5:0x0013, B:10:0x001c, B:11:0x0020, B:16:0x0052, B:19:0x005b, B:21:0x0061, B:23:0x0067, B:25:0x0078, B:28:0x0084, B:31:0x006c, B:33:0x002f, B:35:0x0037, B:38:0x003b, B:40:0x003f, B:42:0x004a, B:51:0x008d), top: B:2:0x000b }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static TypefaceResult b(String str, Context context, List list, int i) {
        int i2;
        Typeface a2;
        LruCache lruCache = a;
        Trace.beginSection(androidx.tracing.Trace.e("getFontSync"));
        try {
            Typeface typeface = (Typeface) lruCache.a(str);
            if (typeface != null) {
                return new TypefaceResult(typeface);
            }
            FontsContractCompat.FontFamilyResult a3 = FontProvider.a(context, list);
            List list2 = a3.b;
            int i3 = a3.a;
            if (i3 != 0) {
                if (i3 == 1) {
                    i2 = -2;
                    if (i2 == 0) {
                        return new TypefaceResult(i2);
                    }
                    if (list2.size() > 1 && Build.VERSION.SDK_INT >= 29) {
                        a2 = TypefaceCompat.b(context, list2, i);
                    } else {
                        a2 = TypefaceCompat.a(context, (FontsContractCompat.FontInfo[]) list2.get(0), i);
                    }
                    if (a2 != null) {
                        lruCache.b(str, a2);
                        return new TypefaceResult(a2);
                    }
                    return new TypefaceResult(-3);
                }
                i2 = -3;
                if (i2 == 0) {
                }
            } else {
                FontsContractCompat.FontInfo[] fontInfoArr = (FontsContractCompat.FontInfo[]) list2.get(0);
                if (fontInfoArr != null && fontInfoArr.length != 0) {
                    int length = fontInfoArr.length;
                    int i4 = 0;
                    while (true) {
                        if (i4 < length) {
                            int i5 = fontInfoArr[i4].f;
                            if (i5 != 0) {
                                if (i5 >= 0) {
                                    i2 = i5;
                                }
                            } else {
                                i4++;
                            }
                        } else {
                            i2 = 0;
                            break;
                        }
                    }
                    if (i2 == 0) {
                    }
                }
                i2 = 1;
                if (i2 == 0) {
                }
            }
        } catch (PackageManager.NameNotFoundException unused) {
            return new TypefaceResult(-1);
        } finally {
            Trace.endSection();
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class TypefaceResult {
        public final Typeface a;
        public final int b;

        public TypefaceResult(int i) {
            this.a = null;
            this.b = i;
        }

        public TypefaceResult(Typeface typeface) {
            this.a = typeface;
            this.b = 0;
        }
    }
}
