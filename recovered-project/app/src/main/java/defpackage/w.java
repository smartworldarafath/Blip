package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.style.LineBreak;
import androidx.compose.ui.unit.TextUnitKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import net.blip.android.ui.androidtheme.AndroidColors;
import net.blip.android.ui.androidtheme.AndroidColorsKt;
import net.blip.android.ui.androidtheme.AndroidTextStyles;
import net.blip.android.ui.androidtheme.AndroidTextStylesKt;
import net.blip.libblip.User;
import net.blip.shared.AvatarKt;
import net.blip.shared.ParagraphsKt;
import net.blip.shared.PlatformTextKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class w implements Function2 {
    public final /* synthetic */ int j;
    public final /* synthetic */ String k;

    public /* synthetic */ w(String str, int i) {
        this.j = i;
        this.k = str;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        boolean z;
        int i = this.j;
        String str = this.k;
        Unit unit = Unit.a;
        boolean z2 = false;
        switch (i) {
            case 0:
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                if ((intValue & 3) != 2) {
                    z2 = true;
                }
                GapComposer gapComposer = (GapComposer) composer;
                if (gapComposer.N(intValue & 1, z2)) {
                    PlatformTextKt.c(this.k, null, TextStyle.a(((AndroidTextStyles) gapComposer.j(AndroidTextStylesKt.a)).a, 0L, TextUnitKt.d(20), null, 0L, 0L, null, 0, 16777213), 0, false, 0, 0, null, gapComposer, 0, 506);
                } else {
                    gapComposer.Q();
                }
                return unit;
            case 1:
                Composer composer2 = (Composer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                if ((intValue2 & 3) != 2) {
                    z = true;
                } else {
                    z = false;
                }
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (gapComposer2.N(intValue2 & 1, z)) {
                    String str2 = this.k;
                    if (str2 == null) {
                        gapComposer2.W(2079275662);
                        gapComposer2.p(false);
                    } else {
                        gapComposer2.W(2079275663);
                        ParagraphsKt.a(null, null, str2, TextStyle.a(((AndroidTextStyles) gapComposer2.j(AndroidTextStylesKt.a)).b, ((AndroidColors) gapComposer2.j(AndroidColorsKt.a)).e, TextUnitKt.d(16), null, 0L, 0L, null, 0, 16777212), TextUnitKt.d(8), gapComposer2, 24576, 3);
                        gapComposer2.p(false);
                    }
                } else {
                    gapComposer2.Q();
                }
                return unit;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                Composer composer3 = (Composer) obj;
                int intValue3 = ((Integer) obj2).intValue();
                if ((intValue3 & 3) != 2) {
                    z2 = true;
                }
                GapComposer gapComposer3 = (GapComposer) composer3;
                if (gapComposer3.N(intValue3 & 1, z2)) {
                    PlatformTextKt.c("Sign in using your email:\n".concat(str), null, TextStyle.a(((AndroidTextStyles) gapComposer3.j(AndroidTextStylesKt.a)).b, ((AndroidColors) gapComposer3.j(AndroidColorsKt.a)).e, TextUnitKt.d(16), FontWeight.r, 0L, 0L, null, 0, 16777208), 0, false, 0, 0, null, gapComposer3, 0, 506);
                } else {
                    gapComposer3.Q();
                }
                return unit;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                Composer composer4 = (Composer) obj;
                int intValue4 = ((Integer) obj2).intValue();
                if ((intValue4 & 3) != 2) {
                    z2 = true;
                }
                GapComposer gapComposer4 = (GapComposer) composer4;
                if (gapComposer4.N(intValue4 & 1, z2)) {
                    AvatarKt.c(null, null, new User(str, 8187), null, gapComposer4, 0, 11);
                } else {
                    gapComposer4.Q();
                }
                return unit;
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                Composer composer5 = (Composer) obj;
                int intValue5 = ((Integer) obj2).intValue();
                if ((intValue5 & 3) != 2) {
                    z2 = true;
                }
                GapComposer gapComposer5 = (GapComposer) composer5;
                if (gapComposer5.N(intValue5 & 1, z2)) {
                    PlatformTextKt.c(this.k, null, TextStyle.a(((AndroidTextStyles) gapComposer5.j(AndroidTextStylesKt.a)).b, ((AndroidColors) gapComposer5.j(AndroidColorsKt.a)).f, TextUnitKt.d(16), null, 0L, 0L, null, 0, 16777212), 0, false, 0, 0, null, gapComposer5, 0, 506);
                } else {
                    gapComposer5.Q();
                }
                return unit;
            default:
                Composer composer6 = (Composer) obj;
                int intValue6 = ((Integer) obj2).intValue();
                if ((intValue6 & 3) != 2) {
                    z2 = true;
                }
                GapComposer gapComposer6 = (GapComposer) composer6;
                if (gapComposer6.N(intValue6 & 1, z2)) {
                    PlatformTextKt.c(q.i("Delete ", str, "?"), null, TextStyle.a(((AndroidTextStyles) gapComposer6.j(AndroidTextStylesKt.a)).a, 0L, TextUnitKt.d(18), FontWeight.t, 0L, 0L, null, LineBreak.c, 14680057), 0, false, 0, 0, null, gapComposer6, 0, 506);
                } else {
                    gapComposer6.Q();
                }
                return unit;
        }
    }
}
