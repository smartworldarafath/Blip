package bsarchive;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.Syntax;
import defpackage.u2;
import java.util.ArrayList;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import okio.ByteString;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AnyItem extends Message {
    public static final AnyItem$Companion$ADAPTER$1 q = new ProtoAdapter(FieldEncoding.m, Reflection.a(AnyItem.class), "type.googleapis.com/bsarchive.AnyItem", Syntax.l, null, 0);
    public final File m;
    public final Folder n;
    public final Link o;
    public final FolderStub p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AnyItem(File file, Folder folder, Link link, FolderStub folderStub, ByteString byteString) {
        super(q, byteString);
        int i;
        byteString.getClass();
        this.m = file;
        this.n = folder;
        this.o = link;
        this.p = folderStub;
        if (file != null) {
            i = 1;
        } else {
            i = 0;
        }
        i = folder != null ? i + 1 : i;
        i = link != null ? i + 1 : i;
        if ((folderStub != null ? i + 1 : i) <= 1) {
            return;
        }
        u2.g("At most one of file, folder, link, folder_stub may be non-null");
        throw null;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AnyItem)) {
            return false;
        }
        AnyItem anyItem = (AnyItem) obj;
        if (Intrinsics.a(a(), anyItem.a()) && Intrinsics.a(this.m, anyItem.m) && Intrinsics.a(this.n, anyItem.n) && Intrinsics.a(this.o, anyItem.o) && Intrinsics.a(this.p, anyItem.p)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i;
        int i2;
        int i3;
        int i4 = this.l;
        if (i4 == 0) {
            int hashCode = a().hashCode() * 37;
            int i5 = 0;
            File file = this.m;
            if (file != null) {
                i = file.hashCode();
            } else {
                i = 0;
            }
            int i6 = (hashCode + i) * 37;
            Folder folder = this.n;
            if (folder != null) {
                i2 = folder.hashCode();
            } else {
                i2 = 0;
            }
            int i7 = (i6 + i2) * 37;
            Link link = this.o;
            if (link != null) {
                i3 = link.hashCode();
            } else {
                i3 = 0;
            }
            int i8 = (i7 + i3) * 37;
            FolderStub folderStub = this.p;
            if (folderStub != null) {
                i5 = folderStub.hashCode();
            }
            int i9 = i8 + i5;
            this.l = i9;
            return i9;
        }
        return i4;
    }

    public final String toString() {
        ArrayList arrayList = new ArrayList();
        File file = this.m;
        if (file != null) {
            arrayList.add("file=" + file);
        }
        Folder folder = this.n;
        if (folder != null) {
            arrayList.add("folder=" + folder);
        }
        Link link = this.o;
        if (link != null) {
            arrayList.add("link=" + link);
        }
        FolderStub folderStub = this.p;
        if (folderStub != null) {
            arrayList.add("folder_stub=" + folderStub);
        }
        return CollectionsKt.y(arrayList, ", ", "AnyItem{", "}", null, 56);
    }
}
