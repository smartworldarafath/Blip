package net.blip.libblip.frontend;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.Syntax;
import defpackage.q;
import java.util.ArrayList;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import okio.ByteString;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Err extends Message {
    public static final Err$Companion$ADAPTER$1 o = new ProtoAdapter(FieldEncoding.m, Reflection.a(Err.class), "type.googleapis.com/frontend.Err", Syntax.l, null, 0);
    public final int m;
    public final String n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Err(int i, String str, ByteString byteString) {
        super(o, byteString);
        str.getClass();
        byteString.getClass();
        this.m = i;
        this.n = str;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Err)) {
            return false;
        }
        Err err = (Err) obj;
        if (Intrinsics.a(a(), err.a()) && this.m == err.m && Intrinsics.a(this.n, err.n)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i = this.l;
        if (i == 0) {
            int hashCode = this.n.hashCode() + q.b(this.m, a().hashCode() * 37, 37);
            this.l = hashCode;
            return hashCode;
        }
        return i;
    }

    public final String toString() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("code=" + this.m);
        q.z(this.n, "msg=", arrayList);
        return CollectionsKt.y(arrayList, ", ", "Err{", "}", null, 56);
    }
}
