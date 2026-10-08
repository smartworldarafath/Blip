package net.blip.libblip.event;

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
public final class UpdateUser extends Message {
    public static final UpdateUser$Companion$ADAPTER$1 o = new ProtoAdapter(FieldEncoding.m, Reflection.a(UpdateUser.class), "type.googleapis.com/event.UpdateUser", Syntax.l, null, 0);
    public final String m;
    public final Boolean n;

    public /* synthetic */ UpdateUser(String str, Boolean bool, int i) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : bool, ByteString.m);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof UpdateUser)) {
            return false;
        }
        UpdateUser updateUser = (UpdateUser) obj;
        if (Intrinsics.a(a(), updateUser.a()) && Intrinsics.a(this.m, updateUser.m) && Intrinsics.a(this.n, updateUser.n)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i;
        int i2 = this.l;
        if (i2 == 0) {
            int hashCode = a().hashCode() * 37;
            int i3 = 0;
            String str = this.m;
            if (str != null) {
                i = str.hashCode();
            } else {
                i = 0;
            }
            int i4 = (hashCode + i) * 37;
            Boolean bool = this.n;
            if (bool != null) {
                i3 = Boolean.hashCode(bool.booleanValue());
            }
            int i5 = i4 + i3;
            this.l = i5;
            return i5;
        }
        return i2;
    }

    public final String toString() {
        ArrayList arrayList = new ArrayList();
        String str = this.m;
        if (str != null) {
            q.z(str, "name=", arrayList);
        }
        Boolean bool = this.n;
        if (bool != null) {
            arrayList.add("is_searchable=" + bool);
        }
        return CollectionsKt.y(arrayList, ", ", "UpdateUser{", "}", null, 56);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public UpdateUser(String str, Boolean bool, ByteString byteString) {
        super(o, byteString);
        byteString.getClass();
        this.m = str;
        this.n = bool;
    }
}
