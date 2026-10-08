package androidx.media3.extractor.jpeg;

import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class MotionPhotoDescription {
    public final long a;
    public final List b;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class ContainerItem {
        public final String a;
        public final long b;
        public final long c;

        public ContainerItem(long j, long j2, String str) {
            this.a = str;
            this.b = j;
            this.c = j2;
        }
    }

    public MotionPhotoDescription(long j, List list) {
        this.a = j;
        this.b = list;
    }
}
