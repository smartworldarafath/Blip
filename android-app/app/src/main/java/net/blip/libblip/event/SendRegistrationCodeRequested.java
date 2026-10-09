package net.blip.libblip.event;

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
public final class SendRegistrationCodeRequested extends Message {
    public static final SendRegistrationCodeRequested$Companion$ADAPTER$1 o = new ProtoAdapter(FieldEncoding.m, Reflection.a(SendRegistrationCodeRequested.class), "type.googleapis.com/event.SendRegistrationCodeRequested", Syntax.l, null, 0);
    public final String m;
    public final String n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SendRegistrationCodeRequested(String str, String str2, ByteString byteString) {
        super(o, byteString);
        str.getClass();
        str2.getClass();
        byteString.getClass();
        this.m = str;
        this.n = str2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SendRegistrationCodeRequested)) {
            return false;
        }
        SendRegistrationCodeRequested sendRegistrationCodeRequested = (SendRegistrationCodeRequested) obj;
        if (Intrinsics.a(a(), sendRegistrationCodeRequested.a()) && Intrinsics.a(this.m, sendRegistrationCodeRequested.m) && Intrinsics.a(this.n, sendRegistrationCodeRequested.n)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i = this.l;
        if (i == 0) {
            int hashCode = this.n.hashCode() + jb.c(this.m, a().hashCode() * 37, 37);
            this.l = hashCode;
            return hashCode;
        }
        return i;
    }

    public final String toString() {
        ArrayList arrayList = new ArrayList();
        q.z(this.m, "email=", arrayList);
        q.z(this.n, "device_name=", arrayList);
        return CollectionsKt.y(arrayList, ", ", "SendRegistrationCodeRequested{", "}", null, 56);
    }
}
