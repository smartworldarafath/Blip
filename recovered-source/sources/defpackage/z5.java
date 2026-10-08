package defpackage;

import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.unit.TextUnitKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.text.StringsKt;
import net.blip.android.ui.androidtheme.AndroidColors;
import net.blip.android.ui.androidtheme.AndroidColorsKt;
import net.blip.android.ui.androidtheme.AndroidTextStyles;
import net.blip.android.ui.androidtheme.AndroidTextStylesKt;
import net.blip.android.ui.navigation.AuthScope;
import net.blip.android.ui.settings.SettingsProfileScreenKt;
import net.blip.android.ui.settings.SettingsScreenKt;
import net.blip.shared.ParagraphsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class z5 implements Function2 {
    public final /* synthetic */ int j;
    public final /* synthetic */ AuthScope k;

    public /* synthetic */ z5(AuthScope authScope, int i) {
        this.j = i;
        this.k = authScope;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        int i = this.j;
        boolean z = false;
        Unit unit = Unit.a;
        AuthScope authScope = this.k;
        switch (i) {
            case 0:
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                if ((intValue & 3) != 2) {
                    z = true;
                }
                GapComposer gapComposer = (GapComposer) composer;
                if (gapComposer.N(intValue & 1, z)) {
                    SettingsScreenKt.a(authScope, gapComposer, 8);
                } else {
                    gapComposer.Q();
                }
                return unit;
            case 1:
                Composer composer2 = (Composer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                if ((intValue2 & 3) != 2) {
                    z = true;
                }
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (gapComposer2.N(intValue2 & 1, z)) {
                    SettingsProfileScreenKt.a(authScope, gapComposer2, 8);
                } else {
                    gapComposer2.Q();
                }
                return unit;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                ((Integer) obj2).getClass();
                SettingsProfileScreenKt.a(authScope, (Composer) obj, RecomposeScopeImplKt.a(9));
                return unit;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                Composer composer3 = (Composer) obj;
                int intValue3 = ((Integer) obj2).intValue();
                if ((intValue3 & 3) != 2) {
                    z = true;
                }
                GapComposer gapComposer3 = (GapComposer) composer3;
                if (gapComposer3.N(intValue3 & 1, z)) {
                    Modifier h = PaddingKt.h(Modifier.Companion.b, 24.0f, 0.0f, 48.0f, 0.0f, 10);
                    String str = authScope.a.n;
                    str.getClass();
                    ParagraphsKt.a(h, null, StringsKt.V("\n                Your avatar, name, and email help others to easily find you on Blip.\n                Other people can’t see your full email address until you’ve chosen to send or receive files with them.\n                If you choose not to be searchable by name, people must enter your exact email address (" + str + ") to send you things.\n            "), TextStyle.a(((AndroidTextStyles) gapComposer3.j(AndroidTextStylesKt.a)).b, ((AndroidColors) gapComposer3.j(AndroidColorsKt.a)).f, TextUnitKt.d(14), FontWeight.q, 0L, 0L, null, 0, 16777208), TextUnitKt.d(10), gapComposer3, 24582, 2);
                } else {
                    gapComposer3.Q();
                }
                return unit;
            default:
                ((Integer) obj2).getClass();
                SettingsScreenKt.a(authScope, (Composer) obj, RecomposeScopeImplKt.a(9));
                return unit;
        }
    }

    public /* synthetic */ z5(AuthScope authScope, int i, int i2) {
        this.j = i2;
        this.k = authScope;
    }
}
