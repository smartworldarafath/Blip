package kotlinx.io;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Segment {
    public final byte[] a;
    public int b;
    public int c;
    public boolean d;
    public Segment e;
    public Segment f;

    public Segment() {
        this.a = new byte[8192];
        this.d = true;
    }

    public Segment(byte[] bArr) {
        this.a = bArr;
        this.b = 0;
        this.c = 0;
        this.d = false;
    }
}
