package net.blip.libblip.event;

import com.squareup.wire.FieldEncoding;
import com.squareup.wire.Message;
import com.squareup.wire.ProtoAdapter;
import com.squareup.wire.Syntax;
import java.util.ArrayList;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import net.blip.libblip.UserAgent;
import okio.ByteString;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SetUserAgent extends Message {
    public static final SetUserAgent$Companion$ADAPTER$1 n = new ProtoAdapter(FieldEncoding.m, Reflection.a(SetUserAgent.class), "type.googleapis.com/event.SetUserAgent", Syntax.l, null, 0);
    public final UserAgent m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SetUserAgent(UserAgent userAgent, ByteString byteString) {
        super(n, byteString);
        byteString.getClass();
        this.m = userAgent;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SetUserAgent)) {
            return false;
        }
        SetUserAgent setUserAgent = (SetUserAgent) obj;
        if (Intrinsics.a(a(), setUserAgent.a()) && Intrinsics.a(this.m, setUserAgent.m)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i;
        int i2 = this.l;
        if (i2 == 0) {
            int hashCode = a().hashCode() * 37;
            UserAgent userAgent = this.m;
            if (userAgent != null) {
                i = userAgent.hashCode();
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
        UserAgent userAgent = this.m;
        if (userAgent != null) {
            arrayList.add("user_agent=" + userAgent);
        }
        return CollectionsKt.y(arrayList, ", ", "SetUserAgent{", "}", null, 56);
    }
}
