package net.blip.shared;

import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitKt;
import androidx.compose.ui.unit.TextUnitType;
import defpackage.u2;
import java.util.IdentityHashMap;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class DynamicFontTrackingKt {
    public static final IdentityHashMap a = new IdentityHashMap();

    public static final TextStyle a(TextStyle textStyle) {
        Function1 function1;
        textStyle.getClass();
        SpanStyle spanStyle = textStyle.a;
        FontFamily fontFamily = spanStyle.f;
        long j = spanStyle.h;
        if (fontFamily != null && (function1 = (Function1) a.get(fontFamily)) != null) {
            long j2 = spanStyle.b;
            TextUnitType[] textUnitTypeArr = TextUnit.b;
            long j3 = j & 1095216660480L;
            if (j3 == 0) {
                j = TextUnitKt.d(0);
            } else if (j3 != 4294967296L) {
                long j4 = j2 & 1095216660480L;
                if (j4 != 0) {
                    if (j4 == 4294967296L) {
                        j = TextUnitKt.e(4294967296L, TextUnit.c(j2) * TextUnit.c(j));
                    } else {
                        u2.g("Failed requirement.");
                        return null;
                    }
                } else {
                    u2.g("Failed requirement.");
                    return null;
                }
            }
            long j5 = ((TextUnit) function1.b(new TextUnit(j2))).a;
            if ((j5 & 1095216660480L) == 4294967296L) {
                j = TextUnitKt.e(4294967296L, TextUnit.c(j5) + TextUnit.c(j));
            } else {
                u2.g("Failed requirement.");
                return null;
            }
        }
        return TextStyle.a(textStyle, 0L, 0L, null, j, 0L, null, 0, 16777087);
    }
}
