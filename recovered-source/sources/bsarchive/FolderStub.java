package bsarchive;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.Syntax;
import defpackage.jb;
import java.util.ArrayList;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import okio.ByteString;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class FolderStub extends Message {
    public static final FolderStub$Companion$ADAPTER$1 o = new ProtoAdapter(FieldEncoding.m, Reflection.a(FolderStub.class), "type.googleapis.com/bsarchive.FolderStub", Syntax.l, null, 0);
    public final long m;
    public final long n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FolderStub(long j, long j2, ByteString byteString) {
        super(o, byteString);
        byteString.getClass();
        this.m = j;
        this.n = j2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof FolderStub)) {
            return false;
        }
        FolderStub folderStub = (FolderStub) obj;
        if (Intrinsics.a(a(), folderStub.a()) && this.m == folderStub.m && this.n == folderStub.n) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i = this.l;
        if (i == 0) {
            int hashCode = Long.hashCode(this.n) + jb.a(a().hashCode() * 37, 37, this.m);
            this.l = hashCode;
            return hashCode;
        }
        return i;
    }

    public final String toString() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("size=" + this.m);
        arrayList.add("children=" + this.n);
        return CollectionsKt.y(arrayList, ", ", "FolderStub{", "}", null, 56);
    }
}
