package androidx.media3.extractor.text.webvtt;

import androidx.media3.common.ParserException;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import defpackage.u2;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.regex.Pattern;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class WebvttParserUtil {
    static {
        Pattern.compile("^NOTE([ \t].*)?$");
    }

    public static float a(String str) {
        if (str.endsWith("%")) {
            return Float.parseFloat(str.substring(0, str.length() - 1)) / 100.0f;
        }
        throw new NumberFormatException("Percentages must end with %");
    }

    public static long b(String str) {
        String str2 = Util.a;
        String[] split = str.split("\\.", 2);
        long j = 0;
        for (String str3 : split[0].split(":", -1)) {
            j = (j * 60) + Long.parseLong(str3);
        }
        long j2 = j * 1000;
        if (split.length == 2) {
            String trim = split[1].trim();
            if (trim.length() == 3) {
                j2 += Long.parseLong(trim);
            } else {
                u2.g("Expected 3 decimal places, got: ".concat(trim));
                return 0L;
            }
        }
        return j2 * 1000;
    }

    public static void c(ParsableByteArray parsableByteArray) {
        int i = parsableByteArray.b;
        Charset charset = StandardCharsets.UTF_8;
        String n = parsableByteArray.n(charset);
        if (n != null && n.startsWith("WEBVTT")) {
            return;
        }
        parsableByteArray.M(i);
        throw ParserException.a(null, "Expected WEBVTT. Got " + parsableByteArray.n(charset));
    }
}
