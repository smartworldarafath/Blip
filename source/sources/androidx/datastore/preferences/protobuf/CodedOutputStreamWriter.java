package androidx.datastore.preferences.protobuf;

import java.nio.charset.Charset;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class CodedOutputStreamWriter implements Writer {
    public final CodedOutputStream a;

    public CodedOutputStreamWriter(CodedOutputStream codedOutputStream) {
        Charset charset = Internal.a;
        this.a = codedOutputStream;
        codedOutputStream.a = this;
    }

    public final void a(int i, Object obj, Schema schema) {
        CodedOutputStream codedOutputStream = this.a;
        codedOutputStream.v(i, 3);
        schema.f((MessageLite) obj, codedOutputStream.a);
        codedOutputStream.v(i, 4);
    }
}
