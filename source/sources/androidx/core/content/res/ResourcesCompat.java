package androidx.core.content.res;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.util.SparseArray;
import android.util.TypedValue;
import androidx.core.content.res.FontResourcesParserCompat;
import androidx.core.graphics.TypefaceCompat;
import defpackage.f3;
import defpackage.w2;
import java.io.IOException;
import java.util.Objects;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParserException;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ResourcesCompat {
    public static final ThreadLocal a = new ThreadLocal();
    public static final WeakHashMap b = new WeakHashMap(0);
    public static final Object c = new Object();

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class ColorStateListCacheEntry {
        public final ColorStateList a;
        public final Configuration b;
        public final int c;

        public ColorStateListCacheEntry(ColorStateList colorStateList, Configuration configuration, Resources.Theme theme) {
            int hashCode;
            this.a = colorStateList;
            this.b = configuration;
            if (theme == null) {
                hashCode = 0;
            } else {
                hashCode = theme.hashCode();
            }
            this.c = hashCode;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class ColorStateListCacheKey {
        public final Resources a;
        public final Resources.Theme b;

        public ColorStateListCacheKey(Resources resources, Resources.Theme theme) {
            this.a = resources;
            this.b = theme;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && ColorStateListCacheKey.class == obj.getClass()) {
                ColorStateListCacheKey colorStateListCacheKey = (ColorStateListCacheKey) obj;
                if (this.a.equals(colorStateListCacheKey.a) && Objects.equals(this.b, colorStateListCacheKey.b)) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            return Objects.hash(this.a, this.b);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static abstract class FontCallback {
        public final void a(int i) {
            new Handler(Looper.getMainLooper()).post(new w2(i, 2, this));
        }

        public abstract void b(int i);

        public abstract void c(Typeface typeface);
    }

    /* JADX WARN: Code restructure failed: missing block: B:54:0x003f, code lost:
    
        if (r4.c == r9.hashCode()) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static ColorStateList a(Resources resources, int i, Resources.Theme theme) {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        ColorStateListCacheEntry colorStateListCacheEntry;
        ColorStateListCacheKey colorStateListCacheKey = new ColorStateListCacheKey(resources, theme);
        synchronized (c) {
            try {
                SparseArray sparseArray = (SparseArray) b.get(colorStateListCacheKey);
                colorStateList = null;
                if (sparseArray != null && sparseArray.size() > 0 && (colorStateListCacheEntry = (ColorStateListCacheEntry) sparseArray.get(i)) != null) {
                    if (colorStateListCacheEntry.b.equals(resources.getConfiguration())) {
                        if (theme == null) {
                            if (colorStateListCacheEntry.c != 0) {
                            }
                            colorStateList2 = colorStateListCacheEntry.a;
                        }
                        if (theme != null) {
                        }
                    }
                    sparseArray.remove(i);
                }
                colorStateList2 = null;
            } finally {
            }
        }
        if (colorStateList2 != null) {
            return colorStateList2;
        }
        ThreadLocal threadLocal = a;
        TypedValue typedValue = (TypedValue) threadLocal.get();
        if (typedValue == null) {
            typedValue = new TypedValue();
            threadLocal.set(typedValue);
        }
        resources.getValue(i, typedValue, true);
        int i2 = typedValue.type;
        if (i2 < 28 || i2 > 31) {
            try {
                colorStateList = ColorStateListInflaterCompat.a(resources, resources.getXml(i), theme);
            } catch (Exception e) {
                Log.w("ResourcesCompat", "Failed to inflate ColorStateList, leaving it to the framework", e);
            }
        }
        if (colorStateList != null) {
            synchronized (c) {
                try {
                    WeakHashMap weakHashMap = b;
                    SparseArray sparseArray2 = (SparseArray) weakHashMap.get(colorStateListCacheKey);
                    if (sparseArray2 == null) {
                        sparseArray2 = new SparseArray();
                        weakHashMap.put(colorStateListCacheKey, sparseArray2);
                    }
                    sparseArray2.append(i, new ColorStateListCacheEntry(colorStateList, colorStateListCacheKey.a.getConfiguration(), theme));
                } finally {
                }
            }
            return colorStateList;
        }
        return resources.getColorStateList(i, theme);
    }

    public static Typeface b(Context context, int i) {
        if (context.isRestricted()) {
            return null;
        }
        return c(context, i, new TypedValue(), 0, null, false, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x00cc A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Typeface c(Context context, int i, TypedValue typedValue, int i2, FontCallback fontCallback, boolean z, boolean z2) {
        Resources resources = context.getResources();
        resources.getValue(i, typedValue, true);
        CharSequence charSequence = typedValue.string;
        if (charSequence != null) {
            String charSequence2 = charSequence.toString();
            Typeface typeface = null;
            if (!charSequence2.startsWith("res/")) {
                if (fontCallback != null) {
                    fontCallback.a(-3);
                }
            } else {
                Typeface typeface2 = (Typeface) TypefaceCompat.b.a(TypefaceCompat.e(resources, i, charSequence2, typedValue.assetCookie, i2));
                int i3 = 18;
                if (typeface2 != null) {
                    if (fontCallback != null) {
                        new Handler(Looper.getMainLooper()).post(new f3(i3, fontCallback, typeface2));
                    }
                    typeface = typeface2;
                } else if (!z2) {
                    try {
                        if (charSequence2.toLowerCase().endsWith(".xml")) {
                            FontResourcesParserCompat.FamilyResourceEntry a2 = FontResourcesParserCompat.a(resources.getXml(i), resources);
                            if (a2 == null) {
                                Log.e("ResourcesCompat", "Failed to find font-family tag");
                                if (fontCallback != null) {
                                    fontCallback.a(-3);
                                }
                            } else {
                                try {
                                    typeface = TypefaceCompat.c(context, a2, resources, i, charSequence2, typedValue.assetCookie, i2, fontCallback, z);
                                } catch (IOException e) {
                                    e = e;
                                    charSequence2 = charSequence2;
                                    Log.e("ResourcesCompat", "Failed to read xml resource ".concat(charSequence2), e);
                                    if (fontCallback != null) {
                                        fontCallback.a(-3);
                                    }
                                    if (typeface != null) {
                                    }
                                    return typeface;
                                } catch (XmlPullParserException e2) {
                                    e = e2;
                                    charSequence2 = charSequence2;
                                    Log.e("ResourcesCompat", "Failed to parse xml resource ".concat(charSequence2), e);
                                    if (fontCallback != null) {
                                    }
                                    if (typeface != null) {
                                    }
                                    return typeface;
                                }
                            }
                        } else {
                            Typeface d = TypefaceCompat.d(context, resources, i, charSequence2, typedValue.assetCookie, i2);
                            if (fontCallback != null) {
                                if (d != null) {
                                    new Handler(Looper.getMainLooper()).post(new f3(i3, fontCallback, d));
                                } else {
                                    fontCallback.a(-3);
                                }
                            }
                            typeface = d;
                        }
                    } catch (IOException e3) {
                        e = e3;
                    } catch (XmlPullParserException e4) {
                        e = e4;
                    }
                }
            }
            if (typeface != null && fontCallback == null && !z2) {
                throw new Resources.NotFoundException("Font resource ID #0x" + Integer.toHexString(i) + " could not be retrieved.");
            }
            return typeface;
        }
        throw new Resources.NotFoundException("Resource \"" + resources.getResourceName(i) + "\" (" + Integer.toHexString(i) + ") is not a Font: " + typedValue);
    }
}
