package androidx.media3.extractor.mp4;

import androidx.media3.common.Format;
import com.google.common.primitives.ImmutableLongArray;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Track {
    public final int a;
    public final int b;
    public final long c;
    public final long d;
    public final long e;
    public final long f;
    public final Format g;
    public final int h;
    public final ImmutableLongArray i;
    public final ImmutableLongArray j;
    public final int k;
    public final int l;
    public final boolean m;
    public final TrackEncryptionBox[] n;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Builder {
        public int a;
        public int b;
        public long c;
        public long d;
        public long e;
        public long f;
        public Format g;
        public int h;
        public TrackEncryptionBox[] i;
        public int j;
        public ImmutableLongArray k;
        public ImmutableLongArray l;
        public boolean m;
        public int n;
    }

    public Track(Builder builder) {
        this.a = builder.a;
        this.b = builder.b;
        this.c = builder.c;
        this.d = builder.d;
        this.e = builder.e;
        this.f = builder.f;
        Format format = builder.g;
        format.getClass();
        this.g = format;
        this.h = builder.h;
        this.n = builder.i;
        this.k = builder.j;
        this.i = builder.k;
        this.j = builder.l;
        this.m = builder.m;
        this.l = builder.n;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.media3.extractor.mp4.Track$Builder, java.lang.Object] */
    public final Builder a() {
        ?? obj = new Object();
        obj.a = this.a;
        obj.b = this.b;
        obj.c = this.c;
        obj.d = this.d;
        obj.e = this.e;
        obj.f = this.f;
        obj.g = this.g;
        obj.h = this.h;
        obj.i = this.n;
        obj.j = this.k;
        obj.k = this.i;
        obj.l = this.j;
        obj.m = this.m;
        obj.n = this.l;
        return obj;
    }
}
