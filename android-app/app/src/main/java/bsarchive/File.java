package bsarchive;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.Syntax;
import defpackage.jb;
import defpackage.q;
import java.util.ArrayList;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import okio.ByteString;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class File extends Message {
    public static final File$Companion$ADAPTER$1 p = new ProtoAdapter(FieldEncoding.m, Reflection.a(File.class), "type.googleapis.com/bsarchive.File", Syntax.l, null, 0);
    public final long m;
    public final long n;
    public final boolean o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public File(long j, long j2, boolean z, ByteString byteString) {
        super(p, byteString);
        byteString.getClass();
        this.m = j;
        this.n = j2;
        this.o = z;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof File)) {
            return false;
        }
        File file = (File) obj;
        if (Intrinsics.a(a(), file.a()) && this.m == file.m && this.n == file.n && this.o == file.o) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i = this.l;
        if (i == 0) {
            int hashCode = Boolean.hashCode(this.o) + jb.a(jb.a(a().hashCode() * 37, 37, this.m), 37, this.n);
            this.l = hashCode;
            return hashCode;
        }
        return i;
    }

    public final String toString() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("size=" + this.m);
        arrayList.add("mod_time_ms=" + this.n);
        q.A("is_executable=", this.o, arrayList);
        return CollectionsKt.y(arrayList, ", ", "File{", "}", null, 56);
    }
}
