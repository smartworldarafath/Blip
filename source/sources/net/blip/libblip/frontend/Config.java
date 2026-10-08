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
public final class Config extends Message {
    public static final Config$Companion$ADAPTER$1 r = new ProtoAdapter(FieldEncoding.m, Reflection.a(Config.class), "type.googleapis.com/frontend.Config", Syntax.l, null, 0);
    public final boolean m;
    public final boolean n;
    public final String o;
    public final int p;
    public final int q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Config(boolean z, boolean z2, String str, int i, int i2, ByteString byteString) {
        super(r, byteString);
        str.getClass();
        byteString.getClass();
        this.m = z;
        this.n = z2;
        this.o = str;
        this.p = i;
        this.q = i2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Config)) {
            return false;
        }
        Config config = (Config) obj;
        if (Intrinsics.a(a(), config.a()) && this.m == config.m && this.n == config.n && Intrinsics.a(this.o, config.o) && this.p == config.p && this.q == config.q) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i = this.l;
        if (i == 0) {
            int hashCode = Integer.hashCode(this.q) + q.b(this.p, jb.c(this.o, jb.b(jb.b(a().hashCode() * 37, 37, this.m), 37, this.n), 37), 37);
            this.l = hashCode;
            return hashCode;
        }
        return i;
    }

    public final String toString() {
        ArrayList arrayList = new ArrayList();
        q.A("auto_accept_disabled=", this.m, arrayList);
        q.A("auto_save_media_to_library=", this.n, arrayList);
        q.z(this.o, "custom_default_save_path=", arrayList);
        arrayList.add("limit_upload_mbps=" + this.p);
        arrayList.add("limit_download_mbps=" + this.q);
        return CollectionsKt.y(arrayList, ", ", "Config{", "}", null, 56);
    }
}
