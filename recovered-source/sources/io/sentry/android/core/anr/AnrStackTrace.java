package io.sentry.android.core.anr;

import io.sentry.util.StringUtils;
import java.io.DataOutputStream;
import java.nio.charset.Charset;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AnrStackTrace implements Comparable<AnrStackTrace> {
    public final StackTraceElement[] j;
    public final long k;

    public AnrStackTrace(long j, StackTraceElement[] stackTraceElementArr) {
        this.k = j;
        this.j = stackTraceElementArr;
    }

    public final void a(DataOutputStream dataOutputStream) {
        boolean z;
        dataOutputStream.writeShort(1);
        dataOutputStream.writeLong(this.k);
        StackTraceElement[] stackTraceElementArr = this.j;
        dataOutputStream.writeInt(stackTraceElementArr.length);
        for (StackTraceElement stackTraceElement : stackTraceElementArr) {
            String className = stackTraceElement.getClassName();
            Charset charset = StringUtils.a;
            String str = "";
            if (className == null) {
                className = "";
            }
            dataOutputStream.writeUTF(className);
            String methodName = stackTraceElement.getMethodName();
            if (methodName == null) {
                methodName = "";
            }
            dataOutputStream.writeUTF(methodName);
            String fileName = stackTraceElement.getFileName();
            if (fileName == null) {
                z = true;
            } else {
                z = false;
            }
            dataOutputStream.writeBoolean(z);
            if (fileName != null) {
                str = fileName;
            }
            dataOutputStream.writeUTF(str);
            dataOutputStream.writeInt(stackTraceElement.getLineNumber());
        }
    }

    @Override // java.lang.Comparable
    public final int compareTo(AnrStackTrace anrStackTrace) {
        return Long.compare(this.k, anrStackTrace.k);
    }
}
