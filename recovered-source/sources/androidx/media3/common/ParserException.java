package androidx.media3.common;

import defpackage.jb;
import java.io.IOException;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class ParserException extends IOException {
    public final boolean j;
    public final int k;

    public ParserException(String str, Throwable th, boolean z, int i) {
        super(str, th);
        this.j = z;
        this.k = i;
    }

    public static ParserException a(RuntimeException runtimeException, String str) {
        return new ParserException(str, runtimeException, true, 1);
    }

    public static ParserException b(String str) {
        return new ParserException(str, null, false, 1);
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        String str;
        String message = super.getMessage();
        StringBuilder sb = new StringBuilder();
        if (message != null) {
            str = message.concat(" ");
        } else {
            str = "";
        }
        sb.append(str);
        sb.append("{contentIsMalformed=");
        sb.append(this.j);
        sb.append(", dataType=");
        return jb.i(sb, this.k, "}");
    }
}
