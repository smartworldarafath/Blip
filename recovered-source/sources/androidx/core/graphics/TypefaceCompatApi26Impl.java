package androidx.core.graphics;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.FontVariationAxis;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import androidx.core.content.res.FontResourcesParserCompat;
import androidx.core.provider.FontsContractCompat;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class TypefaceCompatApi26Impl extends TypefaceCompatApi21Impl {
    public final Class f;
    public final Constructor g;
    public final Method h;
    public final Method i;
    public final Method j;
    public final Method k;
    public final Method l;

    public TypefaceCompatApi26Impl() {
        Method method;
        Constructor<?> constructor;
        Method method2;
        Method method3;
        Method method4;
        Method method5;
        Class<?> cls = null;
        try {
            Class<?> cls2 = Class.forName("android.graphics.FontFamily");
            constructor = cls2.getConstructor(null);
            method2 = j(cls2);
            Class cls3 = Integer.TYPE;
            method3 = cls2.getMethod("addFontFromBuffer", ByteBuffer.class, cls3, FontVariationAxis[].class, cls3, cls3);
            method4 = cls2.getMethod("freeze", null);
            method5 = cls2.getMethod("abortCreation", null);
            method = k(cls2);
            cls = cls2;
        } catch (ClassNotFoundException | NoSuchMethodException e) {
            Log.e("TypefaceCompatApi26Impl", "Unable to collect necessary methods for class ".concat(e.getClass().getName()), e);
            method = null;
            constructor = null;
            method2 = null;
            method3 = null;
            method4 = null;
            method5 = null;
        }
        this.f = cls;
        this.g = constructor;
        this.h = method2;
        this.i = method3;
        this.j = method4;
        this.k = method5;
        this.l = method;
    }

    public static Method j(Class cls) {
        Class cls2 = Boolean.TYPE;
        Class cls3 = Integer.TYPE;
        return cls.getMethod("addFontFromAssetManager", AssetManager.class, String.class, cls3, cls2, cls3, cls3, cls3, FontVariationAxis[].class);
    }

    @Override // androidx.core.graphics.TypefaceCompatBaseImpl
    public final Typeface a(Context context, FontResourcesParserCompat.FontFamilyFilesResourceEntry fontFamilyFilesResourceEntry, Resources resources, int i) {
        Object obj;
        InputStream inputStream;
        FontResourcesParserCompat.FontFileResourceEntry[] fontFileResourceEntryArr = fontFamilyFilesResourceEntry.a;
        Method method = this.h;
        if (method == null) {
            Log.w("TypefaceCompatApi26Impl", "Unable to collect necessary private methods. Fallback to legacy implementation.");
        }
        int i2 = 0;
        if (method != null) {
            try {
                obj = this.g.newInstance(null);
            } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
                obj = null;
            }
            if (obj != null) {
                int length = fontFileResourceEntryArr.length;
                while (true) {
                    if (i2 < length) {
                        FontResourcesParserCompat.FontFileResourceEntry fontFileResourceEntry = fontFileResourceEntryArr[i2];
                        TypefaceCompatApi26Impl typefaceCompatApi26Impl = this;
                        Context context2 = context;
                        if (!typefaceCompatApi26Impl.g(context2, obj, fontFileResourceEntry.a, fontFileResourceEntry.e, fontFileResourceEntry.b, fontFileResourceEntry.c ? 1 : 0, FontVariationAxis.fromFontVariationSettings(fontFileResourceEntry.d))) {
                            try {
                                typefaceCompatApi26Impl.k.invoke(obj, null);
                                break;
                            } catch (IllegalAccessException | InvocationTargetException unused2) {
                            }
                        } else {
                            i2++;
                            this = typefaceCompatApi26Impl;
                            context = context2;
                        }
                    } else {
                        TypefaceCompatApi26Impl typefaceCompatApi26Impl2 = this;
                        if (typefaceCompatApi26Impl2.i(obj)) {
                            return typefaceCompatApi26Impl2.h(obj);
                        }
                    }
                }
            }
        } else {
            TypefaceCompatApi21Impl.f();
            try {
                Object newInstance = TypefaceCompatApi21Impl.b.newInstance(null);
                for (FontResourcesParserCompat.FontFileResourceEntry fontFileResourceEntry2 : fontFileResourceEntryArr) {
                    File b = TypefaceCompatUtil.b(context);
                    if (b != null) {
                        try {
                            try {
                                inputStream = resources.openRawResource(fontFileResourceEntry2.f);
                                try {
                                    boolean a = TypefaceCompatUtil.a(b, inputStream);
                                    if (inputStream != null) {
                                        try {
                                            inputStream.close();
                                        } catch (IOException unused3) {
                                        }
                                    }
                                    if (!a) {
                                        b.delete();
                                        return null;
                                    }
                                    if (!TypefaceCompatApi21Impl.e(newInstance, b.getPath(), fontFileResourceEntry2.b, fontFileResourceEntry2.c)) {
                                        b.delete();
                                        return null;
                                    }
                                    b.delete();
                                } catch (Throwable th) {
                                    th = th;
                                    Throwable th2 = th;
                                    if (inputStream != null) {
                                        try {
                                            inputStream.close();
                                            throw th2;
                                        } catch (IOException unused4) {
                                            throw th2;
                                        }
                                    }
                                    throw th2;
                                }
                            } catch (Throwable th3) {
                                th = th3;
                                inputStream = null;
                            }
                        } catch (RuntimeException unused5) {
                            b.delete();
                            return null;
                        } catch (Throwable th4) {
                            b.delete();
                            throw th4;
                        }
                    }
                }
                TypefaceCompatApi21Impl.f();
                try {
                    Object newInstance2 = Array.newInstance((Class<?>) TypefaceCompatApi21Impl.a, 1);
                    Array.set(newInstance2, 0, newInstance);
                    return (Typeface) TypefaceCompatApi21Impl.d.invoke(null, newInstance2);
                } catch (IllegalAccessException | InvocationTargetException e) {
                    throw new RuntimeException(e);
                }
            } catch (IllegalAccessException | InstantiationException | InvocationTargetException e2) {
                throw new RuntimeException(e2);
            }
        }
        return null;
    }

    @Override // androidx.core.graphics.TypefaceCompatBaseImpl
    public final Typeface b(Context context, FontsContractCompat.FontInfo[] fontInfoArr, int i) {
        int i2;
        boolean z;
        int i3;
        Object obj;
        Typeface h;
        boolean z2;
        if (fontInfoArr.length >= 1) {
            Method method = this.h;
            if (method == null) {
                Log.w("TypefaceCompatApi26Impl", "Unable to collect necessary private methods. Fallback to legacy implementation.");
            }
            try {
                if (method != null) {
                    HashMap hashMap = new HashMap();
                    for (FontsContractCompat.FontInfo fontInfo : fontInfoArr) {
                        if (fontInfo.f == 0) {
                            Uri uri = fontInfo.a;
                            if (!hashMap.containsKey(uri)) {
                                hashMap.put(uri, TypefaceCompatUtil.c(context, uri));
                            }
                        }
                    }
                    Map unmodifiableMap = Collections.unmodifiableMap(hashMap);
                    try {
                        obj = this.g.newInstance(null);
                    } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
                        obj = null;
                    }
                    if (obj != null) {
                        int length = fontInfoArr.length;
                        int i4 = 0;
                        boolean z3 = false;
                        while (true) {
                            Method method2 = this.k;
                            if (i4 < length) {
                                FontsContractCompat.FontInfo fontInfo2 = fontInfoArr[i4];
                                ByteBuffer byteBuffer = (ByteBuffer) unmodifiableMap.get(fontInfo2.a);
                                if (byteBuffer != null) {
                                    try {
                                        z2 = ((Boolean) this.i.invoke(obj, byteBuffer, Integer.valueOf(fontInfo2.b), null, Integer.valueOf(fontInfo2.c), Integer.valueOf(fontInfo2.d ? 1 : 0))).booleanValue();
                                    } catch (IllegalAccessException | InvocationTargetException unused2) {
                                        z2 = false;
                                    }
                                    if (!z2) {
                                        method2.invoke(obj, null);
                                        break;
                                    }
                                    z3 = true;
                                }
                                i4++;
                                z3 = z3;
                            } else if (!z3) {
                                method2.invoke(obj, null);
                            } else if (i(obj) && (h = h(obj)) != null) {
                                return Typeface.create(h, i);
                            }
                        }
                    }
                } else {
                    if ((i & 1) == 0) {
                        i2 = 400;
                    } else {
                        i2 = 700;
                    }
                    if ((i & 2) != 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    int i5 = Integer.MAX_VALUE;
                    FontsContractCompat.FontInfo fontInfo3 = null;
                    for (FontsContractCompat.FontInfo fontInfo4 : fontInfoArr) {
                        int abs = Math.abs(fontInfo4.c - i2) * 2;
                        if (fontInfo4.d == z) {
                            i3 = 0;
                        } else {
                            i3 = 1;
                        }
                        int i6 = abs + i3;
                        if (fontInfo3 == null || i5 > i6) {
                            fontInfo3 = fontInfo4;
                            i5 = i6;
                        }
                    }
                    ParcelFileDescriptor openFileDescriptor = context.getContentResolver().openFileDescriptor(fontInfo3.a, "r", null);
                    if (openFileDescriptor == null) {
                        if (openFileDescriptor != null) {
                            openFileDescriptor.close();
                            return null;
                        }
                    } else {
                        try {
                            Typeface build = new Typeface.Builder(openFileDescriptor.getFileDescriptor()).setWeight(fontInfo3.c).setItalic(fontInfo3.d).build();
                            openFileDescriptor.close();
                            return build;
                        } finally {
                        }
                    }
                }
            } catch (IOException | IllegalAccessException | InvocationTargetException unused3) {
            }
        }
        return null;
    }

    @Override // androidx.core.graphics.TypefaceCompatBaseImpl
    public final Typeface c(Context context, List list, int i) {
        throw new IllegalStateException("createFromFontInfoWithFallback must only be called on API 29+");
    }

    @Override // androidx.core.graphics.TypefaceCompatBaseImpl
    public final Typeface d(Context context, Resources resources, int i, String str) {
        Object obj;
        InputStream inputStream;
        Method method = this.h;
        if (method == null) {
            Log.w("TypefaceCompatApi26Impl", "Unable to collect necessary private methods. Fallback to legacy implementation.");
        }
        if (method != null) {
            try {
                obj = this.g.newInstance(null);
            } catch (IllegalAccessException | InstantiationException | InvocationTargetException unused) {
                obj = null;
            }
            if (obj != null) {
                if (!g(context, obj, str, 0, -1, -1, null)) {
                    try {
                        this.k.invoke(obj, null);
                    } catch (IllegalAccessException | InvocationTargetException unused2) {
                    }
                } else if (i(obj)) {
                    return h(obj);
                }
            }
        } else {
            File b = TypefaceCompatUtil.b(context);
            try {
                if (b != null) {
                    try {
                        inputStream = resources.openRawResource(i);
                        try {
                            boolean a = TypefaceCompatUtil.a(b, inputStream);
                            if (inputStream != null) {
                                try {
                                    inputStream.close();
                                } catch (IOException unused3) {
                                }
                            }
                            if (!a) {
                                b.delete();
                                return null;
                            }
                            Typeface createFromFile = Typeface.createFromFile(b.getPath());
                            b.delete();
                            return createFromFile;
                        } catch (Throwable th) {
                            th = th;
                            Throwable th2 = th;
                            if (inputStream != null) {
                                try {
                                    inputStream.close();
                                    throw th2;
                                } catch (IOException unused4) {
                                    throw th2;
                                }
                            }
                            throw th2;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        inputStream = null;
                    }
                }
            } catch (RuntimeException unused5) {
                b.delete();
                return null;
            } catch (Throwable th4) {
                b.delete();
                throw th4;
            }
        }
        return null;
    }

    public final boolean g(Context context, Object obj, String str, int i, int i2, int i3, FontVariationAxis[] fontVariationAxisArr) {
        try {
            return ((Boolean) this.h.invoke(obj, context.getAssets(), str, 0, Boolean.FALSE, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), fontVariationAxisArr)).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    public abstract Typeface h(Object obj);

    public final boolean i(Object obj) {
        try {
            return ((Boolean) this.j.invoke(obj, null)).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return false;
        }
    }

    public abstract Method k(Class cls);
}
