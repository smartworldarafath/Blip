package okio;

import java.nio.channels.ReadableByteChannel;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface BufferedSource extends Source, ReadableByteChannel {
    String A0();

    int D0();

    Buffer H();

    boolean J();

    long O0();

    long S0(BufferedSink bufferedSink);

    String U(long j);

    void W0(long j);

    long Y0();

    String p(long j);

    byte readByte();

    int readInt();

    short readShort();

    ByteString s(long j);

    void skip(long j);

    boolean t0(long j);
}
