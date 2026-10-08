package androidx.media3.extractor.text.tx3g;

import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import androidx.media3.common.text.Cue;
import androidx.media3.common.util.Consumer;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.text.CuesWithTiming;
import androidx.media3.extractor.text.SubtitleParser;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import defpackage.jb;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Tx3gParser implements SubtitleParser {
    public final ParsableByteArray a = new ParsableByteArray();
    public final boolean b;
    public final int c;
    public final int d;
    public final String e;
    public final float f;
    public final int g;

    public Tx3gParser(List list) {
        if (list.size() == 1 && (((byte[]) list.get(0)).length == 48 || ((byte[]) list.get(0)).length == 53)) {
            byte[] bArr = (byte[]) list.get(0);
            this.c = bArr[24];
            this.d = ((bArr[26] & 255) << 24) | ((bArr[27] & 255) << 16) | ((bArr[28] & 255) << 8) | (bArr[29] & 255);
            this.e = "Serif".equals(new String(bArr, 43, bArr.length - 43, StandardCharsets.UTF_8)) ? "serif" : "sans-serif";
            int i = bArr[25] * 20;
            this.g = i;
            boolean z = (bArr[0] & 32) != 0;
            this.b = z;
            if (z) {
                this.f = Util.f(((bArr[11] & 255) | ((bArr[10] & 255) << 8)) / i, 0.0f, 0.95f);
                return;
            } else {
                this.f = 0.85f;
                return;
            }
        }
        this.c = 0;
        this.d = -1;
        this.e = "sans-serif";
        this.b = false;
        this.f = 0.85f;
        this.g = -1;
    }

    public static void c(SpannableStringBuilder spannableStringBuilder, int i, int i2, int i3, int i4, int i5) {
        if (i != i2) {
            spannableStringBuilder.setSpan(new ForegroundColorSpan((i >>> 8) | ((i & 255) << 24)), i3, i4, i5 | 33);
        }
    }

    public static void d(SpannableStringBuilder spannableStringBuilder, int i, int i2, int i3, int i4, int i5) {
        boolean z;
        boolean z2;
        if (i != i2) {
            int i6 = i5 | 33;
            boolean z3 = true;
            if ((i & 1) != 0) {
                z = true;
            } else {
                z = false;
            }
            if ((i & 2) != 0) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (z) {
                if (z2) {
                    spannableStringBuilder.setSpan(new StyleSpan(3), i3, i4, i6);
                } else {
                    spannableStringBuilder.setSpan(new StyleSpan(1), i3, i4, i6);
                }
            } else if (z2) {
                spannableStringBuilder.setSpan(new StyleSpan(2), i3, i4, i6);
            }
            if ((i & 4) == 0) {
                z3 = false;
            }
            if (z3) {
                spannableStringBuilder.setSpan(new UnderlineSpan(), i3, i4, i6);
            }
            if (!z3 && !z && !z2) {
                spannableStringBuilder.setSpan(new StyleSpan(0), i3, i4, i6);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.media3.extractor.text.SubtitleParser
    public final void b(byte[] bArr, int i, int i2, Consumer consumer) {
        boolean z;
        String x;
        int i3;
        boolean z2;
        boolean z3;
        boolean z4;
        int i4;
        ParsableByteArray parsableByteArray = this.a;
        parsableByteArray.K(i + i2, bArr);
        parsableByteArray.M(i);
        int i5 = 1;
        int i6 = 0;
        int i7 = 2;
        if (parsableByteArray.a() >= 2) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.e(z);
        int G = parsableByteArray.G();
        if (G == 0) {
            x = "";
        } else {
            int i8 = parsableByteArray.b;
            Charset I = parsableByteArray.I();
            int i9 = G - (parsableByteArray.b - i8);
            if (I == null) {
                I = StandardCharsets.UTF_8;
            }
            x = parsableByteArray.x(i9, I);
        }
        if (x.isEmpty()) {
            consumer.accept(new CuesWithTiming(-9223372036854775807L, -9223372036854775807L, ImmutableList.r()));
            return;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(x);
        d(spannableStringBuilder, this.c, 0, 0, spannableStringBuilder.length(), 16711680);
        c(spannableStringBuilder, this.d, -1, 0, spannableStringBuilder.length(), 16711680);
        int length = spannableStringBuilder.length();
        String str = this.e;
        if (str != "sans-serif") {
            spannableStringBuilder.setSpan(new TypefaceSpan(str), 0, length, 16711713);
        }
        float f = this.f;
        while (parsableByteArray.a() >= 8) {
            int i10 = parsableByteArray.b;
            int m = parsableByteArray.m();
            int m2 = parsableByteArray.m();
            if (m2 == 1937013100) {
                if (parsableByteArray.a() >= i7) {
                    z3 = i5;
                } else {
                    z3 = i6;
                }
                Preconditions.e(z3);
                int G2 = parsableByteArray.G();
                int i11 = i6;
                while (i11 < G2) {
                    if (parsableByteArray.a() >= 12) {
                        z4 = i5;
                    } else {
                        z4 = i6;
                    }
                    Preconditions.e(z4);
                    int G3 = parsableByteArray.G();
                    int G4 = parsableByteArray.G();
                    parsableByteArray.N(i7);
                    int i12 = i11;
                    int z5 = parsableByteArray.z();
                    parsableByteArray.N(i5);
                    int m3 = parsableByteArray.m();
                    if (G4 > spannableStringBuilder.length()) {
                        StringBuilder j = jb.j("Truncating styl end (", G4, ") to cueText.length() (");
                        j.append(spannableStringBuilder.length());
                        j.append(").");
                        Log.f("Tx3gParser", j.toString());
                        G4 = spannableStringBuilder.length();
                    }
                    if (G3 >= G4) {
                        Log.f("Tx3gParser", jb.e("Ignoring styl with start (", G3, ") >= end (", G4, ")."));
                        i4 = i12;
                    } else {
                        i4 = i12;
                        int i13 = G4;
                        d(spannableStringBuilder, z5, this.c, G3, i13, 0);
                        c(spannableStringBuilder, m3, this.d, G3, i13, 0);
                    }
                    i11 = i4 + 1;
                    i5 = 1;
                    i6 = 0;
                    i7 = 2;
                }
                i3 = i7;
            } else if (m2 == 1952608120 && this.b) {
                i3 = 2;
                if (parsableByteArray.a() >= 2) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                Preconditions.e(z2);
                f = Util.f(parsableByteArray.G() / this.g, 0.0f, 0.95f);
            } else {
                i3 = 2;
            }
            parsableByteArray.M(i10 + m);
            i7 = i3;
            i5 = 1;
            i6 = 0;
        }
        Cue.Builder builder = new Cue.Builder();
        builder.a = spannableStringBuilder;
        builder.b = null;
        builder.e = f;
        builder.f = 0;
        builder.g = 0;
        consumer.accept(new CuesWithTiming(-9223372036854775807L, -9223372036854775807L, ImmutableList.t(builder.a())));
    }
}
