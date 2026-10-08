package okio;

import java.nio.channels.WritableByteChannel;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface BufferedSink extends Sink, WritableByteChannel {
    BufferedSink C(long j);

    BufferedSink I(int i);

    BufferedSink M0(ByteString byteString);

    BufferedSink f0(String str);

    @Override // okio.Sink, java.io.Flushable
    void flush();

    BufferedSink q0(long j);

    BufferedSink write(byte[] bArr);

    BufferedSink writeByte(int i);

    BufferedSink writeInt(int i);

    BufferedSink writeShort(int i);
}
