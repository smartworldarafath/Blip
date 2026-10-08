package androidx.core.graphics;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.graphics.fonts.Font;
import android.graphics.fonts.FontFamily;
import android.graphics.text.PositionedGlyphs;
import android.graphics.text.TextRunShaper;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Trace;
import android.text.TextUtils;
import android.util.Log;
import androidx.collection.LruCache;
import androidx.core.content.res.FontResourcesParserCompat;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.provider.FontRequest;
import androidx.core.provider.FontsContractCompat;
import defpackage.f3;
import defpackage.ng;
import defpackage.xh;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class TypefaceCompat {
    public static final TypefaceCompatBaseImpl a;
    public static final LruCache b;
    public static Paint c;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class ResourcesCallbackAdapter extends FontsContractCompat.FontRequestCallback {
        public ResourcesCompat.FontCallback a;
    }

    static {
        Trace.beginSection(androidx.tracing.Trace.e("TypefaceCompat static init"));
        int i = Build.VERSION.SDK_INT;
        if (i >= 31) {
            a = new TypefaceCompatBaseImpl();
        } else if (i >= 29) {
            a = new TypefaceCompatBaseImpl();
        } else {
            a = new TypefaceCompatApi26Impl();
        }
        b = new LruCache(16);
        c = null;
        Trace.endSection();
    }

    public static Typeface a(Context context, FontsContractCompat.FontInfo[] fontInfoArr, int i) {
        Trace.beginSection(androidx.tracing.Trace.e("TypefaceCompat.createFromFontInfo"));
        try {
            return a.b(context, fontInfoArr, i);
        } finally {
            Trace.endSection();
        }
    }

    public static Typeface b(Context context, List list, int i) {
        Trace.beginSection(androidx.tracing.Trace.e("TypefaceCompat.createFromFontInfoWithFallback"));
        try {
            return a.c(context, list, i);
        } finally {
            Trace.endSection();
        }
    }

    /* JADX WARN: Type inference failed for: r10v7, types: [java.lang.Object, androidx.core.graphics.TypefaceCompat$ResourcesCallbackAdapter] */
    public static Typeface c(Context context, FontResourcesParserCompat.FamilyResourceEntry familyResourceEntry, Resources resources, int i, String str, int i2, int i3, ResourcesCompat.FontCallback fontCallback, boolean z) {
        Typeface a2;
        Typeface e;
        FontFamily i4;
        int i5;
        boolean z2 = familyResourceEntry instanceof FontResourcesParserCompat.ProviderResourceEntry;
        int i6 = 18;
        LruCache lruCache = b;
        if (z2) {
            FontResourcesParserCompat.ProviderResourceEntry providerResourceEntry = (FontResourcesParserCompat.ProviderResourceEntry) familyResourceEntry;
            ArrayList arrayList = providerResourceEntry.a;
            String str2 = providerResourceEntry.d;
            boolean z3 = false;
            if (TextUtils.isEmpty(str2) || (e = f(str2)) == null) {
                if (arrayList.size() == 1) {
                    e = f(((FontRequest) arrayList.get(0)).e);
                } else {
                    if (Build.VERSION.SDK_INT >= 31) {
                        int i7 = 0;
                        while (true) {
                            if (i7 < arrayList.size()) {
                                if (f(((FontRequest) arrayList.get(i7)).e) == null) {
                                    break;
                                }
                                i7++;
                            } else {
                                int i8 = 0;
                                Typeface.CustomFallbackBuilder customFallbackBuilder = null;
                                while (true) {
                                    if (i8 >= arrayList.size()) {
                                        break;
                                    }
                                    FontRequest fontRequest = (FontRequest) arrayList.get(i8);
                                    if (i8 == arrayList.size() - 1 && TextUtils.isEmpty(fontRequest.f)) {
                                        customFallbackBuilder.setSystemFallback(fontRequest.e);
                                        break;
                                    }
                                    String str3 = fontRequest.e;
                                    String str4 = fontRequest.f;
                                    Font g = g(f(str3));
                                    if (g == null) {
                                        Log.w("TypefaceCompat", "Unable identify the primary font for " + fontRequest.e + ". Falling back to provider font.");
                                        break;
                                    }
                                    if (!TextUtils.isEmpty(str4)) {
                                        try {
                                            xh.o();
                                            xh.y();
                                            i4 = xh.i(xh.h(xh.g(xh.f(ng.e(g), str4))));
                                        } catch (IOException unused) {
                                            Log.e("TypefaceCompat", "Failed to clone Font instance. Fall back to provider font.");
                                        }
                                    } else {
                                        i4 = xh.i(xh.x(g));
                                    }
                                    if (customFallbackBuilder == null) {
                                        customFallbackBuilder = xh.d(i4);
                                    } else {
                                        xh.u(customFallbackBuilder, i4);
                                    }
                                    i8++;
                                }
                                e = xh.e(customFallbackBuilder);
                            }
                        }
                    }
                    e = null;
                }
            }
            if (e != null) {
                if (fontCallback != null) {
                    new Handler(Looper.getMainLooper()).post(new f3(i6, fontCallback, e));
                }
                lruCache.b(e(resources, i, str, i2, i3), e);
                return e;
            }
            if (!z ? fontCallback == null : providerResourceEntry.c == 0) {
                z3 = true;
            }
            if (z) {
                i5 = providerResourceEntry.b;
            } else {
                i5 = -1;
            }
            int i9 = i5;
            Handler handler = new Handler(Looper.getMainLooper());
            ?? obj = new Object();
            obj.a = fontCallback;
            a2 = FontsContractCompat.b(context, arrayList, i3, z3, i9, handler, obj);
        } else {
            a2 = a.a(context, (FontResourcesParserCompat.FontFamilyFilesResourceEntry) familyResourceEntry, resources, i3);
            if (fontCallback != null) {
                if (a2 != null) {
                    new Handler(Looper.getMainLooper()).post(new f3(i6, fontCallback, a2));
                } else {
                    fontCallback.a(-3);
                }
            }
        }
        if (a2 != null) {
            lruCache.b(e(resources, i, str, i2, i3), a2);
        }
        return a2;
    }

    public static Typeface d(Context context, Resources resources, int i, String str, int i2, int i3) {
        Typeface d = a.d(context, resources, i, str);
        if (d != null) {
            b.b(e(resources, i, str, i2, i3), d);
        }
        return d;
    }

    public static String e(Resources resources, int i, String str, int i2, int i3) {
        return resources.getResourcePackageName(i) + '-' + str + '-' + i2 + '-' + i + '-' + i3;
    }

    public static Typeface f(String str) {
        if (str != null && !str.isEmpty()) {
            Typeface create = Typeface.create(str, 0);
            Typeface create2 = Typeface.create(Typeface.DEFAULT, 0);
            if (create != null && !create.equals(create2)) {
                return create;
            }
        }
        return null;
    }

    public static Font g(Typeface typeface) {
        PositionedGlyphs shapeTextRun;
        int glyphCount;
        Font font;
        if (c == null) {
            c = new Paint();
        }
        c.setTextSize(10.0f);
        c.setTypeface(typeface);
        shapeTextRun = TextRunShaper.shapeTextRun((CharSequence) " ", 0, 1, 0, 1, 0.0f, 0.0f, false, c);
        glyphCount = shapeTextRun.glyphCount();
        if (glyphCount != 0) {
            font = shapeTextRun.getFont(0);
            return font;
        }
        return null;
    }
}
