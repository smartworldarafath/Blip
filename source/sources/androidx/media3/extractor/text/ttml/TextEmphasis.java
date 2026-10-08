package androidx.media3.extractor.text.ttml;

import com.google.common.collect.ImmutableSet;
import java.util.regex.Pattern;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class TextEmphasis {
    public static final Pattern d = Pattern.compile("\\s+");
    public static final ImmutableSet e = ImmutableSet.l(2, "auto", "none");
    public static final ImmutableSet f = ImmutableSet.l(3, "dot", "sesame", "circle");
    public static final ImmutableSet g = ImmutableSet.l(2, "filled", "open");
    public static final ImmutableSet h = ImmutableSet.l(3, "after", "before", "outside");
    public final int a;
    public final int b;
    public final int c;

    public TextEmphasis(int i, int i2, int i3) {
        this.a = i;
        this.b = i2;
        this.c = i3;
    }
}
