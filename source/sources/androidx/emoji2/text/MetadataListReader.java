package androidx.emoji2.text;

import androidx.emoji2.text.flatbuffer.MetadataList;
import androidx.emoji2.text.flatbuffer.Table;
import defpackage.k8;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.MappedByteBuffer;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
abstract class MetadataListReader {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class ByteBufferReader {
        public final ByteBuffer a;

        public ByteBufferReader(ByteBuffer byteBuffer) {
            this.a = byteBuffer;
            byteBuffer.order(ByteOrder.BIG_ENDIAN);
        }

        public final void a(int i) {
            ByteBuffer byteBuffer = this.a;
            byteBuffer.position(byteBuffer.position() + i);
        }
    }

    /* JADX WARN: Type inference failed for: r1v5, types: [androidx.emoji2.text.flatbuffer.MetadataList, androidx.emoji2.text.flatbuffer.Table] */
    public static MetadataList a(MappedByteBuffer mappedByteBuffer) {
        ByteBuffer byteBuffer;
        long j;
        ByteBuffer duplicate = mappedByteBuffer.duplicate();
        ByteBufferReader byteBufferReader = new ByteBufferReader(duplicate);
        int i = 4;
        byteBufferReader.a(4);
        int i2 = duplicate.getShort() & 65535;
        if (i2 <= 100) {
            byteBufferReader.a(6);
            int i3 = 0;
            while (true) {
                byteBuffer = byteBufferReader.a;
                if (i3 < i2) {
                    int i4 = duplicate.getInt();
                    byteBufferReader.a(i);
                    j = byteBuffer.getInt() & 4294967295L;
                    byteBufferReader.a(i);
                    if (1835365473 == i4) {
                        break;
                    }
                    i3++;
                    i = 4;
                } else {
                    j = -1;
                    break;
                }
            }
            if (j != -1) {
                byteBufferReader.a((int) (j - duplicate.position()));
                byteBufferReader.a(12);
                long j2 = byteBuffer.getInt() & 4294967295L;
                for (int i5 = 0; i5 < j2; i5++) {
                    int i6 = duplicate.getInt();
                    long j3 = byteBuffer.getInt() & 4294967295L;
                    byteBuffer.getInt();
                    if (1164798569 == i6 || 1701669481 == i6) {
                        duplicate.position((int) (j3 + j));
                        ?? table = new Table();
                        duplicate.order(ByteOrder.LITTLE_ENDIAN);
                        int position = duplicate.position() + duplicate.getInt(duplicate.position());
                        table.b = duplicate;
                        table.a = position;
                        int i7 = position - duplicate.getInt(position);
                        table.c = i7;
                        table.d = table.b.getShort(i7);
                        return table;
                    }
                }
            }
            k8.j("Cannot read metadata.");
            return null;
        }
        k8.j("Cannot read metadata.");
        return null;
    }
}
