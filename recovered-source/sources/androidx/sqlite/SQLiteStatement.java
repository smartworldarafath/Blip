package androidx.sqlite;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface SQLiteStatement extends AutoCloseable {
    void T(int i, String str);

    boolean V0();

    byte[] getBlob(int i);

    int getColumnCount();

    String getColumnName(int i);

    long getLong(int i);

    boolean isNull(int i);

    void j(int i, long j);

    void k(int i, byte[] bArr);

    void l(int i);

    String r0(int i);

    void reset();
}
