package androidx.emoji2.text.flatbuffer;

import java.nio.ByteBuffer;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class Table {
    public int a;
    public ByteBuffer b;
    public int c;
    public int d;

    /* JADX WARN: Type inference failed for: r0v2, types: [androidx.emoji2.text.flatbuffer.Utf8Safe, java.lang.Object] */
    public Table() {
        if (Utf8.a == null) {
            Utf8.a = new Object();
        }
    }

    public final int a(int i) {
        if (i < this.d) {
            return this.b.getShort(this.c + i);
        }
        return 0;
    }
}
