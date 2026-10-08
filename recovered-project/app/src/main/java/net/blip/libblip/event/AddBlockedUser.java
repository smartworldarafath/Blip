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
public final class AddBlockedUser extends Message {
    public static final AddBlockedUser$Companion$ADAPTER$1 n = new ProtoAdapter(FieldEncoding.m, Reflection.a(AddBlockedUser.class), "type.googleapis.com/event.AddBlockedUser", Syntax.l, null, 0);
    public final String m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AddBlockedUser(String str, ByteString byteString) {
        super(n, byteString);
        str.getClass();
        byteString.getClass();
        this.m = str;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AddBlockedUser)) {
            return false;
        }
        AddBlockedUser addBlockedUser = (AddBlockedUser) obj;
        if (Intrinsics.a(a(), addBlockedUser.a()) && Intrinsics.a(this.m, addBlockedUser.m)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i = this.l;
        if (i == 0) {
            int hashCode = this.m.hashCode() + (a().hashCode() * 37);
            this.l = hashCode;
            return hashCode;
        }
        return i;
    }

    public final String toString() {
        ArrayList arrayList = new ArrayList();
        q.z(this.m, "block_user_id=", arrayList);
        return CollectionsKt.y(arrayList, ", ", "AddBlockedUser{", "}", null, 56);
    }

    public /* synthetic */ AddBlockedUser(String str) {
        this(str, ByteString.m);
    }
}
