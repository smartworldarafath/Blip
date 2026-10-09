package net.blip.android.ui.androidtheme;

import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.unit.TextUnitKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.k0;
import java.util.Arrays;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function2;
import net.blip.android.R;
import net.blip.android.ui.androidtheme.AndroidAvatarThemeKt;
import net.blip.shared.AvatarTheme;
import net.blip.shared.BrushPainterKt;
import net.blip.shared.LayerPainter;
import net.blip.shared.Paintable;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class AndroidAvatarThemeKt {
    public static final AvatarTheme.Appearance a(long j, final long j2) {
        final int i = 0;
        final int i2 = 1;
        final int i3 = 2;
        final int i4 = 3;
        final int i5 = 4;
        return new AvatarTheme.Appearance(RoundedCornerShapeKt.a, j, new TextStyle(Color.d, TextUnitKt.d(24), FontWeight.u, AndroidTextStylesKt.c, TextUnitKt.b(0.025d), 0, 0L, 0, 16777048), new Paintable(new Function2() { // from class: j0
            @Override // kotlin.jvm.functions.Function2
            public final Object n(Object obj, Object obj2) {
                int i6 = i;
                long j3 = j2;
                Composer composer = (Composer) obj;
                ((Integer) obj2).getClass();
                switch (i6) {
                    case 0:
                        GapComposer gapComposer = (GapComposer) composer;
                        gapComposer.W(-1905335704);
                        LayerPainter b = AndroidAvatarThemeKt.b(j3, PainterResources_androidKt.a(R.drawable.ic_avatar_devicekind_phone_base, gapComposer), PainterResources_androidKt.a(R.drawable.ic_avatar_devicekind_phone_highlight, gapComposer), gapComposer);
                        gapComposer.p(false);
                        return b;
                    case 1:
                        GapComposer gapComposer2 = (GapComposer) composer;
                        gapComposer2.W(1206614057);
                        LayerPainter b2 = AndroidAvatarThemeKt.b(j3, PainterResources_androidKt.a(R.drawable.ic_avatar_devicekind_phone_base, gapComposer2), PainterResources_androidKt.a(R.drawable.ic_avatar_devicekind_phone_highlight, gapComposer2), gapComposer2);
                        gapComposer2.p(false);
                        return b2;
                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                        GapComposer gapComposer3 = (GapComposer) composer;
                        gapComposer3.W(23596522);
                        LayerPainter b3 = AndroidAvatarThemeKt.b(j3, PainterResources_androidKt.a(R.drawable.ic_avatar_devicekind_laptop_base, gapComposer3), PainterResources_androidKt.a(R.drawable.ic_avatar_devicekind_laptop_highlight, gapComposer3), gapComposer3);
                        gapComposer3.p(false);
                        return b3;
                    case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                        GapComposer gapComposer4 = (GapComposer) composer;
                        gapComposer4.W(-1159421013);
                        LayerPainter b4 = AndroidAvatarThemeKt.b(j3, PainterResources_androidKt.a(R.drawable.ic_avatar_devicekind_desktop_base, gapComposer4), PainterResources_androidKt.a(R.drawable.ic_avatar_devicekind_desktop_highlight, gapComposer4), gapComposer4);
                        gapComposer4.p(false);
                        return b4;
                    default:
                        GapComposer gapComposer5 = (GapComposer) composer;
                        gapComposer5.W(1952528748);
                        LayerPainter b5 = AndroidAvatarThemeKt.b(j3, PainterResources_androidKt.a(R.drawable.ic_avatar_devicekind_unknown_base, gapComposer5), PainterResources_androidKt.a(R.drawable.ic_avatar_devicekind_unknown_highlight, gapComposer5), gapComposer5);
                        gapComposer5.p(false);
                        return b5;
                }
            }
        }), new Paintable(new Function2() { // from class: j0
            @Override // kotlin.jvm.functions.Function2
            public final Object n(Object obj, Object obj2) {
                int i6 = i2;
                long j3 = j2;
                Composer composer = (Composer) obj;
                ((Integer) obj2).getClass();
                switch (i6) {
                    case 0:
                        GapComposer gapComposer = (GapComposer) composer;
                        gapComposer.W(-1905335704);
                        LayerPainter b = AndroidAvatarThemeKt.b(j3, PainterResources_androidKt.a(R.drawable.ic_avatar_devicekind_phone_base, gapComposer), PainterResources_androidKt.a(R.drawable.ic_avatar_devicekind_phone_highlight, gapComposer), gapComposer);
                        gapComposer.p(false);
                        return b;
                    case 1:
                        GapComposer gapComposer2 = (GapComposer) composer;
                        gapComposer2.W(1206614057);
                        LayerPainter b2 = AndroidAvatarThemeKt.b(j3, PainterResources_androidKt.a(R.drawable.ic_avatar_devicekind_phone_base, gapComposer2), PainterResources_androidKt.a(R.drawable.ic_avatar_devicekind_phone_highlight, gapComposer2), gapComposer2);
                        gapComposer2.p(false);
                        return b2;
                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                        GapComposer gapComposer3 = (GapComposer) composer;
                        gapComposer3.W(23596522);
                        LayerPainter b3 = AndroidAvatarThemeKt.b(j3, PainterResources_androidKt.a(R.drawable.ic_avatar_devicekind_laptop_base, gapComposer3), PainterResources_androidKt.a(R.drawable.ic_avatar_devicekind_laptop_highlight, gapComposer3), gapComposer3);
                        gapComposer3.p(false);
                        return b3;
                    case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                        GapComposer gapComposer4 = (GapComposer) composer;
                        gapComposer4.W(-1159421013);
                        LayerPainter b4 = AndroidAvatarThemeKt.b(j3, PainterResources_androidKt.a(R.drawable.ic_avatar_devicekind_desktop_base, gapComposer4), PainterResources_androidKt.a(R.drawable.ic_avatar_devicekind_desktop_highlight, gapComposer4), gapComposer4);
                        gapComposer4.p(false);
                        return b4;
                    default:
                        GapComposer gapComposer5 = (GapComposer) composer;
                        gapComposer5.W(1952528748);
                        LayerPainter b5 = AndroidAvatarThemeKt.b(j3, PainterResources_androidKt.a(R.drawable.ic_avatar_devicekind_unknown_base, gapComposer5), PainterResources_androidKt.a(R.drawable.ic_avatar_devicekind_unknown_highlight, gapComposer5), gapComposer5);
                        gapComposer5.p(false);
                        return b5;
                }
            }
        }), new Paintable(new Function2() { // from class: j0
            @Override // kotlin.jvm.functions.Function2
            public final Object n(Object obj, Object obj2) {
                int i6 = i3;
                long j3 = j2;
                Composer composer = (Composer) obj;
                ((Integer) obj2).getClass();
                switch (i6) {
                    case 0:
                        GapComposer gapComposer = (GapComposer) composer;
                        gapComposer.W(-1905335704);
                        LayerPainter b = AndroidAvatarThemeKt.b(j3, PainterResources_androidKt.a(R.drawable.ic_avatar_devicekind_phone_base, gapComposer), PainterResources_androidKt.a(R.drawable.ic_avatar_devicekind_phone_highlight, gapComposer), gapComposer);
                        gapComposer.p(false);
                        return b;
                    case 1:
                        GapComposer gapComposer2 = (GapComposer) composer;
                        gapComposer2.W(1206614057);
                        LayerPainter b2 = AndroidAvatarThemeKt.b(j3, PainterResources_androidKt.a(R.drawable.ic_avatar_devicekind_phone_base, gapComposer2), PainterResources_androidKt.a(R.drawable.ic_avatar_devicekind_phone_highlight, gapComposer2), gapComposer2);
                        gapComposer2.p(false);
                        return b2;
                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                        GapComposer gapComposer3 = (GapComposer) composer;
                        gapComposer3.W(23596522);
                        LayerPainter b3 = AndroidAvatarThemeKt.b(j3, PainterResources_androidKt.a(R.drawable.ic_avatar_devicekind_laptop_base, gapComposer3), PainterResources_androidKt.a(R.drawable.ic_avatar_devicekind_laptop_highlight, gapComposer3), gapComposer3);
                        gapComposer3.p(false);
                        return b3;
                    case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                        GapComposer gapComposer4 = (GapComposer) composer;
                        gapComposer4.W(-1159421013);
                        LayerPainter b4 = AndroidAvatarThemeKt.b(j3, PainterResources_androidKt.a(R.drawable.ic_avatar_devicekind_desktop_base, gapComposer4), PainterResources_androidKt.a(R.drawable.ic_avatar_devicekind_desktop_highlight, gapComposer4), gapComposer4);
                        gapComposer4.p(false);
                        return b4;
                    default:
                        GapComposer gapComposer5 = (GapComposer) composer;
                        gapComposer5.W(1952528748);
                        LayerPainter b5 = AndroidAvatarThemeKt.b(j3, PainterResources_androidKt.a(R.drawable.ic_avatar_devicekind_unknown_base, gapComposer5), PainterResources_androidKt.a(R.drawable.ic_avatar_devicekind_unknown_highlight, gapComposer5), gapComposer5);
                        gapComposer5.p(false);
                        return b5;
                }
            }
        }), new Paintable(new Function2() { // from class: j0
            @Override // kotlin.jvm.functions.Function2
            public final Object n(Object obj, Object obj2) {
                int i6 = i4;
                long j3 = j2;
                Composer composer = (Composer) obj;
                ((Integer) obj2).getClass();
                switch (i6) {
                    case 0:
                        GapComposer gapComposer = (GapComposer) composer;
                        gapComposer.W(-1905335704);
                        LayerPainter b = AndroidAvatarThemeKt.b(j3, PainterResources_androidKt.a(R.drawable.ic_avatar_devicekind_phone_base, gapComposer), PainterResources_androidKt.a(R.drawable.ic_avatar_devicekind_phone_highlight, gapComposer), gapComposer);
                        gapComposer.p(false);
                        return b;
                    case 1:
                        GapComposer gapComposer2 = (GapComposer) composer;
                        gapComposer2.W(1206614057);
                        LayerPainter b2 = AndroidAvatarThemeKt.b(j3, PainterResources_androidKt.a(R.drawable.ic_avatar_devicekind_phone_base, gapComposer2), PainterResources_androidKt.a(R.drawable.ic_avatar_devicekind_phone_highlight, gapComposer2), gapComposer2);
                        gapComposer2.p(false);
                        return b2;
                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                        GapComposer gapComposer3 = (GapComposer) composer;
                        gapComposer3.W(23596522);
                        LayerPainter b3 = AndroidAvatarThemeKt.b(j3, PainterResources_androidKt.a(R.drawable.ic_avatar_devicekind_laptop_base, gapComposer3), PainterResources_androidKt.a(R.drawable.ic_avatar_devicekind_laptop_highlight, gapComposer3), gapComposer3);
                        gapComposer3.p(false);
                        return b3;
                    case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                        GapComposer gapComposer4 = (GapComposer) composer;
                        gapComposer4.W(-1159421013);
                        LayerPainter b4 = AndroidAvatarThemeKt.b(j3, PainterResources_androidKt.a(R.drawable.ic_avatar_devicekind_desktop_base, gapComposer4), PainterResources_androidKt.a(R.drawable.ic_avatar_devicekind_desktop_highlight, gapComposer4), gapComposer4);
                        gapComposer4.p(false);
                        return b4;
                    default:
                        GapComposer gapComposer5 = (GapComposer) composer;
                        gapComposer5.W(1952528748);
                        LayerPainter b5 = AndroidAvatarThemeKt.b(j3, PainterResources_androidKt.a(R.drawable.ic_avatar_devicekind_unknown_base, gapComposer5), PainterResources_androidKt.a(R.drawable.ic_avatar_devicekind_unknown_highlight, gapComposer5), gapComposer5);
                        gapComposer5.p(false);
                        return b5;
                }
            }
        }), new Paintable(new Function2() { // from class: j0
            @Override // kotlin.jvm.functions.Function2
            public final Object n(Object obj, Object obj2) {
                int i6 = i5;
                long j3 = j2;
                Composer composer = (Composer) obj;
                ((Integer) obj2).getClass();
                switch (i6) {
                    case 0:
                        GapComposer gapComposer = (GapComposer) composer;
                        gapComposer.W(-1905335704);
                        LayerPainter b = AndroidAvatarThemeKt.b(j3, PainterResources_androidKt.a(R.drawable.ic_avatar_devicekind_phone_base, gapComposer), PainterResources_androidKt.a(R.drawable.ic_avatar_devicekind_phone_highlight, gapComposer), gapComposer);
                        gapComposer.p(false);
                        return b;
                    case 1:
                        GapComposer gapComposer2 = (GapComposer) composer;
                        gapComposer2.W(1206614057);
                        LayerPainter b2 = AndroidAvatarThemeKt.b(j3, PainterResources_androidKt.a(R.drawable.ic_avatar_devicekind_phone_base, gapComposer2), PainterResources_androidKt.a(R.drawable.ic_avatar_devicekind_phone_highlight, gapComposer2), gapComposer2);
                        gapComposer2.p(false);
                        return b2;
                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                        GapComposer gapComposer3 = (GapComposer) composer;
                        gapComposer3.W(23596522);
                        LayerPainter b3 = AndroidAvatarThemeKt.b(j3, PainterResources_androidKt.a(R.drawable.ic_avatar_devicekind_laptop_base, gapComposer3), PainterResources_androidKt.a(R.drawable.ic_avatar_devicekind_laptop_highlight, gapComposer3), gapComposer3);
                        gapComposer3.p(false);
                        return b3;
                    case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                        GapComposer gapComposer4 = (GapComposer) composer;
                        gapComposer4.W(-1159421013);
                        LayerPainter b4 = AndroidAvatarThemeKt.b(j3, PainterResources_androidKt.a(R.drawable.ic_avatar_devicekind_desktop_base, gapComposer4), PainterResources_androidKt.a(R.drawable.ic_avatar_devicekind_desktop_highlight, gapComposer4), gapComposer4);
                        gapComposer4.p(false);
                        return b4;
                    default:
                        GapComposer gapComposer5 = (GapComposer) composer;
                        gapComposer5.W(1952528748);
                        LayerPainter b5 = AndroidAvatarThemeKt.b(j3, PainterResources_androidKt.a(R.drawable.ic_avatar_devicekind_unknown_base, gapComposer5), PainterResources_androidKt.a(R.drawable.ic_avatar_devicekind_unknown_highlight, gapComposer5), gapComposer5);
                        gapComposer5.p(false);
                        return b5;
                }
            }
        }), new Paintable(new k0(0)));
    }

    public static final LayerPainter b(long j, Painter painter, Painter painter2, Composer composer) {
        Painter[] painterArr = {BrushPainterKt.a(painter, Color.d, composer, 56), BrushPainterKt.a(painter2, j, composer, 8)};
        GapComposer gapComposer = (GapComposer) composer;
        boolean f = gapComposer.f(painterArr);
        Object K = gapComposer.K();
        if (f || K == Composer.Companion.a) {
            Painter[] painterArr2 = (Painter[]) ArraysKt.p(painterArr).toArray(new Painter[0]);
            K = new LayerPainter((Painter[]) Arrays.copyOf(painterArr2, painterArr2.length));
            gapComposer.g0(K);
        }
        return (LayerPainter) K;
    }
}
