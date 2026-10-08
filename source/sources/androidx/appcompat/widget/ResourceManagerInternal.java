package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.util.TypedValue;
import androidx.appcompat.widget.AppCompatDrawableManager;
import androidx.collection.LongSparseArray;
import androidx.collection.LruCache;
import androidx.collection.SparseArrayCompat;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
import net.blip.android.R;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ResourceManagerInternal {
    public static ResourceManagerInternal g;
    public WeakHashMap a;
    public final WeakHashMap b = new WeakHashMap(0);
    public TypedValue c;
    public boolean d;
    public ResourceManagerHooks e;
    public static final PorterDuff.Mode f = PorterDuff.Mode.SRC_IN;
    public static final ColorFilterLruCache h = new LruCache(6);

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class ColorFilterLruCache extends LruCache<Integer, PorterDuffColorFilter> {
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface ResourceManagerHooks {
    }

    public static synchronized ResourceManagerInternal b() {
        ResourceManagerInternal resourceManagerInternal;
        synchronized (ResourceManagerInternal.class) {
            try {
                if (g == null) {
                    g = new ResourceManagerInternal();
                }
                resourceManagerInternal = g;
            } catch (Throwable th) {
                throw th;
            }
        }
        return resourceManagerInternal;
    }

    public static synchronized PorterDuffColorFilter e(int i, PorterDuff.Mode mode) {
        PorterDuffColorFilter porterDuffColorFilter;
        synchronized (ResourceManagerInternal.class) {
            ColorFilterLruCache colorFilterLruCache = h;
            colorFilterLruCache.getClass();
            int i2 = (31 + i) * 31;
            porterDuffColorFilter = (PorterDuffColorFilter) colorFilterLruCache.a(Integer.valueOf(mode.hashCode() + i2));
            if (porterDuffColorFilter == null) {
                porterDuffColorFilter = new PorterDuffColorFilter(i, mode);
            }
        }
        return porterDuffColorFilter;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00cf A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Drawable a(Context context, int i) {
        Drawable newDrawable;
        LayerDrawable c;
        if (this.c == null) {
            this.c = new TypedValue();
        }
        TypedValue typedValue = this.c;
        context.getResources().getValue(i, typedValue, true);
        long j = (typedValue.assetCookie << 32) | typedValue.data;
        synchronized (this) {
            LongSparseArray longSparseArray = (LongSparseArray) this.b.get(context);
            if (longSparseArray != null) {
                WeakReference weakReference = (WeakReference) longSparseArray.b(j);
                if (weakReference != null) {
                    Drawable.ConstantState constantState = (Drawable.ConstantState) weakReference.get();
                    if (constantState != null) {
                        newDrawable = constantState.newDrawable(context.getResources());
                    } else {
                        longSparseArray.e(j);
                    }
                }
            }
            newDrawable = null;
        }
        if (newDrawable != null) {
            return newDrawable;
        }
        if (this.e != null) {
            if (i == R.drawable.abc_cab_background_top_material) {
                c = new LayerDrawable(new Drawable[]{c(context, R.drawable.abc_cab_background_internal_bg), c(context, 2131230743)});
            } else if (i == R.drawable.abc_ratingbar_material) {
                c = AppCompatDrawableManager.AnonymousClass1.c(this, context, R.dimen.abc_star_big);
            } else if (i == R.drawable.abc_ratingbar_indicator_material) {
                c = AppCompatDrawableManager.AnonymousClass1.c(this, context, R.dimen.abc_star_medium);
            } else if (i == R.drawable.abc_ratingbar_small_material) {
                c = AppCompatDrawableManager.AnonymousClass1.c(this, context, R.dimen.abc_star_small);
            }
            if (c == null) {
                c.setChangingConfigurations(typedValue.changingConfigurations);
                synchronized (this) {
                    try {
                        Drawable.ConstantState constantState2 = c.getConstantState();
                        if (constantState2 != null) {
                            LongSparseArray longSparseArray2 = (LongSparseArray) this.b.get(context);
                            if (longSparseArray2 == null) {
                                longSparseArray2 = new LongSparseArray((Object) null);
                                this.b.put(context, longSparseArray2);
                            }
                            longSparseArray2.d(j, new WeakReference(constantState2));
                            return c;
                        }
                        return c;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            return c;
        }
        c = null;
        if (c == null) {
        }
    }

    public final synchronized Drawable c(Context context, int i) {
        return d(context, i);
    }

    public final synchronized Drawable d(Context context, int i) {
        Drawable a;
        try {
            if (!this.d) {
                this.d = true;
                Drawable c = c(context, R.drawable.abc_vector_test);
                if (c == null || !"android.graphics.drawable.VectorDrawable".equals(c.getClass().getName())) {
                    this.d = false;
                    throw new IllegalStateException("This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat.");
                }
            }
            a = a(context, i);
            if (a == null) {
                a = context.getDrawable(i);
            }
            if (a != null) {
                a = g(context, i, a);
            }
            if (a != null) {
                DrawableUtils.a(a);
            }
        } catch (Throwable th) {
            throw th;
        }
        return a;
    }

    public final synchronized ColorStateList f(Context context, int i) {
        ColorStateList colorStateList;
        SparseArrayCompat sparseArrayCompat;
        WeakHashMap weakHashMap = this.a;
        ColorStateList colorStateList2 = null;
        if (weakHashMap != null && (sparseArrayCompat = (SparseArrayCompat) weakHashMap.get(context)) != null) {
            colorStateList = (ColorStateList) sparseArrayCompat.c(i);
        } else {
            colorStateList = null;
        }
        if (colorStateList == null) {
            ResourceManagerHooks resourceManagerHooks = this.e;
            if (resourceManagerHooks != null) {
                colorStateList2 = ((AppCompatDrawableManager.AnonymousClass1) resourceManagerHooks).d(context, i);
            }
            if (colorStateList2 != null) {
                if (this.a == null) {
                    this.a = new WeakHashMap();
                }
                SparseArrayCompat sparseArrayCompat2 = (SparseArrayCompat) this.a.get(context);
                if (sparseArrayCompat2 == null) {
                    sparseArrayCompat2 = new SparseArrayCompat(0);
                    this.a.put(context, sparseArrayCompat2);
                }
                sparseArrayCompat2.a(i, colorStateList2);
            }
            colorStateList = colorStateList2;
        }
        return colorStateList;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00d9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Drawable g(Context context, int i, Drawable drawable) {
        int round;
        ColorStateList f2 = f(context, i);
        if (f2 != null) {
            Drawable mutate = drawable.mutate();
            mutate.setTintList(f2);
            PorterDuff.Mode mode = null;
            if (this.e != null && i == R.drawable.abc_switch_thumb_material) {
                mode = PorterDuff.Mode.MULTIPLY;
            }
            if (mode != null) {
                mutate.setTintMode(mode);
            }
            return mutate;
        }
        ResourceManagerHooks resourceManagerHooks = this.e;
        int i2 = R.attr.colorControlNormal;
        if (resourceManagerHooks != null) {
            if (i == R.drawable.abc_seekbar_track_material) {
                LayerDrawable layerDrawable = (LayerDrawable) drawable;
                Drawable findDrawableByLayerId = layerDrawable.findDrawableByLayerId(android.R.id.background);
                int c = ThemeUtils.c(context, R.attr.colorControlNormal);
                PorterDuff.Mode mode2 = AppCompatDrawableManager.b;
                AppCompatDrawableManager.AnonymousClass1.e(findDrawableByLayerId, c, mode2);
                AppCompatDrawableManager.AnonymousClass1.e(layerDrawable.findDrawableByLayerId(android.R.id.secondaryProgress), ThemeUtils.c(context, R.attr.colorControlNormal), mode2);
                AppCompatDrawableManager.AnonymousClass1.e(layerDrawable.findDrawableByLayerId(android.R.id.progress), ThemeUtils.c(context, R.attr.colorControlActivated), mode2);
                return drawable;
            }
            if (i == R.drawable.abc_ratingbar_material || i == R.drawable.abc_ratingbar_indicator_material || i == R.drawable.abc_ratingbar_small_material) {
                LayerDrawable layerDrawable2 = (LayerDrawable) drawable;
                Drawable findDrawableByLayerId2 = layerDrawable2.findDrawableByLayerId(android.R.id.background);
                int b = ThemeUtils.b(context, R.attr.colorControlNormal);
                PorterDuff.Mode mode3 = AppCompatDrawableManager.b;
                AppCompatDrawableManager.AnonymousClass1.e(findDrawableByLayerId2, b, mode3);
                AppCompatDrawableManager.AnonymousClass1.e(layerDrawable2.findDrawableByLayerId(android.R.id.secondaryProgress), ThemeUtils.c(context, R.attr.colorControlActivated), mode3);
                AppCompatDrawableManager.AnonymousClass1.e(layerDrawable2.findDrawableByLayerId(android.R.id.progress), ThemeUtils.c(context, R.attr.colorControlActivated), mode3);
                return drawable;
            }
        }
        if (resourceManagerHooks != null) {
            AppCompatDrawableManager.AnonymousClass1 anonymousClass1 = (AppCompatDrawableManager.AnonymousClass1) resourceManagerHooks;
            PorterDuff.Mode mode4 = AppCompatDrawableManager.b;
            boolean z = true;
            if (!AppCompatDrawableManager.AnonymousClass1.a(anonymousClass1.a, i)) {
                if (AppCompatDrawableManager.AnonymousClass1.a(anonymousClass1.c, i)) {
                    i2 = R.attr.colorControlActivated;
                } else {
                    boolean a = AppCompatDrawableManager.AnonymousClass1.a(anonymousClass1.d, i);
                    i2 = android.R.attr.colorBackground;
                    if (a) {
                        mode4 = PorterDuff.Mode.MULTIPLY;
                    } else if (i == 2131230763) {
                        round = Math.round(40.8f);
                        i2 = android.R.attr.colorForeground;
                        if (z) {
                            Drawable mutate2 = drawable.mutate();
                            mutate2.setColorFilter(AppCompatDrawableManager.b(ThemeUtils.c(context, i2), mode4));
                            if (round != -1) {
                                mutate2.setAlpha(round);
                            }
                        }
                    } else if (i != R.drawable.abc_dialog_material_background) {
                        i2 = 0;
                        z = false;
                    }
                }
            }
            round = -1;
            if (z) {
            }
        }
        return drawable;
    }
}
