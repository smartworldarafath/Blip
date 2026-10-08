package androidx.media3.extractor.metadata;

import androidx.media3.common.Label;
import androidx.media3.common.Metadata;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface Chapter extends Metadata.Entry {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Builder {
        public long a = -9223372036854775807L;
        public long b = -9223372036854775807L;
        public boolean c;
        public Label d;

        public final Chapter a() {
            return new ChapterImpl(this.a, this.b, this.c, this.d);
        }
    }
}
