package bsarchive;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.Syntax;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Folder extends Message {
    public static final Folder$Companion$ADAPTER$1 m = new ProtoAdapter(FieldEncoding.m, Reflection.a(Folder.class), "type.googleapis.com/bsarchive.Folder", Syntax.l, null, 0);

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof Folder) && Intrinsics.a(a(), ((Folder) obj).a())) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return a().hashCode();
    }

    public final String toString() {
        return "Folder{}";
    }
}
