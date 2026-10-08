package androidx.compose.ui.text.platform.extensions;

import android.text.Spannable;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.LocaleSpan;
import android.text.style.RelativeSizeSpan;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.text.intl.Locale;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitType;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import kotlin.collections.CollectionsKt;
import kotlin.math.MathKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SpannableExtensions_androidKt {
    public static final float a(long j, float f, Density density) {
        float c;
        long b = TextUnit.b(j);
        if (TextUnitType.a(b, 4294967296L)) {
            if (density.e0() > 1.05d) {
                c = TextUnit.c(j) / TextUnit.c(density.P(f));
            } else {
                return density.I0(j);
            }
        } else if (TextUnitType.a(b, 8589934592L)) {
            c = TextUnit.c(j);
        } else {
            return Float.NaN;
        }
        return c * f;
    }

    public static final void b(Spannable spannable, long j, int i, int i2) {
        if (j != 16) {
            spannable.setSpan(new ForegroundColorSpan(ColorKt.f(j)), i, i2, 33);
        }
    }

    public static final void c(Spannable spannable, long j, Density density, int i, int i2) {
        long b = TextUnit.b(j);
        if (TextUnitType.a(b, 4294967296L)) {
            spannable.setSpan(new AbsoluteSizeSpan(MathKt.b(density.I0(j)), false), i, i2, 33);
        } else if (TextUnitType.a(b, 8589934592L)) {
            spannable.setSpan(new RelativeSizeSpan(TextUnit.c(j)), i, i2, 33);
        }
    }

    public static final void d(Spannable spannable, LocaleList localeList, int i, int i2) {
        if (localeList != null) {
            ArrayList arrayList = new ArrayList(CollectionsKt.m(localeList, 10));
            Iterator it = localeList.j.iterator();
            while (it.hasNext()) {
                arrayList.add(((Locale) it.next()).a);
            }
            java.util.Locale[] localeArr = (java.util.Locale[]) arrayList.toArray(new java.util.Locale[0]);
            spannable.setSpan(new LocaleSpan(new android.os.LocaleList((java.util.Locale[]) Arrays.copyOf(localeArr, localeArr.length))), i, i2, 33);
        }
    }
}
