package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.fonts.FontVariationAxis;
import android.os.Build;
import android.os.LocaleList;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.method.PasswordTransformationMethod;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.widget.TextView;
import androidx.appcompat.R$styleable;
import androidx.collection.LruCache;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.util.Consumer;
import androidx.core.util.Preconditions;
import androidx.core.view.ViewCompat;
import androidx.core.widget.TextViewCompat;
import java.lang.ref.WeakReference;
import java.util.Objects;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class AppCompatTextHelper {
    public final TextView a;
    public TintInfo b;
    public TintInfo c;
    public TintInfo d;
    public TintInfo e;
    public TintInfo f;
    public TintInfo g;
    public TintInfo h;
    public final AppCompatTextViewAutoSizeHelper i;
    public Typeface l;
    public boolean n;
    public int j = 0;
    public int k = -1;
    public String m = null;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Api26Impl {
        public static final LruCache a = new LruCache(30);
        public static Paint b;

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* loaded from: classes.dex */
        public static class VarCacheKey {
            public final Typeface a;
            public final String b;
            public final int c;

            public VarCacheKey(Typeface typeface, String str, int i) {
                this.a = typeface;
                this.b = str;
                this.c = i;
            }

            public final boolean equals(Object obj) {
                if (!(obj instanceof VarCacheKey)) {
                    return false;
                }
                VarCacheKey varCacheKey = (VarCacheKey) obj;
                if (this.c != varCacheKey.c || !Objects.equals(this.a, varCacheKey.a) || !Objects.equals(this.b, varCacheKey.b)) {
                    return false;
                }
                return true;
            }

            public final int hashCode() {
                return Objects.hash(this.a, this.b, Integer.valueOf(this.c));
            }
        }

        public static void a(TextView textView, String str) {
            if (Objects.equals(textView.getFontVariationSettings(), str)) {
                textView.setFontVariationSettings("");
            }
            textView.setFontVariationSettings(str);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class FontVariationSettingsManager {
        public final TextView a;
        public final Consumer b;
        public Typeface c;
        public Typeface d;
        public String e;

        public FontVariationSettingsManager(TextView textView, Consumer consumer) {
            this.a = textView;
            this.b = consumer;
        }

        /* JADX WARN: Code restructure failed: missing block: B:53:0x006e, code lost:
        
            if (r9 == null) goto L26;
         */
        /* JADX WARN: Code restructure failed: missing block: B:6:0x0029, code lost:
        
            r3 = r3.getContext().getResources().getConfiguration().fontWeightAdjustment;
         */
        /* JADX WARN: Removed duplicated region for block: B:47:0x00d9  */
        /* JADX WARN: Removed duplicated region for block: B:50:0x00e5  */
        /* JADX WARN: Removed duplicated region for block: B:51:0x00ed  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final boolean a(String str) {
            int i;
            String str2;
            boolean z;
            FontVariationAxis[] fromFontVariationSettings;
            float f;
            Typeface typeface = this.c;
            TextView textView = this.a;
            TextPaint paint = textView.getPaint();
            if (this.d != paint.getTypeface()) {
                Log.w("FontVarSettings", "getPaint().getTypeface() changed unexpectedly. App code should not modify the result of getPaint().");
                typeface = paint.getTypeface();
            }
            if (Build.VERSION.SDK_INT < 31 || i == Integer.MAX_VALUE) {
                i = 0;
            }
            if (i == Integer.MAX_VALUE) {
                i = 0;
            }
            Api26Impl.VarCacheKey varCacheKey = new Api26Impl.VarCacheKey(typeface, str, i);
            LruCache lruCache = Api26Impl.a;
            Typeface typeface2 = (Typeface) lruCache.a(varCacheKey);
            if (typeface2 != null) {
                z = true;
            } else {
                Paint paint2 = Api26Impl.b;
                if (paint2 == null) {
                    paint2 = new Paint();
                    Api26Impl.b = paint2;
                }
                if (i != 0) {
                    if (TextUtils.isEmpty(str)) {
                        fromFontVariationSettings = new FontVariationAxis[0];
                    } else {
                        fromFontVariationSettings = FontVariationAxis.fromFontVariationSettings(str);
                    }
                    int i2 = 0;
                    boolean z2 = false;
                    while (true) {
                        f = 1.0f;
                        if (i2 >= fromFontVariationSettings.length) {
                            break;
                        }
                        FontVariationAxis fontVariationAxis = fromFontVariationSettings[i2];
                        if ("wght".equals(fontVariationAxis.getTag())) {
                            float styleValue = fontVariationAxis.getStyleValue() + i;
                            if (styleValue >= 1.0f) {
                                f = Math.min(styleValue, 1000.0f);
                            }
                            fromFontVariationSettings[i2] = new FontVariationAxis("wght", f);
                            z2 = true;
                        }
                        i2++;
                    }
                    z = true;
                    if (!z2) {
                        FontVariationAxis[] fontVariationAxisArr = new FontVariationAxis[fromFontVariationSettings.length + 1];
                        System.arraycopy(fromFontVariationSettings, 0, fontVariationAxisArr, 0, fromFontVariationSettings.length);
                        int length = fromFontVariationSettings.length;
                        float f2 = i + 400;
                        if (f2 >= 1.0f) {
                            f = Math.min(f2, 1000.0f);
                        }
                        fontVariationAxisArr[length] = new FontVariationAxis("wght", f);
                        fromFontVariationSettings = fontVariationAxisArr;
                    }
                    str2 = FontVariationAxis.toFontVariationSettings(fromFontVariationSettings);
                    if (Objects.equals(paint2.getFontVariationSettings(), str2)) {
                        paint2.setFontVariationSettings(null);
                    }
                    paint2.setTypeface(typeface);
                    if (!paint2.setFontVariationSettings(str2)) {
                        typeface2 = paint2.getTypeface();
                        lruCache.b(varCacheKey, typeface2);
                    } else {
                        typeface2 = null;
                    }
                }
                str2 = str;
                z = true;
                if (Objects.equals(paint2.getFontVariationSettings(), str2)) {
                }
                paint2.setTypeface(typeface);
                if (!paint2.setFontVariationSettings(str2)) {
                }
            }
            if (typeface2 == null) {
                return false;
            }
            this.d = typeface2;
            this.b.accept(typeface2);
            this.e = str;
            return z;
        }
    }

    public AppCompatTextHelper(TextView textView) {
        this.a = textView;
        this.i = new AppCompatTextViewAutoSizeHelper(textView);
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.Object, androidx.appcompat.widget.TintInfo] */
    public static TintInfo d(Context context, AppCompatDrawableManager appCompatDrawableManager, int i) {
        ColorStateList f;
        synchronized (appCompatDrawableManager) {
            f = appCompatDrawableManager.a.f(context, i);
        }
        if (f != null) {
            ?? obj = new Object();
            obj.d = true;
            obj.a = f;
            return obj;
        }
        return null;
    }

    public final void a(Drawable drawable, TintInfo tintInfo) {
        if (drawable != null && tintInfo != null) {
            AppCompatDrawableManager.d(drawable, tintInfo, this.a.getDrawableState());
        }
    }

    public final void b() {
        TintInfo tintInfo = this.b;
        TextView textView = this.a;
        if (tintInfo != null || this.c != null || this.d != null || this.e != null) {
            Drawable[] compoundDrawables = textView.getCompoundDrawables();
            a(compoundDrawables[0], this.b);
            a(compoundDrawables[1], this.c);
            a(compoundDrawables[2], this.d);
            a(compoundDrawables[3], this.e);
        }
        if (this.f == null && this.g == null) {
            return;
        }
        Drawable[] compoundDrawablesRelative = textView.getCompoundDrawablesRelative();
        a(compoundDrawablesRelative[0], this.f);
        a(compoundDrawablesRelative[2], this.g);
    }

    public final void c(boolean z) {
        Typeface typeface = this.l;
        TextView textView = this.a;
        if (typeface != null) {
            if (this.k == -1) {
                textView.setTypeface(typeface, this.j);
            } else {
                textView.setTypeface(typeface);
            }
        } else if (z) {
            textView.setTypeface(null);
        }
        String str = this.m;
        if (str != null) {
            Api26Impl.a(textView, str);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void e(AttributeSet attributeSet, int i) {
        AppCompatDrawableManager appCompatDrawableManager;
        boolean z;
        boolean z2;
        String str;
        float f;
        float f2;
        float f3;
        int i2;
        Drawable drawable;
        Drawable drawable2;
        Drawable drawable3;
        Drawable drawable4;
        Drawable drawable5;
        Drawable drawable6;
        int i3;
        float f4;
        int i4;
        int i5;
        int resourceId;
        boolean z3;
        int[] iArr = R$styleable.g;
        int[] iArr2 = R$styleable.r;
        AppCompatTextViewAutoSizeHelper appCompatTextViewAutoSizeHelper = this.i;
        TextView textView = this.a;
        Context context = textView.getContext();
        PorterDuff.Mode mode = AppCompatDrawableManager.b;
        synchronized (AppCompatDrawableManager.class) {
            try {
                if (AppCompatDrawableManager.c == null) {
                    AppCompatDrawableManager.c();
                }
                appCompatDrawableManager = AppCompatDrawableManager.c;
            } catch (Throwable th) {
                throw th;
            }
        }
        int[] iArr3 = R$styleable.f;
        TintTypedArray d = TintTypedArray.d(context, attributeSet, iArr3, i);
        TextView textView2 = this.a;
        ViewCompat.m(textView2, textView2.getContext(), iArr3, attributeSet, d.b, i);
        TypedArray typedArray = d.b;
        int resourceId2 = typedArray.getResourceId(0, -1);
        if (typedArray.hasValue(3)) {
            this.b = d(context, appCompatDrawableManager, typedArray.getResourceId(3, 0));
        }
        if (typedArray.hasValue(1)) {
            this.c = d(context, appCompatDrawableManager, typedArray.getResourceId(1, 0));
        }
        if (typedArray.hasValue(4)) {
            this.d = d(context, appCompatDrawableManager, typedArray.getResourceId(4, 0));
        }
        if (typedArray.hasValue(2)) {
            this.e = d(context, appCompatDrawableManager, typedArray.getResourceId(2, 0));
        }
        if (typedArray.hasValue(5)) {
            this.f = d(context, appCompatDrawableManager, typedArray.getResourceId(5, 0));
        }
        if (typedArray.hasValue(6)) {
            this.g = d(context, appCompatDrawableManager, typedArray.getResourceId(6, 0));
        }
        d.e();
        boolean z4 = textView.getTransformationMethod() instanceof PasswordTransformationMethod;
        if (resourceId2 != -1) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(resourceId2, iArr2);
            TintTypedArray tintTypedArray = new TintTypedArray(context, obtainStyledAttributes);
            if (!z4 && obtainStyledAttributes.hasValue(14)) {
                z = obtainStyledAttributes.getBoolean(14, false);
                z2 = true;
            } else {
                z = false;
                z2 = false;
            }
            i(context, tintTypedArray);
            if (obtainStyledAttributes.hasValue(15)) {
                str = obtainStyledAttributes.getString(15);
            } else {
                str = null;
            }
            tintTypedArray.e();
        } else {
            z = false;
            z2 = false;
            str = null;
        }
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, iArr2, i, 0);
        TintTypedArray tintTypedArray2 = new TintTypedArray(context, obtainStyledAttributes2);
        if (!z4 && obtainStyledAttributes2.hasValue(14)) {
            z = obtainStyledAttributes2.getBoolean(14, false);
            z2 = true;
        }
        boolean z5 = z;
        if (obtainStyledAttributes2.hasValue(15)) {
            str = obtainStyledAttributes2.getString(15);
        }
        if (obtainStyledAttributes2.hasValue(0) && obtainStyledAttributes2.getDimensionPixelSize(0, -1) == 0) {
            textView.setTextSize(0, 0.0f);
        }
        i(context, tintTypedArray2);
        tintTypedArray2.e();
        if (!z4 && z2) {
            this.a.setAllCaps(z5);
        }
        c(false);
        if (str != null) {
            textView.setTextLocales(LocaleList.forLanguageTags(str));
        }
        Context context2 = appCompatTextViewAutoSizeHelper.h;
        TypedArray obtainStyledAttributes3 = context2.obtainStyledAttributes(attributeSet, iArr, i, 0);
        TextView textView3 = appCompatTextViewAutoSizeHelper.g;
        ViewCompat.m(textView3, textView3.getContext(), iArr, attributeSet, obtainStyledAttributes3, i);
        if (obtainStyledAttributes3.hasValue(5)) {
            appCompatTextViewAutoSizeHelper.a = obtainStyledAttributes3.getInt(5, 0);
        }
        if (obtainStyledAttributes3.hasValue(4)) {
            f = obtainStyledAttributes3.getDimension(4, -1.0f);
        } else {
            f = -1.0f;
        }
        if (obtainStyledAttributes3.hasValue(2)) {
            f2 = obtainStyledAttributes3.getDimension(2, -1.0f);
        } else {
            f2 = -1.0f;
        }
        if (obtainStyledAttributes3.hasValue(1)) {
            f3 = obtainStyledAttributes3.getDimension(1, -1.0f);
        } else {
            f3 = -1.0f;
        }
        if (obtainStyledAttributes3.hasValue(3) && (resourceId = obtainStyledAttributes3.getResourceId(3, 0)) > 0) {
            TypedArray obtainTypedArray = obtainStyledAttributes3.getResources().obtainTypedArray(resourceId);
            int length = obtainTypedArray.length();
            i2 = 0;
            int[] iArr4 = new int[length];
            if (length > 0) {
                for (int i6 = 0; i6 < length; i6++) {
                    iArr4[i6] = obtainTypedArray.getDimensionPixelSize(i6, -1);
                }
                int[] a = AppCompatTextViewAutoSizeHelper.a(iArr4);
                appCompatTextViewAutoSizeHelper.e = a;
                if (a.length > 0) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                appCompatTextViewAutoSizeHelper.f = z3;
                if (z3) {
                    appCompatTextViewAutoSizeHelper.a = 1;
                    appCompatTextViewAutoSizeHelper.c = a[0];
                    appCompatTextViewAutoSizeHelper.d = a[r6 - 1];
                    appCompatTextViewAutoSizeHelper.b = -1.0f;
                }
            }
            obtainTypedArray.recycle();
        } else {
            i2 = 0;
        }
        obtainStyledAttributes3.recycle();
        if (appCompatTextViewAutoSizeHelper.b()) {
            if (appCompatTextViewAutoSizeHelper.a == 1) {
                if (!appCompatTextViewAutoSizeHelper.f) {
                    DisplayMetrics displayMetrics = context2.getResources().getDisplayMetrics();
                    if (f2 == -1.0f) {
                        i5 = 2;
                        f2 = TypedValue.applyDimension(2, 12.0f, displayMetrics);
                    } else {
                        i5 = 2;
                    }
                    if (f3 == -1.0f) {
                        f3 = TypedValue.applyDimension(i5, 112.0f, displayMetrics);
                    }
                    float f5 = f3;
                    if (f == -1.0f) {
                        f = 1.0f;
                    }
                    if (f2 > 0.0f) {
                        if (f5 > f2) {
                            if (f > 0.0f) {
                                appCompatTextViewAutoSizeHelper.a = 1;
                                appCompatTextViewAutoSizeHelper.c = f2;
                                appCompatTextViewAutoSizeHelper.d = f5;
                                appCompatTextViewAutoSizeHelper.b = f;
                                appCompatTextViewAutoSizeHelper.f = i2;
                            } else {
                                throw new IllegalArgumentException("The auto-size step granularity (" + f + "px) is less or equal to (0px)");
                            }
                        } else {
                            throw new IllegalArgumentException("Maximum auto-size text size (" + f5 + "px) is less or equal to minimum auto-size text size (" + f2 + "px)");
                        }
                    } else {
                        throw new IllegalArgumentException("Minimum auto-size text size (" + f2 + "px) is less or equal to (0px)");
                    }
                }
                if (appCompatTextViewAutoSizeHelper.b() && appCompatTextViewAutoSizeHelper.a == 1 && (!appCompatTextViewAutoSizeHelper.f || appCompatTextViewAutoSizeHelper.e.length == 0)) {
                    int floor = ((int) Math.floor((appCompatTextViewAutoSizeHelper.d - appCompatTextViewAutoSizeHelper.c) / appCompatTextViewAutoSizeHelper.b)) + 1;
                    int[] iArr5 = new int[floor];
                    for (int i7 = 0; i7 < floor; i7++) {
                        iArr5[i7] = Math.round((i7 * appCompatTextViewAutoSizeHelper.b) + appCompatTextViewAutoSizeHelper.c);
                    }
                    appCompatTextViewAutoSizeHelper.e = AppCompatTextViewAutoSizeHelper.a(iArr5);
                }
            }
        } else {
            appCompatTextViewAutoSizeHelper.a = i2;
        }
        if (appCompatTextViewAutoSizeHelper.a != 0) {
            int[] iArr6 = appCompatTextViewAutoSizeHelper.e;
            if (iArr6.length > 0) {
                LruCache lruCache = Api26Impl.a;
                if (textView.getAutoSizeStepGranularity() != -1.0f) {
                    textView.setAutoSizeTextTypeUniformWithConfiguration(Math.round(appCompatTextViewAutoSizeHelper.c), Math.round(appCompatTextViewAutoSizeHelper.d), Math.round(appCompatTextViewAutoSizeHelper.b), 0);
                } else {
                    textView.setAutoSizeTextTypeUniformWithPresetSizes(iArr6, 0);
                }
            }
        }
        TypedArray obtainStyledAttributes4 = context.obtainStyledAttributes(attributeSet, iArr);
        TintTypedArray tintTypedArray3 = new TintTypedArray(context, obtainStyledAttributes4);
        int resourceId3 = obtainStyledAttributes4.getResourceId(8, -1);
        if (resourceId3 != -1) {
            drawable = appCompatDrawableManager.a(context, resourceId3);
        } else {
            drawable = null;
        }
        int resourceId4 = obtainStyledAttributes4.getResourceId(13, -1);
        if (resourceId4 != -1) {
            drawable2 = appCompatDrawableManager.a(context, resourceId4);
        } else {
            drawable2 = null;
        }
        int resourceId5 = obtainStyledAttributes4.getResourceId(9, -1);
        if (resourceId5 != -1) {
            drawable3 = appCompatDrawableManager.a(context, resourceId5);
        } else {
            drawable3 = null;
        }
        int resourceId6 = obtainStyledAttributes4.getResourceId(6, -1);
        if (resourceId6 != -1) {
            drawable4 = appCompatDrawableManager.a(context, resourceId6);
        } else {
            drawable4 = null;
        }
        int resourceId7 = obtainStyledAttributes4.getResourceId(10, -1);
        if (resourceId7 != -1) {
            drawable5 = appCompatDrawableManager.a(context, resourceId7);
        } else {
            drawable5 = null;
        }
        int resourceId8 = obtainStyledAttributes4.getResourceId(7, -1);
        if (resourceId8 != -1) {
            drawable6 = appCompatDrawableManager.a(context, resourceId8);
        } else {
            drawable6 = null;
        }
        if (drawable5 == null && drawable6 == null) {
            if (drawable != null || drawable2 != null || drawable3 != null || drawable4 != null) {
                Drawable[] compoundDrawablesRelative = textView.getCompoundDrawablesRelative();
                Drawable drawable7 = compoundDrawablesRelative[0];
                if (drawable7 == null && compoundDrawablesRelative[2] == null) {
                    Drawable[] compoundDrawables = textView.getCompoundDrawables();
                    if (drawable == null) {
                        drawable = compoundDrawables[0];
                    }
                    if (drawable2 == null) {
                        drawable2 = compoundDrawables[1];
                    }
                    if (drawable3 == null) {
                        drawable3 = compoundDrawables[2];
                    }
                    if (drawable4 == null) {
                        drawable4 = compoundDrawables[3];
                    }
                    textView.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
                } else {
                    if (drawable2 == null) {
                        drawable2 = compoundDrawablesRelative[1];
                    }
                    if (drawable4 == null) {
                        drawable4 = compoundDrawablesRelative[3];
                    }
                    textView.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable7, drawable2, compoundDrawablesRelative[2], drawable4);
                }
            }
        } else {
            Drawable[] compoundDrawablesRelative2 = textView.getCompoundDrawablesRelative();
            if (drawable5 == null) {
                drawable5 = compoundDrawablesRelative2[0];
            }
            if (drawable2 == null) {
                drawable2 = compoundDrawablesRelative2[1];
            }
            if (drawable6 == null) {
                drawable6 = compoundDrawablesRelative2[2];
            }
            if (drawable4 == null) {
                drawable4 = compoundDrawablesRelative2[3];
            }
            textView.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable5, drawable2, drawable6, drawable4);
        }
        if (obtainStyledAttributes4.hasValue(11)) {
            textView.setCompoundDrawableTintList(tintTypedArray3.a(11));
        }
        if (obtainStyledAttributes4.hasValue(12)) {
            textView.setCompoundDrawableTintMode(DrawableUtils.b(obtainStyledAttributes4.getInt(12, -1), null));
        }
        int dimensionPixelSize = obtainStyledAttributes4.getDimensionPixelSize(15, -1);
        int dimensionPixelSize2 = obtainStyledAttributes4.getDimensionPixelSize(18, -1);
        if (obtainStyledAttributes4.hasValue(19)) {
            TypedValue peekValue = obtainStyledAttributes4.peekValue(19);
            if (peekValue != null && peekValue.type == 5) {
                int i8 = peekValue.data;
                i3 = i8 & 15;
                f4 = TypedValue.complexToFloat(i8);
            } else {
                f4 = obtainStyledAttributes4.getDimensionPixelSize(19, -1);
                i3 = -1;
            }
        } else {
            i3 = -1;
            f4 = -1.0f;
        }
        tintTypedArray3.e();
        if (dimensionPixelSize != -1) {
            Preconditions.b(dimensionPixelSize);
            textView.setFirstBaselineToTopHeight(dimensionPixelSize);
        }
        if (dimensionPixelSize2 != -1) {
            Preconditions.b(dimensionPixelSize2);
            Paint.FontMetricsInt fontMetricsInt = textView.getPaint().getFontMetricsInt();
            if (textView.getIncludeFontPadding()) {
                i4 = fontMetricsInt.bottom;
            } else {
                i4 = fontMetricsInt.descent;
            }
            if (dimensionPixelSize2 > Math.abs(i4)) {
                textView.setPadding(textView.getPaddingLeft(), textView.getPaddingTop(), textView.getPaddingRight(), dimensionPixelSize2 - i4);
            }
        }
        if (f4 != -1.0f) {
            if (i3 == -1) {
                TextViewCompat.a(textView, (int) f4);
            } else {
                TextViewCompat.b(textView, i3, f4);
            }
        }
    }

    public final void f(Context context, int i) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i, R$styleable.r);
        TintTypedArray tintTypedArray = new TintTypedArray(context, obtainStyledAttributes);
        boolean hasValue = obtainStyledAttributes.hasValue(14);
        TextView textView = this.a;
        if (hasValue) {
            textView.setAllCaps(obtainStyledAttributes.getBoolean(14, false));
        }
        if (obtainStyledAttributes.hasValue(0) && obtainStyledAttributes.getDimensionPixelSize(0, -1) == 0) {
            textView.setTextSize(0, 0.0f);
        }
        boolean i2 = i(context, tintTypedArray);
        tintTypedArray.e();
        c(i2);
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, androidx.appcompat.widget.TintInfo] */
    public final void g(ColorStateList colorStateList) {
        boolean z;
        if (this.h == null) {
            this.h = new Object();
        }
        TintInfo tintInfo = this.h;
        tintInfo.a = colorStateList;
        if (colorStateList != null) {
            z = true;
        } else {
            z = false;
        }
        tintInfo.d = z;
        this.b = tintInfo;
        this.c = tintInfo;
        this.d = tintInfo;
        this.e = tintInfo;
        this.f = tintInfo;
        this.g = tintInfo;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, androidx.appcompat.widget.TintInfo] */
    public final void h(PorterDuff.Mode mode) {
        boolean z;
        if (this.h == null) {
            this.h = new Object();
        }
        TintInfo tintInfo = this.h;
        tintInfo.b = mode;
        if (mode != null) {
            z = true;
        } else {
            z = false;
        }
        tintInfo.c = z;
        this.b = tintInfo;
        this.c = tintInfo;
        this.d = tintInfo;
        this.e = tintInfo;
        this.f = tintInfo;
        this.g = tintInfo;
    }

    public final boolean i(Context context, TintTypedArray tintTypedArray) {
        String string;
        boolean z;
        boolean z2;
        Typeface typeface;
        int i = this.j;
        TypedArray typedArray = tintTypedArray.b;
        this.j = typedArray.getInt(2, i);
        int i2 = typedArray.getInt(11, -1);
        this.k = i2;
        if (i2 != -1) {
            this.j &= 2;
        }
        if (typedArray.hasValue(13)) {
            this.m = typedArray.getString(13);
        }
        int i3 = 10;
        boolean z3 = false;
        if (!typedArray.hasValue(10) && !typedArray.hasValue(12)) {
            if (typedArray.hasValue(1)) {
                this.n = false;
                int i4 = typedArray.getInt(1, 1);
                if (i4 != 1) {
                    if (i4 != 2) {
                        if (i4 == 3) {
                            this.l = Typeface.MONOSPACE;
                            return true;
                        }
                    } else {
                        this.l = Typeface.SERIF;
                        return true;
                    }
                } else {
                    this.l = Typeface.SANS_SERIF;
                    return true;
                }
            } else {
                int i5 = this.k;
                if (i5 == -1 || (typeface = this.l) == null) {
                    return false;
                }
                if ((this.j & 2) != 0) {
                    z3 = true;
                }
                this.l = Typeface.create(typeface, i5, z3);
                return true;
            }
        } else {
            this.l = null;
            if (typedArray.hasValue(12)) {
                i3 = 12;
            }
            final int i6 = this.k;
            final int i7 = this.j;
            if (!context.isRestricted()) {
                final WeakReference weakReference = new WeakReference(this.a);
                try {
                    Typeface c = tintTypedArray.c(i3, this.j, new ResourcesCompat.FontCallback() { // from class: androidx.appcompat.widget.AppCompatTextHelper.1
                        @Override // androidx.core.content.res.ResourcesCompat.FontCallback
                        public final void c(final Typeface typeface2) {
                            boolean z4;
                            int i8 = i6;
                            if (i8 != -1) {
                                if ((i7 & 2) != 0) {
                                    z4 = true;
                                } else {
                                    z4 = false;
                                }
                                typeface2 = Typeface.create(typeface2, i8, z4);
                            }
                            AppCompatTextHelper appCompatTextHelper = AppCompatTextHelper.this;
                            if (appCompatTextHelper.n) {
                                appCompatTextHelper.l = typeface2;
                                final TextView textView = (TextView) weakReference.get();
                                if (textView != null) {
                                    boolean isAttachedToWindow = textView.isAttachedToWindow();
                                    final int i9 = appCompatTextHelper.j;
                                    if (isAttachedToWindow) {
                                        textView.post(new Runnable() { // from class: androidx.appcompat.widget.AppCompatTextHelper.2
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                LruCache lruCache = Api26Impl.a;
                                                TextView textView2 = textView;
                                                String fontVariationSettings = textView2.getFontVariationSettings();
                                                if (!TextUtils.isEmpty(fontVariationSettings)) {
                                                    Api26Impl.a(textView2, null);
                                                }
                                                textView2.setTypeface(typeface2, i9);
                                                if (!TextUtils.isEmpty(fontVariationSettings)) {
                                                    Api26Impl.a(textView2, fontVariationSettings);
                                                }
                                            }
                                        });
                                        return;
                                    }
                                    LruCache lruCache = Api26Impl.a;
                                    String fontVariationSettings = textView.getFontVariationSettings();
                                    if (!TextUtils.isEmpty(fontVariationSettings)) {
                                        Api26Impl.a(textView, null);
                                    }
                                    textView.setTypeface(typeface2, i9);
                                    if (!TextUtils.isEmpty(fontVariationSettings)) {
                                        Api26Impl.a(textView, fontVariationSettings);
                                    }
                                }
                            }
                        }

                        @Override // androidx.core.content.res.ResourcesCompat.FontCallback
                        public final void b(int i8) {
                        }
                    });
                    if (c != null) {
                        if (this.k != -1) {
                            Typeface create = Typeface.create(c, 0);
                            int i8 = this.k;
                            if ((this.j & 2) != 0) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            this.l = Typeface.create(create, i8, z2);
                        } else {
                            this.l = c;
                        }
                    }
                    if (this.l == null) {
                        z = true;
                    } else {
                        z = false;
                    }
                    this.n = z;
                } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
                }
            }
            if (this.l == null && (string = typedArray.getString(i3)) != null) {
                if (this.k != -1) {
                    Typeface create2 = Typeface.create(string, 0);
                    int i9 = this.k;
                    if ((this.j & 2) != 0) {
                        z3 = true;
                    }
                    this.l = Typeface.create(create2, i9, z3);
                } else {
                    this.l = Typeface.create(string, this.j);
                }
            }
        }
        return true;
    }
}
