package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.util.Log;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.ResourceManagerInternal;
import androidx.core.graphics.ColorUtils;
import net.blip.android.R;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AppCompatDrawableManager {
    public static final PorterDuff.Mode b = PorterDuff.Mode.SRC_IN;
    public static AppCompatDrawableManager c;
    public ResourceManagerInternal a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: androidx.appcompat.widget.AppCompatDrawableManager$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass1 implements ResourceManagerInternal.ResourceManagerHooks {
        public final int[] a = {2131230802, 2131230800, 2131230726};
        public final int[] b = {2131230750, R.drawable.abc_seekbar_tick_mark_material, R.drawable.abc_ic_menu_share_mtrl_alpha, R.drawable.abc_ic_menu_copy_mtrl_am_alpha, R.drawable.abc_ic_menu_cut_mtrl_alpha, R.drawable.abc_ic_menu_selectall_mtrl_alpha, R.drawable.abc_ic_menu_paste_mtrl_am_alpha};
        public final int[] c = {2131230799, 2131230801, 2131230743, R.drawable.abc_text_cursor_material, 2131230796, 2131230797, 2131230798};
        public final int[] d = {2131230775, R.drawable.abc_cab_background_internal_bg, 2131230774};
        public final int[] e = {R.drawable.abc_tab_indicator_material, R.drawable.abc_textfield_search_material};
        public final int[] f = {R.drawable.abc_btn_check_material, R.drawable.abc_btn_radio_material, R.drawable.abc_btn_check_material_anim, R.drawable.abc_btn_radio_material_anim};

        public static boolean a(int[] iArr, int i) {
            for (int i2 : iArr) {
                if (i2 == i) {
                    return true;
                }
            }
            return false;
        }

        public static ColorStateList b(Context context, int i) {
            int c = ThemeUtils.c(context, R.attr.colorControlHighlight);
            int b = ThemeUtils.b(context, R.attr.colorButtonNormal);
            int[] iArr = ThemeUtils.b;
            int[] iArr2 = ThemeUtils.d;
            int b2 = ColorUtils.b(c, i);
            return new ColorStateList(new int[][]{iArr, iArr2, ThemeUtils.c, ThemeUtils.f}, new int[]{b, b2, ColorUtils.b(c, i), i});
        }

        public static LayerDrawable c(ResourceManagerInternal resourceManagerInternal, Context context, int i) {
            BitmapDrawable bitmapDrawable;
            BitmapDrawable bitmapDrawable2;
            BitmapDrawable bitmapDrawable3;
            int dimensionPixelSize = context.getResources().getDimensionPixelSize(i);
            Drawable c = resourceManagerInternal.c(context, R.drawable.abc_star_black_48dp);
            Drawable c2 = resourceManagerInternal.c(context, R.drawable.abc_star_half_black_48dp);
            if ((c instanceof BitmapDrawable) && c.getIntrinsicWidth() == dimensionPixelSize && c.getIntrinsicHeight() == dimensionPixelSize) {
                bitmapDrawable = (BitmapDrawable) c;
                bitmapDrawable2 = new BitmapDrawable(bitmapDrawable.getBitmap());
            } else {
                Bitmap createBitmap = Bitmap.createBitmap(dimensionPixelSize, dimensionPixelSize, Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(createBitmap);
                c.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize);
                c.draw(canvas);
                bitmapDrawable = new BitmapDrawable(createBitmap);
                bitmapDrawable2 = new BitmapDrawable(createBitmap);
            }
            bitmapDrawable2.setTileModeX(Shader.TileMode.REPEAT);
            if ((c2 instanceof BitmapDrawable) && c2.getIntrinsicWidth() == dimensionPixelSize && c2.getIntrinsicHeight() == dimensionPixelSize) {
                bitmapDrawable3 = (BitmapDrawable) c2;
            } else {
                Bitmap createBitmap2 = Bitmap.createBitmap(dimensionPixelSize, dimensionPixelSize, Bitmap.Config.ARGB_8888);
                Canvas canvas2 = new Canvas(createBitmap2);
                c2.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize);
                c2.draw(canvas2);
                bitmapDrawable3 = new BitmapDrawable(createBitmap2);
            }
            LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{bitmapDrawable, bitmapDrawable3, bitmapDrawable2});
            layerDrawable.setId(0, android.R.id.background);
            layerDrawable.setId(1, android.R.id.secondaryProgress);
            layerDrawable.setId(2, android.R.id.progress);
            return layerDrawable;
        }

        public static void e(Drawable drawable, int i, PorterDuff.Mode mode) {
            Drawable mutate = drawable.mutate();
            if (mode == null) {
                mode = AppCompatDrawableManager.b;
            }
            mutate.setColorFilter(AppCompatDrawableManager.b(i, mode));
        }

        public final ColorStateList d(Context context, int i) {
            if (i == R.drawable.abc_edit_text_material) {
                return AppCompatResources.a(context, R.color.abc_tint_edittext);
            }
            if (i == 2131230792) {
                return AppCompatResources.a(context, R.color.abc_tint_switch_track);
            }
            if (i == R.drawable.abc_switch_thumb_material) {
                int[][] iArr = new int[3];
                int[] iArr2 = new int[3];
                ColorStateList d = ThemeUtils.d(context, R.attr.colorSwitchThumbNormal);
                if (d != null && d.isStateful()) {
                    int[] iArr3 = ThemeUtils.b;
                    iArr[0] = iArr3;
                    iArr2[0] = d.getColorForState(iArr3, 0);
                    iArr[1] = ThemeUtils.e;
                    iArr2[1] = ThemeUtils.c(context, R.attr.colorControlActivated);
                    iArr[2] = ThemeUtils.f;
                    iArr2[2] = d.getDefaultColor();
                } else {
                    iArr[0] = ThemeUtils.b;
                    iArr2[0] = ThemeUtils.b(context, R.attr.colorSwitchThumbNormal);
                    iArr[1] = ThemeUtils.e;
                    iArr2[1] = ThemeUtils.c(context, R.attr.colorControlActivated);
                    iArr[2] = ThemeUtils.f;
                    iArr2[2] = ThemeUtils.c(context, R.attr.colorSwitchThumbNormal);
                }
                return new ColorStateList(iArr, iArr2);
            }
            if (i == R.drawable.abc_btn_default_mtrl_shape) {
                return b(context, ThemeUtils.c(context, R.attr.colorButtonNormal));
            }
            if (i == R.drawable.abc_btn_borderless_material) {
                return b(context, 0);
            }
            if (i == R.drawable.abc_btn_colored_material) {
                return b(context, ThemeUtils.c(context, R.attr.colorAccent));
            }
            if (i != 2131230787 && i != R.drawable.abc_spinner_textfield_background_material) {
                if (a(this.b, i)) {
                    return ThemeUtils.d(context, R.attr.colorControlNormal);
                }
                if (a(this.e, i)) {
                    return AppCompatResources.a(context, R.color.abc_tint_default);
                }
                if (a(this.f, i)) {
                    return AppCompatResources.a(context, R.color.abc_tint_btn_checkable);
                }
                if (i == R.drawable.abc_seekbar_thumb_material) {
                    return AppCompatResources.a(context, R.color.abc_tint_seek_thumb);
                }
                return null;
            }
            return AppCompatResources.a(context, R.color.abc_tint_spinner);
        }
    }

    public static synchronized PorterDuffColorFilter b(int i, PorterDuff.Mode mode) {
        PorterDuffColorFilter e;
        synchronized (AppCompatDrawableManager.class) {
            e = ResourceManagerInternal.e(i, mode);
        }
        return e;
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [androidx.appcompat.widget.AppCompatDrawableManager, java.lang.Object] */
    public static synchronized void c() {
        synchronized (AppCompatDrawableManager.class) {
            if (c == null) {
                ?? obj = new Object();
                c = obj;
                obj.a = ResourceManagerInternal.b();
                ResourceManagerInternal resourceManagerInternal = c.a;
                AnonymousClass1 anonymousClass1 = new AnonymousClass1();
                synchronized (resourceManagerInternal) {
                    resourceManagerInternal.e = anonymousClass1;
                }
            }
        }
    }

    public static void d(Drawable drawable, TintInfo tintInfo, int[] iArr) {
        ColorStateList colorStateList;
        PorterDuff.Mode mode;
        PorterDuff.Mode mode2 = ResourceManagerInternal.f;
        int[] state = drawable.getState();
        if (drawable.mutate() == drawable) {
            if ((drawable instanceof LayerDrawable) && drawable.isStateful()) {
                drawable.setState(new int[0]);
                drawable.setState(state);
            }
            boolean z = tintInfo.d;
            if (!z && !tintInfo.c) {
                drawable.clearColorFilter();
                return;
            }
            PorterDuffColorFilter porterDuffColorFilter = null;
            if (z) {
                colorStateList = tintInfo.a;
            } else {
                colorStateList = null;
            }
            if (tintInfo.c) {
                mode = tintInfo.b;
            } else {
                mode = ResourceManagerInternal.f;
            }
            if (colorStateList != null && mode != null) {
                porterDuffColorFilter = ResourceManagerInternal.e(colorStateList.getColorForState(iArr, 0), mode);
            }
            drawable.setColorFilter(porterDuffColorFilter);
            return;
        }
        Log.d("ResourceManagerInternal", "Mutated drawable is not the same instance as the input.");
    }

    public final synchronized Drawable a(Context context, int i) {
        return this.a.c(context, i);
    }
}
