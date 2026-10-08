package defpackage;

import androidx.compose.foundation.text.AutofillHighlightKt;
import androidx.compose.foundation.text.BasicText_androidKt;
import androidx.compose.foundation.text.KeyModifiers;
import androidx.compose.material.Colors;
import androidx.compose.material.ColorsKt;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.tooling.CompositionErrorContextKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.viewinterop.AndroidViewHolder;
import androidx.compose.ui.window.AndroidPopup_androidKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.UUID;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.random.Random;
import net.blip.android.ui.androidtheme.AndroidColorsKt;
import net.blip.android.ui.androidtheme.AndroidTextStylesKt;
import net.blip.libblip.Logger;
import net.blip.libblip.LoggerKt;
import net.blip.shared.AvatarKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class n implements Function0 {
    public final /* synthetic */ int j;

    public /* synthetic */ n(int i) {
        this.j = i;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object a() {
        int i = this.j;
        Unit unit = Unit.a;
        switch (i) {
            case 0:
                Random.Default r0 = Random.j;
                return Integer.valueOf(Random.k.c().nextInt(2147418112) + 65536);
            case 1:
                return UUID.randomUUID().toString();
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = AndroidColorsKt.a;
                LoggerKt.a.getClass();
                Logger.j("CompositionLocal LocalAndroidColors not present", new Pair[0]);
                throw null;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                AndroidCompositionLocals_androidKt.a("LocalConfiguration");
                throw null;
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                AndroidCompositionLocals_androidKt.a("LocalContext");
                throw null;
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                AndroidCompositionLocals_androidKt.a("LocalImageVectorCache");
                throw null;
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                AndroidCompositionLocals_androidKt.a("LocalResourceIdCache");
                throw null;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                AndroidCompositionLocals_androidKt.a("LocalView");
                throw null;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                return UUID.randomUUID();
            case KeyModifiers.a /* 9 */:
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal2 = AndroidPopup_androidKt.a;
                return "DEFAULT_TEST_TAG";
            case KeyModifiers.b /* 10 */:
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal3 = AndroidPopup_androidKt.a;
                return Boolean.FALSE;
            case 11:
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal4 = AndroidPopup_androidKt.a;
                return UUID.randomUUID();
            case KeyModifiers.c /* 12 */:
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal5 = AndroidTextStylesKt.a;
                LoggerKt.a.getClass();
                Logger.j("CompositionLocal LocalAndroidTextStyles not present", new Pair[0]);
                throw null;
            case 13:
                h hVar = AndroidViewHolder.J;
                return unit;
            case 14:
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal6 = AutofillHighlightKt.a;
                return new SolidColor(ColorKt.b(1308617531));
            case 15:
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal7 = AvatarKt.a;
                LoggerKt.a.getClass();
                Logger.j("Missing compositionLocal for LocalAvatarTheme", new Pair[0]);
                throw null;
            case 16:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = BasicText_androidKt.a;
                return null;
            case 17:
                String format = new SimpleDateFormat("yyyyMMdd_HHmmss", Locale.getDefault()).format(new Date());
                format.getClass();
                return "IMG-".concat(format);
            case 18:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal2 = ColorsKt.a;
                long c = ColorKt.c(4284612846L);
                long c2 = ColorKt.c(4281794739L);
                long c3 = ColorKt.c(4278442694L);
                long c4 = ColorKt.c(4278290310L);
                long j = Color.d;
                long c5 = ColorKt.c(4289724448L);
                long j2 = Color.b;
                return new Colors(c, c2, c3, c4, j, j, c5, j, j2, j2, j2, j, true);
            case 19:
                return unit;
            case 20:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal3 = CompositionErrorContextKt.a;
                return null;
            case 21:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal4 = CompositionLocalsKt.a;
                return null;
            case 22:
                CompositionLocalsKt.b("LocalWindowInfo");
                throw null;
            case 23:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal5 = CompositionLocalsKt.a;
                return new Object();
            case 24:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal6 = CompositionLocalsKt.a;
                return Boolean.FALSE;
            case 25:
                StaticProvidableCompositionLocal staticProvidableCompositionLocal7 = CompositionLocalsKt.a;
                return Boolean.TRUE;
            case 26:
                CompositionLocalsKt.b("LocalAutofillTree");
                throw null;
            case 27:
                CompositionLocalsKt.b("LocalAutofillManager");
                throw null;
            case 28:
                CompositionLocalsKt.b("LocalClipboardManager");
                throw null;
            default:
                CompositionLocalsKt.b("LocalClipboard");
                throw null;
        }
    }
}
