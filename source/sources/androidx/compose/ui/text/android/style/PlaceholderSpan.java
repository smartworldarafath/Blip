package androidx.compose.ui.text.android.style;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.style.ReplacementSpan;
import androidx.compose.ui.text.internal.InlineClassHelperKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.TextUnitKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.f7;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PlaceholderSpan extends ReplacementSpan {
    public final float j;
    public final int k;
    public final float l;
    public final int m;
    public final float n;
    public final float o;
    public final int p;
    public Paint.FontMetricsInt q;
    public int r;
    public int s;
    public boolean t;

    public PlaceholderSpan(float f, int i, float f2, int i2, Density density, int i3) {
        float f3;
        if (i == 0) {
            f3 = density.I0(TextUnitKt.e(4294967296L, f));
        } else {
            f3 = 0.0f;
        }
        float I0 = i2 == 0 ? density.I0(TextUnitKt.e(4294967296L, f2)) : 0.0f;
        this.j = f;
        this.k = i;
        this.l = f2;
        this.m = i2;
        this.n = f3;
        this.o = I0;
        this.p = i3;
    }

    public final Paint.FontMetricsInt a() {
        Paint.FontMetricsInt fontMetricsInt = this.q;
        if (fontMetricsInt != null) {
            return fontMetricsInt;
        }
        Intrinsics.e("fontMetrics");
        throw null;
    }

    public final int b() {
        if (!this.t) {
            InlineClassHelperKt.c("PlaceholderSpan is not laid out yet.");
        }
        return this.s;
    }

    public final int c() {
        if (!this.t) {
            InlineClassHelperKt.c("PlaceholderSpan is not laid out yet.");
        }
        return this.r;
    }

    @Override // android.text.style.ReplacementSpan
    public final int getSize(Paint paint, CharSequence charSequence, int i, int i2, Paint.FontMetricsInt fontMetricsInt) {
        float f;
        float f2;
        this.t = true;
        float textSize = paint.getTextSize();
        this.q = paint.getFontMetricsInt();
        if (a().descent <= a().ascent) {
            InlineClassHelperKt.a("Invalid fontMetrics: line height can not be negative.");
        }
        int i3 = this.k;
        if (i3 != 0) {
            if (i3 == 1) {
                f = this.j * textSize;
            } else {
                InlineClassHelperKt.b("Unsupported unit.");
                f7.h();
                return 0;
            }
        } else {
            f = this.n;
        }
        this.r = (int) Math.ceil(f);
        int i4 = this.m;
        if (i4 != 0) {
            if (i4 == 1) {
                f2 = this.l * textSize;
            } else {
                InlineClassHelperKt.b("Unsupported unit.");
                f7.h();
                return 0;
            }
        } else {
            f2 = this.o;
        }
        this.s = (int) Math.ceil(f2);
        if (fontMetricsInt != null) {
            fontMetricsInt.ascent = a().ascent;
            fontMetricsInt.descent = a().descent;
            fontMetricsInt.leading = a().leading;
            switch (this.p) {
                case 0:
                    if (fontMetricsInt.ascent > (-b())) {
                        fontMetricsInt.ascent = -b();
                        break;
                    }
                    break;
                case 1:
                case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                    if (b() + fontMetricsInt.ascent > fontMetricsInt.descent) {
                        fontMetricsInt.descent = b() + fontMetricsInt.ascent;
                        break;
                    }
                    break;
                case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                    if (fontMetricsInt.ascent > fontMetricsInt.descent - b()) {
                        fontMetricsInt.ascent = fontMetricsInt.descent - b();
                        break;
                    }
                    break;
                case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                    if (fontMetricsInt.descent - fontMetricsInt.ascent < b()) {
                        int b = fontMetricsInt.ascent - ((b() - (fontMetricsInt.descent - fontMetricsInt.ascent)) / 2);
                        fontMetricsInt.ascent = b;
                        fontMetricsInt.descent = b() + b;
                        break;
                    }
                    break;
                default:
                    InlineClassHelperKt.a("Unknown verticalAlign.");
                    break;
            }
            fontMetricsInt.top = Math.min(a().top, fontMetricsInt.ascent);
            fontMetricsInt.bottom = Math.max(a().bottom, fontMetricsInt.descent);
        }
        return c();
    }

    @Override // android.text.style.ReplacementSpan
    public final void draw(Canvas canvas, CharSequence charSequence, int i, int i2, float f, int i3, int i4, int i5, Paint paint) {
    }
}
