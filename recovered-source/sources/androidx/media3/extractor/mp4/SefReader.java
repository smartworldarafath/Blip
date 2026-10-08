package androidx.media3.extractor.mp4;

import com.google.common.base.Splitter;
import java.util.ArrayList;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class SefReader {
    public static final Splitter d = Splitter.a(':');
    public static final Splitter e = Splitter.a('*');
    public final ArrayList a = new ArrayList();
    public int b = 0;
    public int c;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class DataReference {
        public final long a;
        public final int b;

        public DataReference(int i, long j) {
            this.a = j;
            this.b = i;
        }
    }
}
