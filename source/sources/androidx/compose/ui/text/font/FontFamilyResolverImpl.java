package androidx.compose.ui.text.font;

import android.graphics.Typeface;
import androidx.compose.runtime.State;
import androidx.compose.ui.text.font.AsyncTypefaceCache;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.TypefaceResult;
import defpackage.c;
import defpackage.ec;
import defpackage.u2;
import java.util.ArrayList;
import java.util.List;
import kotlin.Pair;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineStart;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class FontFamilyResolverImpl implements FontFamily.Resolver {
    public final AndroidFontLoader a;
    public final AndroidFontResolveInterceptor b;
    public final TypefaceRequestCache c;
    public final FontListFontFamilyTypefaceAdapter d;
    public final PlatformFontFamilyTypefaceAdapter e;
    public final c f;

    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.Object, androidx.compose.ui.text.font.PlatformFontFamilyTypefaceAdapter] */
    public FontFamilyResolverImpl(AndroidFontLoader androidFontLoader, AndroidFontResolveInterceptor androidFontResolveInterceptor) {
        TypefaceRequestCache typefaceRequestCache = FontFamilyResolverKt.a;
        FontListFontFamilyTypefaceAdapter fontListFontFamilyTypefaceAdapter = new FontListFontFamilyTypefaceAdapter(FontFamilyResolverKt.b);
        ?? obj = new Object();
        this.a = androidFontLoader;
        this.b = androidFontResolveInterceptor;
        this.c = typefaceRequestCache;
        this.d = fontListFontFamilyTypefaceAdapter;
        this.e = obj;
        this.f = new c(21, this);
    }

    public final TypefaceResult a(final TypefaceRequest typefaceRequest) {
        TypefaceRequestCache typefaceRequestCache = this.c;
        Function1 function1 = new Function1() { // from class: androidx.compose.ui.text.font.a
            @Override // kotlin.jvm.functions.Function1
            public final Object b(Object obj) {
                boolean z;
                Pair pair;
                State async;
                Object b;
                Object obj2;
                boolean z2;
                Typeface create;
                TypefaceResult.Immutable immutable;
                FontFamilyResolverImpl fontFamilyResolverImpl = FontFamilyResolverImpl.this;
                TypefaceRequest typefaceRequest2 = typefaceRequest;
                Function1 function12 = (Function1) obj;
                FontListFontFamilyTypefaceAdapter fontListFontFamilyTypefaceAdapter = fontFamilyResolverImpl.d;
                AndroidFontLoader androidFontLoader = fontFamilyResolverImpl.a;
                c cVar = fontFamilyResolverImpl.f;
                fontListFontFamilyTypefaceAdapter.getClass();
                FontFamily fontFamily = typefaceRequest2.a;
                if (!(fontFamily instanceof FontListFontFamily)) {
                    z = false;
                    async = null;
                } else {
                    List list = ((FontListFontFamily) fontFamily).k;
                    FontWeight fontWeight = typefaceRequest2.b;
                    int i = typefaceRequest2.c;
                    ArrayList arrayList = new ArrayList(list.size());
                    int size = list.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        Object obj3 = list.get(i2);
                        if (Intrinsics.a(((ResourceFont) ((Font) obj3)).a, fontWeight) && i == 0) {
                            arrayList.add(obj3);
                        }
                    }
                    if (arrayList.isEmpty()) {
                        ArrayList arrayList2 = new ArrayList(list.size());
                        int size2 = list.size();
                        for (int i3 = 0; i3 < size2; i3++) {
                            Object obj4 = list.get(i3);
                            ((ResourceFont) ((Font) obj4)).getClass();
                            if (i == 0) {
                                arrayList2.add(obj4);
                            }
                        }
                        if (!arrayList2.isEmpty()) {
                            list = arrayList2;
                        }
                        int compareTo = fontWeight.compareTo(FontWeight.k);
                        int i4 = fontWeight.j;
                        if (compareTo < 0) {
                            int size3 = list.size();
                            int i5 = 0;
                            FontWeight fontWeight2 = null;
                            FontWeight fontWeight3 = null;
                            while (true) {
                                if (i5 >= size3) {
                                    break;
                                }
                                FontWeight fontWeight4 = ((ResourceFont) ((Font) list.get(i5))).a;
                                int i6 = fontWeight4.j;
                                if (Intrinsics.b(i6, i4) < 0) {
                                    if (fontWeight2 == null || Intrinsics.b(i6, fontWeight2.j) > 0) {
                                        fontWeight2 = fontWeight4;
                                    }
                                } else if (Intrinsics.b(i6, i4) > 0) {
                                    if (fontWeight3 == null || Intrinsics.b(i6, fontWeight3.j) < 0) {
                                        fontWeight3 = fontWeight4;
                                    }
                                } else {
                                    fontWeight2 = fontWeight4;
                                    fontWeight3 = fontWeight2;
                                    break;
                                }
                                i5++;
                            }
                            if (fontWeight2 == null) {
                                fontWeight2 = fontWeight3;
                            }
                            ArrayList arrayList3 = new ArrayList(list.size());
                            int size4 = list.size();
                            for (int i7 = 0; i7 < size4; i7++) {
                                Object obj5 = list.get(i7);
                                if (Intrinsics.a(((ResourceFont) ((Font) obj5)).a, fontWeight2)) {
                                    arrayList3.add(obj5);
                                }
                            }
                            arrayList = arrayList3;
                        } else {
                            FontWeight fontWeight5 = FontWeight.l;
                            if (fontWeight.compareTo(fontWeight5) > 0) {
                                int size5 = list.size();
                                FontWeight fontWeight6 = null;
                                FontWeight fontWeight7 = null;
                                int i8 = 0;
                                while (true) {
                                    if (i8 >= size5) {
                                        break;
                                    }
                                    FontWeight fontWeight8 = ((ResourceFont) ((Font) list.get(i8))).a;
                                    int i9 = fontWeight8.j;
                                    if (Intrinsics.b(i9, i4) < 0) {
                                        if (fontWeight6 == null || Intrinsics.b(i9, fontWeight6.j) > 0) {
                                            fontWeight6 = fontWeight8;
                                        }
                                    } else if (Intrinsics.b(i9, i4) > 0) {
                                        if (fontWeight7 == null || Intrinsics.b(i9, fontWeight7.j) < 0) {
                                            fontWeight7 = fontWeight8;
                                        }
                                    } else {
                                        fontWeight6 = fontWeight8;
                                        fontWeight7 = fontWeight6;
                                        break;
                                    }
                                    i8++;
                                }
                                if (fontWeight7 != null) {
                                    fontWeight6 = fontWeight7;
                                }
                                arrayList = new ArrayList(list.size());
                                int size6 = list.size();
                                for (int i10 = 0; i10 < size6; i10++) {
                                    Object obj6 = list.get(i10);
                                    if (Intrinsics.a(((ResourceFont) ((Font) obj6)).a, fontWeight6)) {
                                        arrayList.add(obj6);
                                    }
                                }
                            } else {
                                int size7 = list.size();
                                FontWeight fontWeight9 = null;
                                FontWeight fontWeight10 = null;
                                int i11 = 0;
                                while (true) {
                                    if (i11 >= size7) {
                                        break;
                                    }
                                    FontWeight fontWeight11 = ((ResourceFont) ((Font) list.get(i11))).a;
                                    if (Intrinsics.b(fontWeight11.j, fontWeight5.j) <= 0) {
                                        int i12 = fontWeight11.j;
                                        if (Intrinsics.b(i12, i4) < 0) {
                                            if (fontWeight9 == null || Intrinsics.b(i12, fontWeight9.j) > 0) {
                                                fontWeight9 = fontWeight11;
                                            }
                                        } else if (Intrinsics.b(i12, i4) > 0) {
                                            if (fontWeight10 == null || Intrinsics.b(i12, fontWeight10.j) < 0) {
                                                fontWeight10 = fontWeight11;
                                            }
                                        } else {
                                            fontWeight9 = fontWeight11;
                                            fontWeight10 = fontWeight9;
                                            break;
                                        }
                                    }
                                    i11++;
                                }
                                if (fontWeight10 != null) {
                                    fontWeight9 = fontWeight10;
                                }
                                arrayList = new ArrayList(list.size());
                                int size8 = list.size();
                                for (int i13 = 0; i13 < size8; i13++) {
                                    Object obj7 = list.get(i13);
                                    if (Intrinsics.a(((ResourceFont) ((Font) obj7)).a, fontWeight9)) {
                                        arrayList.add(obj7);
                                    }
                                }
                                if (arrayList.isEmpty()) {
                                    FontWeight fontWeight12 = FontWeight.l;
                                    int size9 = list.size();
                                    FontWeight fontWeight13 = null;
                                    FontWeight fontWeight14 = null;
                                    int i14 = 0;
                                    while (true) {
                                        if (i14 >= size9) {
                                            break;
                                        }
                                        FontWeight fontWeight15 = ((ResourceFont) ((Font) list.get(i14))).a;
                                        if (fontWeight12 == null || Intrinsics.b(fontWeight15.j, fontWeight12.j) >= 0) {
                                            int i15 = fontWeight15.j;
                                            if (Intrinsics.b(i15, i4) < 0) {
                                                if (fontWeight13 == null || Intrinsics.b(i15, fontWeight13.j) > 0) {
                                                    fontWeight13 = fontWeight15;
                                                }
                                            } else if (Intrinsics.b(i15, i4) > 0) {
                                                if (fontWeight14 == null || Intrinsics.b(i15, fontWeight14.j) < 0) {
                                                    fontWeight14 = fontWeight15;
                                                }
                                            } else {
                                                fontWeight13 = fontWeight15;
                                                fontWeight14 = fontWeight13;
                                                break;
                                            }
                                        }
                                        i14++;
                                    }
                                    if (fontWeight14 != null) {
                                        fontWeight13 = fontWeight14;
                                    }
                                    arrayList = new ArrayList(list.size());
                                    int size10 = list.size();
                                    for (int i16 = 0; i16 < size10; i16++) {
                                        Object obj8 = list.get(i16);
                                        if (Intrinsics.a(((ResourceFont) ((Font) obj8)).a, fontWeight13)) {
                                            arrayList.add(obj8);
                                        }
                                    }
                                }
                            }
                        }
                    }
                    AsyncTypefaceCache asyncTypefaceCache = fontListFontFamilyTypefaceAdapter.a;
                    if (arrayList.size() > 0) {
                        z = false;
                        Font font = (Font) arrayList.get(0);
                        ((ResourceFont) font).getClass();
                        synchronized (asyncTypefaceCache.c) {
                            try {
                                androidFontLoader.getClass();
                                AsyncTypefaceCache.Key key = new AsyncTypefaceCache.Key(font);
                                AsyncTypefaceCache.AsyncTypefaceResult asyncTypefaceResult = (AsyncTypefaceCache.AsyncTypefaceResult) asyncTypefaceCache.a.a(key);
                                if (asyncTypefaceResult == null) {
                                    asyncTypefaceResult = (AsyncTypefaceCache.AsyncTypefaceResult) asyncTypefaceCache.b.e(key);
                                }
                                if (asyncTypefaceResult != null) {
                                    obj2 = asyncTypefaceResult.a;
                                } else {
                                    try {
                                        b = androidFontLoader.a(font);
                                    } catch (Exception unused) {
                                        b = cVar.b(typefaceRequest2);
                                    }
                                    asyncTypefaceCache.getClass();
                                    androidFontLoader.getClass();
                                    AsyncTypefaceCache.Key key2 = new AsyncTypefaceCache.Key(font);
                                    synchronized (asyncTypefaceCache.c) {
                                        try {
                                            if (b == null) {
                                                asyncTypefaceCache.b.o(key2, new AsyncTypefaceCache.AsyncTypefaceResult(null));
                                            } else {
                                                asyncTypefaceCache.a.b(key2, new AsyncTypefaceCache.AsyncTypefaceResult(b));
                                            }
                                        } catch (Throwable th) {
                                            throw th;
                                        }
                                    }
                                    obj2 = b;
                                }
                            } catch (Throwable th2) {
                                throw th2;
                            }
                        }
                        if (obj2 == null) {
                            obj2 = cVar.b(typefaceRequest2);
                        }
                        pair = new Pair(null, FontSynthesis_androidKt.a(typefaceRequest2.d, obj2, font, typefaceRequest2.b, typefaceRequest2.c));
                    } else {
                        z = false;
                        pair = new Pair(null, cVar.b(typefaceRequest2));
                    }
                    List list2 = (List) pair.j;
                    Object obj9 = pair.k;
                    if (list2 == null) {
                        async = new TypefaceResult.Immutable(obj9, true);
                    } else {
                        AsyncFontListLoader asyncFontListLoader = new AsyncFontListLoader(list2, obj9, typefaceRequest2, fontListFontFamilyTypefaceAdapter.a, function12, androidFontLoader);
                        BuildersKt.c(fontListFontFamilyTypefaceAdapter.b, null, CoroutineStart.m, new FontListFontFamilyTypefaceAdapter$resolve$1(asyncFontListLoader, null), 1);
                        async = new TypefaceResult.Async(asyncFontListLoader);
                    }
                }
                if (async == null) {
                    fontFamilyResolverImpl.e.getClass();
                    FontFamily fontFamily2 = typefaceRequest2.a;
                    if (fontFamily2 != null && !(fontFamily2 instanceof DefaultFontFamily)) {
                        immutable = null;
                    } else {
                        FontWeight fontWeight16 = typefaceRequest2.b;
                        int i17 = typefaceRequest2.c;
                        if (i17 == 0 && Intrinsics.a(fontWeight16, FontWeight.q)) {
                            create = Typeface.DEFAULT;
                        } else if (i17 == 0 && Intrinsics.a(fontWeight16, FontWeight.t)) {
                            create = Typeface.DEFAULT_BOLD;
                        } else {
                            Typeface typeface = Typeface.DEFAULT;
                            int i18 = fontWeight16.j;
                            z2 = true;
                            if (i17 == 1) {
                                z = true;
                            }
                            create = Typeface.create(typeface, i18, z);
                            immutable = new TypefaceResult.Immutable(create, z2);
                        }
                        z2 = true;
                        immutable = new TypefaceResult.Immutable(create, z2);
                    }
                    if (immutable == null) {
                        u2.l("Could not load font");
                        return null;
                    }
                    return immutable;
                }
                return async;
            }
        };
        synchronized (typefaceRequestCache.a) {
            TypefaceResult typefaceResult = (TypefaceResult) typefaceRequestCache.b.a(typefaceRequest);
            if (typefaceResult != null) {
                if (typefaceResult.d()) {
                    return typefaceResult;
                }
            }
            try {
                TypefaceResult typefaceResult2 = (TypefaceResult) function1.b(new ec(23, typefaceRequestCache, typefaceRequest));
                synchronized (typefaceRequestCache.a) {
                    if (typefaceRequestCache.b.a(typefaceRequest) == null && typefaceResult2.d()) {
                        typefaceRequestCache.b.b(typefaceRequest, typefaceResult2);
                    }
                }
                return typefaceResult2;
            } catch (Exception e) {
                throw new IllegalStateException("Could not load font", e);
            }
        }
    }

    public final TypefaceResult b(FontFamily fontFamily, FontWeight fontWeight, int i, int i2) {
        FontWeight fontWeight2;
        AndroidFontResolveInterceptor androidFontResolveInterceptor = this.b;
        androidFontResolveInterceptor.getClass();
        int i3 = androidFontResolveInterceptor.a;
        if (i3 != 0 && i3 != Integer.MAX_VALUE) {
            fontWeight2 = new FontWeight(RangesKt.d(fontWeight.j + i3, 1, 1000));
        } else {
            fontWeight2 = fontWeight;
        }
        this.a.getClass();
        return a(new TypefaceRequest(fontFamily, fontWeight2, i, i2, null));
    }
}
