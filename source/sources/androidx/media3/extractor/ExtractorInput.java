package androidx.media3.extractor;

import androidx.media3.common.DataReader;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface ExtractorInput extends DataReader {
    boolean a(byte[] bArr, int i, int i2, boolean z);

    boolean c(int i, boolean z);

    boolean d(byte[] bArr, int i, int i2, boolean z);

    long e();

    void f(int i);

    long g();

    long getPosition();

    int h(byte[] bArr, int i, int i2);

    void j();

    void k(int i);

    void n(byte[] bArr, int i, int i2);

    int o();

    void readFully(byte[] bArr, int i, int i2);
}
