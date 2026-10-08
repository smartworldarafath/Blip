package net.blip.libblip;

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
public final class DeviceReach extends Message {
    public static final DeviceReach$Companion$ADAPTER$1 o = new ProtoAdapter(FieldEncoding.m, Reflection.a(DeviceReach.class), "type.googleapis.com/blip.DeviceReach", Syntax.l, null, 0);
    public final boolean m;
    public final boolean n;

    public /* synthetic */ DeviceReach(int i, boolean z, boolean z2) {
        this((i & 1) != 0 ? false : z, (i & 2) != 0 ? false : z2, ByteString.m);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof DeviceReach)) {
            return false;
        }
        DeviceReach deviceReach = (DeviceReach) obj;
        if (Intrinsics.a(a(), deviceReach.a()) && this.m == deviceReach.m && this.n == deviceReach.n) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i = this.l;
        if (i == 0) {
            int hashCode = Boolean.hashCode(this.n) + jb.b(a().hashCode() * 37, 37, this.m);
            this.l = hashCode;
            return hashCode;
        }
        return i;
    }

    public final String toString() {
        ArrayList arrayList = new ArrayList();
        q.A("is_online=", this.m, arrayList);
        q.A("is_pushable=", this.n, arrayList);
        return CollectionsKt.y(arrayList, ", ", "DeviceReach{", "}", null, 56);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeviceReach(boolean z, boolean z2, ByteString byteString) {
        super(o, byteString);
        byteString.getClass();
        this.m = z;
        this.n = z2;
    }
}
