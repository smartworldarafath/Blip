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
import net.blip.libblip.DeviceKind;
import okio.ByteString;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class RegistrationRequested extends Message {
    public static final RegistrationRequested$Companion$ADAPTER$1 q = new ProtoAdapter(FieldEncoding.m, Reflection.a(RegistrationRequested.class), "type.googleapis.com/event.RegistrationRequested", Syntax.l, null, 0);
    public final String m;
    public final String n;
    public final String o;
    public final DeviceKind p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RegistrationRequested(String str, String str2, String str3, DeviceKind deviceKind, ByteString byteString) {
        super(q, byteString);
        str.getClass();
        str2.getClass();
        str3.getClass();
        deviceKind.getClass();
        byteString.getClass();
        this.m = str;
        this.n = str2;
        this.o = str3;
        this.p = deviceKind;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof RegistrationRequested)) {
            return false;
        }
        RegistrationRequested registrationRequested = (RegistrationRequested) obj;
        if (Intrinsics.a(a(), registrationRequested.a()) && Intrinsics.a(this.m, registrationRequested.m) && Intrinsics.a(this.n, registrationRequested.n) && Intrinsics.a(this.o, registrationRequested.o) && this.p == registrationRequested.p) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i = this.l;
        if (i == 0) {
            int hashCode = this.p.hashCode() + jb.c(this.o, jb.c(this.n, jb.c(this.m, a().hashCode() * 37, 37), 37), 37);
            this.l = hashCode;
            return hashCode;
        }
        return i;
    }

    public final String toString() {
        ArrayList arrayList = new ArrayList();
        q.z(this.m, "code=", arrayList);
        q.z(this.n, "device_dedupe_id=", arrayList);
        q.z(this.o, "device_name=", arrayList);
        arrayList.add("device_kind=" + this.p);
        return CollectionsKt.y(arrayList, ", ", "RegistrationRequested{", "}", null, 56);
    }
}
