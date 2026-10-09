package androidx.media3.extractor.text.webvtt;

import androidx.media3.common.text.Cue;
import androidx.media3.common.util.Consumer;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.text.CuesWithTiming;
import androidx.media3.extractor.text.SubtitleParser;
import androidx.media3.extractor.text.webvtt.WebvttCueParser;
import com.google.common.base.Preconditions;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.regex.Pattern;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Mp4WebvttParser implements SubtitleParser {
    public final ParsableByteArray a = new ParsableByteArray();

    @Override // androidx.media3.extractor.text.SubtitleParser
    public final void b(byte[] bArr, int i, int i2, Consumer consumer) {
        boolean z;
        Cue a;
        boolean z2;
        ParsableByteArray parsableByteArray = this.a;
        parsableByteArray.K(i2 + i, bArr);
        parsableByteArray.M(i);
        ArrayList arrayList = new ArrayList();
        while (parsableByteArray.a() > 0) {
            if (parsableByteArray.a() >= 8) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.d("Incomplete Mp4Webvtt Top Level box header found.", z);
            int m = parsableByteArray.m();
            if (parsableByteArray.m() == 1987343459) {
                int i3 = m - 8;
                CharSequence charSequence = null;
                Cue.Builder builder = null;
                while (i3 > 0) {
                    if (i3 >= 8) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    Preconditions.d("Incomplete vtt cue box header found.", z2);
                    int m2 = parsableByteArray.m();
                    int m3 = parsableByteArray.m();
                    int i4 = m2 - 8;
                    byte[] bArr2 = parsableByteArray.a;
                    int i5 = parsableByteArray.b;
                    String str = Util.a;
                    String str2 = new String(bArr2, i5, i4, StandardCharsets.UTF_8);
                    parsableByteArray.N(i4);
                    i3 = (i3 - 8) - i4;
                    if (m3 == 1937011815) {
                        WebvttCueParser.WebvttCueInfoBuilder webvttCueInfoBuilder = new WebvttCueParser.WebvttCueInfoBuilder();
                        WebvttCueParser.e(str2, webvttCueInfoBuilder);
                        builder = webvttCueInfoBuilder.a();
                    } else if (m3 == 1885436268) {
                        charSequence = WebvttCueParser.f(null, str2.trim(), Collections.EMPTY_LIST);
                    }
                }
                if (charSequence == null) {
                    charSequence = "";
                }
                if (builder != null) {
                    builder.a = charSequence;
                    builder.b = null;
                    a = builder.a();
                } else {
                    Pattern pattern = WebvttCueParser.a;
                    WebvttCueParser.WebvttCueInfoBuilder webvttCueInfoBuilder2 = new WebvttCueParser.WebvttCueInfoBuilder();
                    webvttCueInfoBuilder2.c = charSequence;
                    a = webvttCueInfoBuilder2.a().a();
                }
                arrayList.add(a);
            } else {
                parsableByteArray.N(m - 8);
            }
        }
        consumer.accept(new CuesWithTiming(-9223372036854775807L, -9223372036854775807L, arrayList));
    }
}
