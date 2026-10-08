package androidx.media3.extractor.text;

import androidx.media3.common.Format;
import androidx.media3.common.util.Consumer;
import com.google.common.collect.ImmutableList;
import defpackage.p;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface SubtitleParser {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface Factory {
        public static final Factory a = new Object();

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* renamed from: androidx.media3.extractor.text.SubtitleParser$Factory$1, reason: invalid class name */
        /* loaded from: classes.dex */
        public class AnonymousClass1 implements Factory {
            @Override // androidx.media3.extractor.text.SubtitleParser.Factory
            public final int a(Format format) {
                return 1;
            }

            @Override // androidx.media3.extractor.text.SubtitleParser.Factory
            public final SubtitleParser b(Format format) {
                throw new IllegalStateException("This SubtitleParser.Factory doesn't support any formats.");
            }

            @Override // androidx.media3.extractor.text.SubtitleParser.Factory
            public final boolean f(Format format) {
                return false;
            }
        }

        int a(Format format);

        SubtitleParser b(Format format);

        boolean f(Format format);
    }

    default Subtitle a(byte[] bArr, int i, int i2) {
        ImmutableList.Builder k = ImmutableList.k();
        b(bArr, 0, i2, new p(18, k));
        return new CuesWithTimingSubtitle(k.i());
    }

    void b(byte[] bArr, int i, int i2, Consumer consumer);

    default void reset() {
    }
}
