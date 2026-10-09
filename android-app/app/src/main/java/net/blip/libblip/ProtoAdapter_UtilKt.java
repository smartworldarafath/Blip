package net.blip.libblip;

import com.squareup.wire.ByteArrayProtoReader32;
import com.squareup.wire.ProtoAdapter;
import kotlin.ExceptionsKt;
import okio.Buffer;
import okio.ByteString;
import okio.FileSystem;
import okio.JvmSystemFileSystem;
import okio.Okio;
import okio.Path;
import okio.RealBufferedSource;
import okio.Source;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ProtoAdapter_UtilKt {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v5, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r7v8 */
    /* JADX WARN: Type inference failed for: r7v9 */
    public static final Object a(ProtoAdapter protoAdapter, String str) {
        ?? r7;
        protoAdapter.getClass();
        JvmSystemFileSystem jvmSystemFileSystem = FileSystem.j;
        String str2 = Path.k;
        Path a = Path.Companion.a(str);
        jvmSystemFileSystem.getClass();
        Source d = Okio.d(a.toFile());
        RealBufferedSource realBufferedSource = new RealBufferedSource(d);
        ByteString th = null;
        try {
            Buffer buffer = realBufferedSource.k;
            buffer.a0(d);
            ByteString s = buffer.s(buffer.k);
            try {
                realBufferedSource.close();
            } catch (Throwable th2) {
                th = th2;
            }
            ByteString byteString = th;
            th = s;
            r7 = byteString;
        } catch (Throwable th3) {
            try {
                realBufferedSource.close();
                r7 = th3;
            } catch (Throwable th4) {
                ExceptionsKt.a(th3, th4);
                r7 = th3;
            }
        }
        if (r7 == 0) {
            th.getClass();
            return protoAdapter.b(new ByteArrayProtoReader32(th.e(), th.r()));
        }
        throw r7;
    }
}
