package androidx.media3.datasource;

import java.io.IOException;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class DataSourceException extends IOException {
    public final int j;

    public DataSourceException(int i) {
        this.j = i;
    }

    public DataSourceException(Exception exc, int i) {
        super(exc);
        this.j = i;
    }

    public DataSourceException(String str, Exception exc, int i) {
        super(str, exc);
        this.j = i;
    }
}
