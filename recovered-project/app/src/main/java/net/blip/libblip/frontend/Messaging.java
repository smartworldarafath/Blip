package net.blip.libblip.frontend;

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
public final class Messaging extends Message {
    public static final Messaging$Companion$ADAPTER$1 r = new ProtoAdapter(FieldEncoding.m, Reflection.a(Messaging.class), "type.googleapis.com/frontend.Messaging", Syntax.l, null, 0);
    public final MessagingStatus m;
    public final boolean n;
    public final boolean o;
    public final long p;
    public final Err q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Messaging(MessagingStatus messagingStatus, boolean z, boolean z2, long j, Err err, ByteString byteString) {
        super(r, byteString);
        messagingStatus.getClass();
        byteString.getClass();
        this.m = messagingStatus;
        this.n = z;
        this.o = z2;
        this.p = j;
        this.q = err;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Messaging)) {
            return false;
        }
        Messaging messaging = (Messaging) obj;
        if (Intrinsics.a(a(), messaging.a()) && this.m == messaging.m && this.n == messaging.n && this.o == messaging.o && this.p == messaging.p && Intrinsics.a(this.q, messaging.q)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i;
        int i2 = this.l;
        if (i2 == 0) {
            int a = jb.a(jb.b(jb.b((this.m.hashCode() + (a().hashCode() * 37)) * 37, 37, this.n), 37, this.o), 37, this.p);
            Err err = this.q;
            if (err != null) {
                i = err.hashCode();
            } else {
                i = 0;
            }
            int i3 = a + i;
            this.l = i3;
            return i3;
        }
        return i2;
    }

    public final String toString() {
        ArrayList arrayList = new ArrayList();
        arrayList.add("status=" + this.m);
        q.A("prevent_reconnect=", this.n, arrayList);
        q.A("initial_sync_complete=", this.o, arrayList);
        arrayList.add("network_generation=" + this.p);
        Err err = this.q;
        if (err != null) {
            arrayList.add("error=" + err);
        }
        return CollectionsKt.y(arrayList, ", ", "Messaging{", "}", null, 56);
    }
}
