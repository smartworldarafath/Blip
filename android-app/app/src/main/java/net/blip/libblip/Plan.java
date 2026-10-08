package net.blip.libblip;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.Syntax;
import java.time.Instant;
import java.util.ArrayList;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import okio.ByteString;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Plan extends Message {
    public static final Plan$Companion$ADAPTER$1 n = new ProtoAdapter(FieldEncoding.m, Reflection.a(Plan.class), "type.googleapis.com/blip.Plan", Syntax.l, null, 0);
    public final Instant m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Plan(Instant instant, ByteString byteString) {
        super(n, byteString);
        byteString.getClass();
        this.m = instant;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Plan)) {
            return false;
        }
        Plan plan = (Plan) obj;
        if (Intrinsics.a(a(), plan.a()) && Intrinsics.a(this.m, plan.m)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i;
        int i2 = this.l;
        if (i2 == 0) {
            int hashCode = a().hashCode() * 37;
            Instant instant = this.m;
            if (instant != null) {
                i = instant.hashCode();
            } else {
                i = 0;
            }
            int i3 = hashCode + i;
            this.l = i3;
            return i3;
        }
        return i2;
    }

    public final String toString() {
        ArrayList arrayList = new ArrayList();
        Instant instant = this.m;
        if (instant != null) {
            arrayList.add("subscribed_at=" + instant);
        }
        return CollectionsKt.y(arrayList, ", ", "Plan{", "}", null, 56);
    }
}
