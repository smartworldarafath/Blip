package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.R$styleable;
import androidx.core.view.ViewCompat;
import java.lang.reflect.Field;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class AppCompatBackgroundHelper {
    public final View a;
    public final AppCompatDrawableManager b;
    public int c = -1;
    public TintInfo d;
    public TintInfo e;
    public TintInfo f;

    public AppCompatBackgroundHelper(View view) {
        AppCompatDrawableManager appCompatDrawableManager;
        this.a = view;
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
        this.b = appCompatDrawableManager;
    }

    /* JADX WARN: Type inference failed for: r2v4, types: [java.lang.Object, androidx.appcompat.widget.TintInfo] */
    public final void a() {
        View view = this.a;
        Drawable background = view.getBackground();
        if (background != null) {
            if (this.d != null) {
                if (this.f == null) {
                    this.f = new Object();
                }
                TintInfo tintInfo = this.f;
                tintInfo.a = null;
                tintInfo.d = false;
                tintInfo.b = null;
                tintInfo.c = false;
                Field field = ViewCompat.a;
                ColorStateList backgroundTintList = view.getBackgroundTintList();
                if (backgroundTintList != null) {
                    tintInfo.d = true;
                    tintInfo.a = backgroundTintList;
                }
                PorterDuff.Mode backgroundTintMode = view.getBackgroundTintMode();
                if (backgroundTintMode != null) {
                    tintInfo.c = true;
                    tintInfo.b = backgroundTintMode;
                }
                if (tintInfo.d || tintInfo.c) {
                    AppCompatDrawableManager.d(background, tintInfo, view.getDrawableState());
                    return;
                }
            }
            TintInfo tintInfo2 = this.e;
            if (tintInfo2 != null) {
                AppCompatDrawableManager.d(background, tintInfo2, view.getDrawableState());
                return;
            }
            TintInfo tintInfo3 = this.d;
            if (tintInfo3 != null) {
                AppCompatDrawableManager.d(background, tintInfo3, view.getDrawableState());
            }
        }
    }

    public final ColorStateList b() {
        TintInfo tintInfo = this.e;
        if (tintInfo != null) {
            return tintInfo.a;
        }
        return null;
    }

    public final PorterDuff.Mode c() {
        TintInfo tintInfo = this.e;
        if (tintInfo != null) {
            return tintInfo.b;
        }
        return null;
    }

    public final void d(AttributeSet attributeSet, int i) {
        ColorStateList f;
        View view = this.a;
        Context context = view.getContext();
        int[] iArr = R$styleable.t;
        TintTypedArray d = TintTypedArray.d(context, attributeSet, iArr, i);
        TypedArray typedArray = d.b;
        View view2 = this.a;
        ViewCompat.m(view2, view2.getContext(), iArr, attributeSet, d.b, i);
        try {
            if (typedArray.hasValue(0)) {
                this.c = typedArray.getResourceId(0, -1);
                AppCompatDrawableManager appCompatDrawableManager = this.b;
                Context context2 = view.getContext();
                int i2 = this.c;
                synchronized (appCompatDrawableManager) {
                    f = appCompatDrawableManager.a.f(context2, i2);
                }
                if (f != null) {
                    g(f);
                }
            }
            if (typedArray.hasValue(1)) {
                view.setBackgroundTintList(d.a(1));
            }
            if (typedArray.hasValue(2)) {
                view.setBackgroundTintMode(DrawableUtils.b(typedArray.getInt(2, -1), null));
            }
            d.e();
        } catch (Throwable th) {
            d.e();
            throw th;
        }
    }

    public final void e() {
        this.c = -1;
        g(null);
        a();
    }

    public final void f(int i) {
        ColorStateList colorStateList;
        this.c = i;
        AppCompatDrawableManager appCompatDrawableManager = this.b;
        if (appCompatDrawableManager != null) {
            Context context = this.a.getContext();
            synchronized (appCompatDrawableManager) {
                colorStateList = appCompatDrawableManager.a.f(context, i);
            }
        } else {
            colorStateList = null;
        }
        g(colorStateList);
        a();
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, androidx.appcompat.widget.TintInfo] */
    public final void g(ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (this.d == null) {
                this.d = new Object();
            }
            TintInfo tintInfo = this.d;
            tintInfo.a = colorStateList;
            tintInfo.d = true;
        } else {
            this.d = null;
        }
        a();
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, androidx.appcompat.widget.TintInfo] */
    public final void h(ColorStateList colorStateList) {
        if (this.e == null) {
            this.e = new Object();
        }
        TintInfo tintInfo = this.e;
        tintInfo.a = colorStateList;
        tintInfo.d = true;
        a();
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, androidx.appcompat.widget.TintInfo] */
    public final void i(PorterDuff.Mode mode) {
        if (this.e == null) {
            this.e = new Object();
        }
        TintInfo tintInfo = this.e;
        tintInfo.b = mode;
        tintInfo.c = true;
        a();
    }
}
